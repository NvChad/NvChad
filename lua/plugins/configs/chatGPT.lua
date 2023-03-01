local M = {}

M.load_api_key = function()
    local openai_api_key_path = vim.fn.expand('C:') .. '/openai/token.txt'
    local openai_api_key = vim.fn.readfile(openai_api_key_path, '', 1)
    vim.fn.setenv('OPENAI_API_KEY', openai_api_key[1])
end

local config =
{
  welcome_message = WELCOME_MESSAGE, -- set to "" if you don't like the fancy godot robot
  loading_text = "loading",
  question_sign = "", -- you can use emoji if you want e.g. 🙂
  answer_sign = "ﮧ", -- 🤖
  max_line_length = 120,
  yank_register = "+",
  chat_layout = {
    relative = "editor",
    position = "50%",
    size = {
      height = "80%",
      width = "80%",
    },
  },
  settings_window = {
    border = {
      style = "rounded",
      text = {
        top = " Settings ",
      },
    },
  },
  chat_window = {
    filetype = "chatgpt",
    border = {
      highlight = "FloatBorder",
      style = "rounded",
      text = {
        top = " ChatGPT ",
      },
    },
  },
  chat_input = {
    prompt = "  ",
    border = {
      highlight = "FloatBorder",
      style = "rounded",
      text = {
        top_align = "center",
        top = " Prompt ",
      },
    },
  },
  openai_params = {
    model = "text-davinci-003",
    frequency_penalty = 0,
    presence_penalty = 0,
    max_tokens = 300,
    temperature = 0,
    top_p = 1,
    n = 1,
  },
  openai_edit_params = {
    model = "code-davinci-edit-001",
    temperature = 0,
    top_p = 1,
    n = 1,
  },
  keymaps = {
    close = { "<C-c>", "<Esc>" },
    yank_last = "<C-y>",
    scroll_up = "<C-u>",
    scroll_down = "<C-d>",
    toggle_settings = "<C-o>",
    new_session = "<C-n>",
    cycle_windows = "<Tab>",
  },
}

M.setup = function()
    local ok, chatgpt = pcall(require, 'chatgpt')
    if not ok then
        vim.notify("missing module chatgpt", vim.log.levels.WARN)
        return
    end
    chatgpt.setup(config)
end


return M
