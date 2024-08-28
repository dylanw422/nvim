vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false
opt.scrolloff = 4

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard = 'unnamedplus'
vim.g.clipboard = {
  name = 'win32yank',
  copy = {
    ['+'] = '/mnt/c/Windows/System32/win32yank.exe -i --crlf',
    ['*'] = '/mnt/c/Windows/System32/win32yank.exe -i --crlf',
  },
  paste = {
    ['+'] = '/mnt/c/Windows/System32/win32yank.exe -o --lf',
    ['*'] = '/mnt/c/Windows/System32/win32yank.exe -o --lf',
  },
  cache_enabled = 0,
}

opt.splitright = true
opt.splitbelow = true
