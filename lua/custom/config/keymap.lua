local map = vim.keymap.set
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
--NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
map('n', '<s-left>', '<cmd>vertical resize -2<cr>', { desc = 'Resize Vertical -' })
map('n', '<s-right>', '<cmd>vertical resize +2<cr>', { desc = 'Resize Vertical +' })
map('n', '<s-up>', '<cmd>horizontal resize +2<cr>', { desc = 'Resize Horizontal +' })
map('n', '<s-down>', '<cmd>horizontal resize -2<cr>', { desc = 'Resize Horizontal -' })
