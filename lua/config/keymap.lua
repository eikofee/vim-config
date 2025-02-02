local keymap = vim.keymap
keymap.set("t", "<A-n>", "<C-\\><C-n>")


-- Shift + arrow = v-selection
keymap.set("n", "<S-Up>", "v<Up>")
keymap.set("i", "<S-Up>", "<Esc>v<Up>")
keymap.set("v", "<S-Up>", "<Up>")

-- Telescope filters
local telescope = require("telescope.builtin")
keymap.set("n", "<leader>ff", telescope.find_files)
keymap.set("n", "<leader>fg", telescope.live_grep)
keymap.set("n", "<leader>fh", telescope.help_tags)
keymap.set("n", "<leader>fd", telescope.diagnostics)
keymap.set("n", "gr", telescope.lsp_references)
keymap.set("n", "<leader>fs", telescope.lsp_document_symbols)
keymap.set("n", "<leader>ù", "<cmd>ToggleTerm<CR>")
keymap.set("n", "<leader><Down>", "<C-w><Down>")
keymap.set("n", "<leader><Right>", "<C-w><Right>")
keymap.set("n", "<leader><Left>", "<C-w><Left>")
keymap.set("n", "<leader><Up>", "<C-w><Up>")

-- LSP commands
keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>")
keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>")
keymap.set("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<CR>")

-- Nvimtree
keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<CR>")



-- Nvimtree
keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<cr>")
