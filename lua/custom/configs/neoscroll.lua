local present, neoscroll = pcall(require, "neoscroll")

if not present then
  return
end

neoscroll.setup {
  -- All these keys will be mapped to their corresponding default scrolling animation
  mappings = {
    "<C-b>",
    "<C-f>",
  },
}

