local opt = vim.opt

-- indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- keybinds
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "kj", "<esc>")
map("v", "kj", "<esc>")
map("c", "kj", "<C-C>")
map("t", "kj", "<C-\\><C-n>")

-- no line numbers on terminal tab
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.opt_local.nu = false
  end,
})
