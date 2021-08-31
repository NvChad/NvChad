-- This is where you custom modules and plugins goes.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

-- For example, the hook below overrieds 'publish_diagnostics' in the 'lspconfig' file,
-- 
-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)
