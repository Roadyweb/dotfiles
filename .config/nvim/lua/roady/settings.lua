local global = vim.g
local o = vim.opt
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true}

-- Hint: use `:h <option>` to figure out the meaning if needed
o.clipboard = 'unnamedplus'   -- use system clipboard 
o.completeopt = {'menu', 'menuone', 'noselect'}
o.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
o.autoindent = true
o.tabstop = 2                 -- number of visual spaces per TAB
o.softtabstop = 2             -- number of spacesin tab when editing
o.shiftwidth = 2              -- insert 4 spaces on a tab
o.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
o.number = true               -- show absolute number
o.relativenumber = true       -- add numbers to each line on the left side
o.cursorline = true           -- highlight cursor line underneath the cursor horizontally
o.splitbelow = true           -- open new vertical split bottom
o.splitright = true           -- open new horizontal splits right
o.termguicolors = true        -- enabl 24-bit RGB color in the TUI
o.syntax = 'on'
o.mouse = 'a'
o.title = true
-- Searching
o.incsearch = true            -- search as characters are entered
o.hlsearch = false            -- do not highlight matches
o.ignorecase = true           -- ignore case in searches by default
o.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Scrolling
o.scrolloff = 10            -- Disable scroll to end of file

global.mapleader = " "
global.maplocalleader = " "

keymap("n", "<leader>t", ":NvimTreeToggle<CR>", default_opts)

keymap("n", "<leader>h", "<C-w>h", default_opts)
keymap("n", "<leader>l", "<C-w>l", default_opts)
keymap("n", "<leader>j", "<C-w>j", default_opts)
keymap("n", "<leader>k", "<C-w>k", default_opts)

-- Using <leader> + number (1, 2, ... 9) to switch tab
for i=1,9,1
do
  keymap('n', '<leader>'..i, i.."gt", {})
end
keymap('n', '<leader>0', ":tablast<cr>", {})
