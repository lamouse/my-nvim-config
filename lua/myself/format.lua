local function ClangFormat()
    if vim.fn.executable("clang-format") then
        local curFilename = vim.fn.expand('%')
        vim.fn.execute('clang-format '.. curFilename .. ' -i')
    end
end
