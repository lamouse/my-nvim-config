if vim.fn.findfile('CMakeLists.txt', '.;') then -- CMake
    vim.keymap.set('n', "<leader><leader>s", ":!cmake -S . -B cmake-build<CR>", {noremap = true})
    vim.keymap.set('n', "<leader><leader>b", ":!cmake --build cmake-build -j2<CR>", {noremap = true})
    vim.keymap.set('n', "<leader><leader>t", ":!cmake --build cmake-build -j2 --target test<CR>", {noremap = true})
elseif vim.fn.findfile('Cargo.toml', '.;') then -- Rust Cargo
    vim.keymap.set('n', "<leader><leader>r", ":!cargo run<CR>", {noremap = true})
    vim.keymap.set('n', "<leader><leader>b", ":!cargo build<CR>", {noremap = true})
    vim.keymap.set('n', "<leader><leader>t", ":!cargo test<CR>", {noremap = true})
end
