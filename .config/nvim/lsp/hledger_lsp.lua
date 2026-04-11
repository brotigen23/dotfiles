return {
    cmd = { "hledger-lsp" },
    filetypes = { "hledger", "journal" },
    root_markers = { ".git", "*.journal", "*.hledger" },
    single_file_support = true,
    settings = {
        hledger = {
            formatting = {
                minAlignmentColumn = 40,
            }
        }
    }
}
