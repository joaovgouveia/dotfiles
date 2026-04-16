return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier, -- React / HTML / CSS
                null_ls.builtins.formatting.black,    -- Python
                null_ls.builtins.formatting.isort,    -- Python imports
                null_ls.builtins.formatting.clang_format, -- C++ / Java
                null_ls.builtins.formatting.gofmt,    -- Go
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
