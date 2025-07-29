local keymap = vim.keymap
keymap.set("t", "<A-n>", "<C-\\><C-n>")

-- Shift + arrow = v-selection
keymap.set("n", "<S-Up>", "v<Up>")
keymap.set("n", "<S-Down>", "v<Down>")
keymap.set("n", "<S-Left>", "v<Left>")
keymap.set("n", "<S-Right>", "v<Right>")
keymap.set("v", "<S-Up>", "<Up>")
keymap.set("v", "<S-Down>", "<Down>")
keymap.set("v", "<S-Left>", "<Left>")
keymap.set("v", "<S-Right>", "<Right>")
keymap.set("i", "<S-Up>", "<Esc>v<Up>")
keymap.set("i", "<S-Down>", "<Esc>v<Down>")
keymap.set("i", "<S-Left>", "<Esc>v<Left>")
keymap.set("i", "<S-Right>", "<Esc>v<Right>")

-- Highlight word like * but without moving
--keymap.set("n", "<CR>", ":let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M>")

-- Alt + arrow = move line
keymap.set("n", "<M-Up>", "Vd<Up>p")
keymap.set("n", "<M-Down>", "Vdp")

-- Telescope filters
local telescope = require("telescope.builtin")
keymap.set("n", "<leader>ff", telescope.find_files)
keymap.set("n", "<leader>fg", telescope.live_grep)
keymap.set("n", "<leader>fh", telescope.help_tags)
keymap.set("n", "<leader>fd", telescope.diagnostics)
keymap.set("n", "gr", telescope.lsp_references)
keymap.set("n", "<leader>fs", telescope.lsp_document_symbols)
keymap.set("n", "<leader>fm", telescope.marks)

-- LSP commands
keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>")
keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>")
keymap.set("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<CR>")

-- DB explorer
keymap.set("n", "<leader>d", "<cmd>DBUIToggle<cr>")

-- Nvimtree
keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<cr>")

-- Resize buffer
keymap.set("n", "<leader>h", "<cmd>vertical resize -20<cr>")
keymap.set("n", "<leader>j", "<cmd>resize -20<cr>")
keymap.set("n", "<leader>k", "<cmd>resize +20<cr>")
keymap.set("n", "<leader>l", "<cmd>vertical resize +20<cr>")

-- Panel commands
keymap.set("n", "<leader>ù", "<cmd>ToggleTerm<cr>")
keymap.set("n", "<leader><down>", "<C-w><down>")
keymap.set("n", "<leader><right>", "<C-w><right>")
keymap.set("n", "<leader><left>", "<C-w><left>")
keymap.set("n", "<leader><up>", "<C-w><up>")
keymap.set("n", "<leader>v", "<cmd>vsplit<cr>")
