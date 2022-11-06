local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- General --
-- Ctrl + A
keymap("", "<C-a>", "ggVG", opts)

-- Undo
keymap("", "<C-z>", ":undo<cr>", opts)

-- Copy & Paste
keymap("", "<C-S-v>", '"*p', opts)
keymap("", "<C-S-c>", '"*y', opts)

-- Normal --
-- Exiting nvim
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("n", "<C-q>", ":wq<cr>", opts)
keymap("n", "<A-q>", ":q!<cr>", opts)

-- Closing buffers ( with bufferline plugin )
keymap("n", "<C-b>", ":Bdelete!<cr>", opts)

-- Better window navigation
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>v", ":vsplit<cr>", opts)
keymap("n", "<leader>h", ":split<cr>", opts)
keymap("n", "<leader>t", ":tabnew %<cr>", opts)

-- Resize
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Easy Caps 
keymap("n", "<C-u>", "<ESC>viwUi", opts)
keymap("n", "<C-u>", "viwU<ESC>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "<C-c>", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<S-TAB>", "<gv", opts)
keymap("v", "<TAB>", ">gv", opts)

-- Move text up and down
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Leader --
-- Telescope
--keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy())<cr>", opts)
--keymap("n", "<leader>r", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy())<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files({hidden=true})<cr>", opts)
keymap("n", "<leader>r", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
keymap("n", "<leader>gs", "<cmd>lua require'telescope.builtin'.git_status()<cr>",opts)
keymap("n", "<leader>gc", "<cmd>lua require'telescope.builtin'.git_commits()<cr>",opts)
keymap("n", "<leader>gb", "<cmd>lua require'telescope.builtin'.git_branches()<cr>",opts)
keymap("n", "<leader>p", ":Telescope projects<CR>", opts)
