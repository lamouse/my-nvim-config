vim.api.nvim_create_autocmd({"BufNew", "BufNewFile","BufRead"}, {
    pattern = {"*.vert", "*.frag", "*.tess", "*.shader"},
    command = "set filetype=glsl",
})