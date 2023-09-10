local foo = {
	bar = {
		'baz'
	},
	bar2 = 'baz2'
}

---@param v string
---@return string, nil
--- Hover over any reference to `foobar` to view annotations.
local function foobar(v)
	return 'foobar', (foo[v]?.baz or nil)
end


-- Safe navigation prevents errors when indexing nil values.
if foo?.bar then
	print(foobar('bar'))
end

-- if foo and foo.bar then
--	   print(foobar('bar'))
-- end


-- In unpacking can be easier to write and read.
-- local bar, bar2 = t.bar, t.bar2
local bar, bar2 in foo
print(bar)
print(bar2)

GetPlayerPed()