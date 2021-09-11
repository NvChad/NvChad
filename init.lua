local cmd = vim.cmd
local env = vim.env
local fn = vim.fn
local g = vim.g
local loop = vim.loop
local opt = vim.opt

-- The default 'project_name' is taken from the parent directory name of
-- this configuration repo.
local config_lua_name = loop.fs_realpath(
    debug.getinfo(1, 'S').source:match("^@?(.*)$")
  )
local config_lua_dir = config_lua_name:match("^(.*)/[^/]*$")
local config_lua_parent = config_lua_dir:match("^.*/([^/]+)$")
if config_lua_parent == nil then
  -- This shouldn't be the case but just in case
  config_lua_parent = "nvim"
end
-- Exporting the environment variable $PROJECT_NAME can force to set 'project_name'
local project_name = fn.exists(env.PROJECT_NAME) and env.PROJECT_NAME or config_lua_parent

local home_dir = loop.os_homedir()
local xdg_config_home = fn.exists(env.XDG_CONFIG_HOME) and env.XDG_CONFIG_HOME or home_dir .. '/.config'
local xdg_data_home = fn.exists(env.XDG_DATA_HOME) and env.XDG_DATA_HOME or home_dir .. '/.local/share'

-- Export project specific paths as a global varibale
g.project_config = xdg_config_home .. '/' .. project_name
g.project_site = xdg_data_home .. '/' .. project_name .. '/site'

-- update runtimepath with project specific ones
opt.rtp:remove(xdg_config_home .. "/nvim")
opt.rtp:remove(xdg_config_home .. "/nvim/after")
opt.rtp:prepend(g.project_config)
opt.rtp:append(g.project_config .. "/after")
opt.rtp:remove(xdg_data_home .. "/nvim/site")
opt.rtp:remove(xdg_data_home .. "/nvim/site/after")
opt.rtp:prepend(g.project_site)
opt.rtp:append(g.project_site .. "/after")
cmd [[let &packpath = &runtimepath]]

local init_modules = {
   "core",
}

for _, module in ipairs(init_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end
