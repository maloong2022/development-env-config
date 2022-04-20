local status, windline = pcall(require, 'windline.nvim')
if (not status) then
  return
end

windline.setup({
  statuslines = {
    --- you need to define your status lines here
    require('wlsample.basic')
  }
})
