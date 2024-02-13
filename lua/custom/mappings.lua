---@type MappingsTable

function RunGeojsonConvert()
  -- Capture the current line
  local line = vim.fn.getline(".")
  -- Escape quotes in the line
  line = line:gsub('"', '\\"')
  -- Construct the command with the escaped line
  local cmd = 'bash /Users/chkelly/Workspace/repos/ml-geo-tools/scripts/geojson2dxf "' .. line .. '"'
  -- Execute the command
  vim.fn.system(cmd)
  print(vim.fn.system(cmd))
  -- vim.api.nvim_out_write("Command executed.\n") -- Just a confirmation message
end

function RunWktConvert()
  -- Capture the current line
  local line = vim.fn.getline(".")
  -- Escape quotes in the line
  line = line:gsub('"', '\\"')
  -- Construct the command with the escaped line
  local cmd = 'bash /Users/chkelly/Workspace/repos/ml-geo-tools/scripts/wkt2dxf "' .. line .. '"'
  -- Execute the command
  vim.fn.system(cmd)
  print(vim.fn.system(cmd))
  -- vim.api.nvim_out_write("Command executed.\n") -- Just a confirmation message
end

local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    -- ChatGPT keybinding
    ["<leader>og"] = { ":ChatGPT<CR>", "Open ChatGPT" },
    ["<leader>oe"] = { ":ChatGPTEditWithInstructions<CR>", "ChatGPT Edit with instructions" },
    ["<leader>orr"] = { ":ChatGPTRun code_readability_analysis<CR>", "ChatGPT run" },
    ["<leader>ors"] = { ":ChatGPTRun summarizeCR>", "ChatGPT run" },
    ["<leader>orb"] = { ":ChatGPTRun fix_bugs", "ChatGPT run: fix bugs" },

    ["<F5>"] = { ":e!<CR>", "Refresh changes" },
    ["<leader>me"] = { ":e!<CR>", "Refresh changes" },
    ["<leader>mw"] = { ":set wrap!<CR>", "Line wrap" },
    ["<leader>mp"] = { ":.w !jq<CR>", "Pretty print JSON" },
    ["<leader>mgg"] = { ":lua RunGeojsonConvert()<CR>", "convert geojson to DXF" },
    ["<leader>mgw"] = { ":lua RunWktConvert()<CR>", "convert wkt to DXF" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
