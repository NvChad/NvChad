local M = {}
local merge_tb = vim.tbl_deep_extend

local key_exists = function(mappings, section, mode, key)
  if not mappings[section] then
    return false
  elseif not mappings[section][mode] then
    return false
  else
    return mappings[section][mode][key]
  end
end

M.load_config = function()
  local config = require "core.default_config"
  local chadrc_path = vim.api.nvim_get_runtime_file("lua/custom/chadrc.lua", false)[1]

  if chadrc_path then
    local chadrc = dofile(chadrc_path)

    config.mappings = M.remove_disabled_keys(chadrc.mappings, config.mappings)
    config = merge_tb("force", config, chadrc)
    config.mappings.disabled = nil
  end

  return config
end

M.remove_disabled_keys = function(chadrc_mappings, default_mappings)
  if not chadrc_mappings then
    return default_mappings
  end

  -- store keys in a array with true value to compare
  local keys_to_disable = {}
  for section, mappings in pairs(chadrc_mappings) do
    for mode, section_keys in pairs(mappings) do
      if not keys_to_disable[mode] then
        keys_to_disable[mode] = {}
      end
      section_keys = (type(section_keys) == "table" and section_keys) or {}
      for k, v in pairs(section_keys) do
        if #v == 0 then -- i.e. an empty table
          keys_to_disable[mode][k] = true
          chadrc_mappings[section][mode][k] = nil
        end
      end
    end
  end

  local mappings = {}
  -- make a copy as we need to modify default_mappings
  for section_name, section_mappings in pairs(default_mappings) do
    if not mappings[section_name] then
      mappings[section_name] = {}
    end
    for mode, mode_mappings in pairs(section_mappings) do
      mode_mappings = (type(mode_mappings) == "table" and mode_mappings) or {}
      if not mappings[section_name][mode] then
        mappings[section_name][mode] = {}
      end
      for k, v in pairs(mode_mappings) do
        if keys_to_disable[mode] and not keys_to_disable[mode][k] then
          if key_exists(chadrc_mappings, section_name, mode, k) then -- override it
            mappings[section_name][mode][k] = chadrc_mappings[section_name][mode][k]
          else -- use default
            mappings[section_name][mode][k] = v
          end
        end
      end
    end
  end

  return mappings
end

M.load_mappings = function(section, mapping_opt)
  vim.schedule(function()
    local function set_section_map(section_values)
      if section_values.plugin then
        return
      end

      section_values.plugin = nil

      for mode, mode_values in pairs(section_values) do
        local default_opts = merge_tb("force", { mode = mode }, mapping_opt or {})
        for keybind, mapping_info in pairs(mode_values) do
          -- merge default + user opts
          local opts = merge_tb("force", default_opts, mapping_info.opts or {})

          mapping_info.opts, opts.mode = nil, nil
          opts.desc = mapping_info[2]

          vim.keymap.set(mode, keybind, mapping_info[1], opts)
        end
      end
    end

    local mappings = require("core.utils").load_config().mappings

    if type(section) == "string" then
      mappings[section]["plugin"] = nil
      mappings = { mappings[section] }
    end

    for _, sect in pairs(mappings) do
      set_section_map(sect)
    end
  end)
end

M.lazy_load = function(plugin)
  vim.api.nvim_create_autocmd({ "BufRead", "BufWinEnter", "BufNewFile" }, {
    group = vim.api.nvim_create_augroup("BeLazyOnFileOpen" .. plugin, {}),
    callback = function()
      local file = vim.fn.expand "%"
      local condition = file ~= "NvimTree_1" and file ~= "[lazy]" and file ~= ""

      if condition then
        vim.api.nvim_del_augroup_by_name("BeLazyOnFileOpen" .. plugin)

        -- dont defer for treesitter as it will show slow highlighting
        -- This deferring only happens only when we do "nvim filename"
        if plugin ~= "nvim-treesitter" then
          vim.schedule(function()
            require("lazy").load { plugins = plugin }

            if plugin == "nvim-lspconfig" then
              vim.cmd "silent! do FileType"
            end
          end, 0)
        else
          require("lazy").load { plugins = plugin }
        end
      end
    end,
  })
end

return M
