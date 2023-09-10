local str_find = string.find
local str_sub = string.sub
local str_gmatch = string.gmatch
local str_gsub = string.gsub

function OnSetText(uri, text)
	-- ignore .vscode dir, extension files (i.e. natives), and other meta files
	if str_find(uri, '[\\/]%.vscode[\\/]') or str_sub(text, 1, 8) == '---@meta' then return end

	-- ignore files using fx asset protection
	if str_sub(text, 1, 4) == 'FXAP' then
		return {{
			start = 1,
			finish = #text,
			text = ''
		}}
	end

	local diffs = {}
	local count = 0

	-- prevent diagnostic errors in fxmanifest.lua and __resource.lua files
	if str_find(uri, 'fxmanifest%.lua$') or str_find(uri, '__resource%.lua$') then
		count = count + 1
		diffs[count] = {
			start = 1,
			finish = 0,
			text = '---@diagnostic disable: undefined-global\n'
		}
	end

	-- prevent diagnostic errors from safe navigation (foo?.bar and foo?[bar])
	for safeNav in str_gmatch(text, '()%?[%.%[]+') do
		count = count + 1
		diffs[count] = {
			start  = safeNav,
			finish = safeNav,
			text   = '',
		}
	end

	-- prevent "need-check-nil" diagnostic when using safe navigation
	-- only works for the first index, and requires dot notation (i.e. mytable.index, not mytable["index"])
	for pre, whitespace, tableStart, tableName, tableEnd in str_gmatch(text, '([=,;%s])([%s]*)()([_%w]+)()%?[%.%[]+') do
		count = count + 1
		diffs[count] = {
			start  = tableStart - 1,
			finish = tableEnd - 1,
			text = ('%s(%s or {})'):format(whitespace == '' and pre or '', tableName)
		}
	end

	-- prevent diagnostic errors from in unpacking (a, b, c in t)  
	-- could benefit from detection of comments to prevent nonsense annotations/comments
	for vars, inPos, afterInPos, tablePos, tableName, finishPos in str_gmatch(text, '([_%w, ]*)%s+()in()[     ]+()([_%w]*%s-%(?.-%)?)()') do
		if tableName ~= '' and not str_find(vars, '^%s*for%s') then
			-- replace 'in' with '='
			count = count + 1
			diffs[count] = {
				start = inPos,
				finish = afterInPos - 1,
				text = '='
			}

			local tableVars = ''
			vars = str_gsub(vars, '^%s*local%s', '')

			-- replace 't' with 't.a, t.b, t.c'
			for varName in str_gmatch(str_gsub(vars, '%s+', ''), '([_%w]+)') do
				if #tableVars > 0 then tableVars = tableVars .. ',' end
				tableVars = tableVars .. tableName .. '.' .. varName
			end

			count = count + 1
			diffs[count] = {
				start = tablePos,
				finish = finishPos - 1,
				text = tableVars
			}
		end
	end

	return diffs
end
