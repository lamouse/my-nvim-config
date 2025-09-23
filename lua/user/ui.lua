-- basic diagnostic config
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
    signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
    },
  }
})

if vim.fn.has("wsl") == 1 then
  vim.opt.mouse = ""
end
