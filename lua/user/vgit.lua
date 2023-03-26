local status_ok, vgit = pcall(require, 'vgit')

if not status_ok then
    vim.notify("vgit plugin is not exists")
    return
end

vgit.setup({
    keymaps = {
        ['n <C-k>'] = function() require('vgit').hunk_up() end,
        ['n <C-j>'] = function() require('vgit').hunk_down() end,
        -- ['n <leader>gs'] = function() require('vgit').buffer_hunk_stage() end,
        -- ['n <leader>gr'] = function() require('vgit').buffer_hunk_reset() end,
        ['n <leader>gbh'] = function() require('vgit').buffer_hunk_preview() end,
        ['n <leader>gbb'] = function() require('vgit').buffer_blame_preview() end,
        ['n <leader>gbd'] = function() require('vgit').buffer_diff_preview() end,
        ['n <leader>gbh'] = function() require('vgit').buffer_history_preview() end,
        -- ['n <leader>gu'] = function() require('vgit').buffer_reset() end,
        ['n <leader>gg'] = function() require('vgit').buffer_gutter_blame_preview() end,
        -- ['n <leader>glu'] = function() require('vgit').buffer_hunks_preview() end,
        -- ['n <leader>gls'] = function() require('vgit').project_hunks_staged_preview() end,
        ['n <leader>gpd'] = function() require('vgit').project_diff_preview() end,
        -- ['n <leader>gq'] = function() require('vgit').project_hunks_qf() end,
        ['n <leader>gtd'] = function() require('vgit').toggle_diff_preference() end,
        ['n <leader>gtb'] = function() require('vgit').toggle_live_blame() end,
        ['n <leader>gtg'] = function() require('vgit').toggle_live_gutter() end,
    },
    live_blame = {
        enabled = false,
    },
    live_gutter = {
        enabled = true,
        edge_navigation = true, -- This allows users to navigate within a hunk
    },
    authorship_code_lens = {
        enabled = true,
    },
})
