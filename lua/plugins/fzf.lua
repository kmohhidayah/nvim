return {
    {

        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({
                lsp = {
                    diagnostic = {
                        -- Enable preview and use 'bat' with '--wrap=character'
                        previewer = "bat",
                        preview_opts = "--wrap=character",
                    },
                },
            })
        end
    },
}
