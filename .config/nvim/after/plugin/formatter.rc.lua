local status, formatter = pcall(require, 'formatter.nvim')
if (not status) then
  return
end

formatter.setup(...)
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.jsx,*.rst,*.html,*.css,*.js,*.rs,*.lua formatter.FormatWrite
augroup END
]], true)
