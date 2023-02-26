vim.o.shiftwidth = 4

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "kj", "<esc>")
map("v", "kj", "<esc>")
map("c", "kj", "<C-C>")
