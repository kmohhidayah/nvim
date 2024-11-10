return {
    {
        'habamax/vim-asciidoctor',
        config = function()
            vim.g.asciidoctor_folding = 1                 -- optional settings
            vim.g.asciidoctor_preview_browser = 'firefox' -- set your browser for preview
        end
    },

    {
        'marioortizmanero/adoc-pdf-live.nvim',
        config = "require('adoc_pdf_live').setup()"
    },
}
