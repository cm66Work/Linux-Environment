vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selection up and down with J and K.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append line below to current line with space, 
-- whilst leaving cursor at its current location.
vim.keymap.set("n", "J", "mzJ`z")

-- Changes half page jumping with <C-d> and <C-u>
-- but keeps cursor in the middle of the page.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Moves search turm to the middle of the page.
-- Search with /[what you are looking for]
-- eg. /vim. would find all instances of vim.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allows you to replace heighlited text with clipboard
-- with out lossing what is stored in the clipboard
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Allows copying and pasting to the systems clipboard
-- and not vims internal clipboard, for pasting code into
-- files outside of vim.
-- This is known as the void register.
-- Credit to asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- same as above but for deleating to void register.
vim.keymap.set("n", "<leader>d", "\"+_d")
vim.keymap.set("v", "<leader>d", "\"+_d")

-- need to look into why you should never press Q
vim.keymap.set("n", "Q", "<nop>")

-- Format the lsp buffer, lsp is for code intelicence.
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.Format()
end)

-- Quick fix navigation <- need to look into this
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Refactor word within the current file.
vim.keymap.set("n", "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<left><left><left>]])

-- automate changing the current file to an exicutable!!!
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})


-- auto recompile vim configs.
vim.keymap.set("n", "<leader><leader>", function ()
    vim.cmd("so")
end)






















