local present, trouble = pcall(require, "trouble")

if not present then
  return
end

trouble.setup {
  action_keys = {},
}
