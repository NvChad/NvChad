local scopes = { o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

opt('o', 'hidden', true)                           
opt('o', 'ignorecase', true)                        
opt('o', 'splitbelow', true)                         
opt('o', 'splitright', true)                         
opt('o', 'termguicolors', true)                       
opt('w', 'number', true)                            
opt('o', 'numberwidth' , 2)

opt('o' ,'mouse' , "a")

opt('w',  'signcolumn' , "yes")
opt('o' , 'cmdheight' , 1)
opt('o' , 'updatetime' , 250)
opt('o' , 'clipboard' , 'unnamedplus')

