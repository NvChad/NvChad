local present, neoscroll = pcall(require, "neoscroll")

if not present then
  return
end

neoscroll.setup {
  mappings = {
    "<C-u>",
    "<C-d>",
  },
}
