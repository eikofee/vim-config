local keymap = vim.keymap
keymap.set("t", "<A-n>", "<C-\\><C-n>")




-- Telescope filters
local telescope = require("telescope.builtin")
keymap.set("n", "<leader>ff", telescope.find_files)
keymap.set("n", "<leader>fg", telescope.live_grep)
keymap.set("n", "<leader>fh", telescope.help_tags)
keymap.set("n", "<leader>fd", telescope.diagnostics)
keymap.set("n", "gr", telescope.lsp_references)
keymap.set("n", "<leader>fs", telescope.lsp_document_symbols)
keymap.set("n", "<leader>ù", "<cmd>ToggleTerm<cr>")





-- Nvimtree
keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<cr>")
