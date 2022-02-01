------------------------------------------------------------------------------------
--      _   _       _         _____
--     | \ | |_   _(_)_ __ __|_   _| __ ___  ___
--     |  \| \ \ / / | '_ ` _ \| || '__/ _ \/ _ \
--     | |\  |\ V /| | | | | | | || | |  __/  __/
--     |_| \_| \_/ |_|_| |_| |_|_||_|  \___|\___|
------------------------------------------------------------------------------------
-------------------------- Some Settings -------------------------------------------
local present= pcall(require, "nvim-tree.config")
if not present then
   return
end
local g = vim.g

g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_allow_resize = 1
g.nvim_tree_auto_close = 0 -- closes tree when it's the last window
g.nvim_tree_auto_ignore_ft = { "dashboard" } -- don't open tree on specific fiypes.
g.nvim_tree_auto_open = 0
g.nvim_tree_disable_netrw = 1
g.nvim_tree_follow = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_gitignore = 1
g.nvim_tree_hide_dotfiles = 0
g.nvim_tree_highlight_opened_files = 0
g.nvim_tree_hijack_netrw = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_ignore = { ".git", "node_modules", ".cache" }
g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }
g.nvim_tree_side = "left"
g.nvim_tree_tab_open = 0
g.nvim_tree_update_cwd = 1
g.nvim_tree_width = 25
g.nvim_tree_lsp_diagnostics = 0

-------------------------- Icons ---------------------------------------------------
g.nvim_tree_show_icons = {
   folders = 1,
   -- folder_arrows= 1
   files = 1,
   git = 1,
}
g.nvim_tree_icons = {
   default = "",
   symlink = "",
   git = {
      deleted = "",
      ignored = "◌",
      renamed = "➜",
      staged = "✓",
      unmerged = "",
      unstaged = "✗",
      untracked = "★",
   },
   folder = {
      -- disable indent_markers option to get arrows working or if you want both arrows and indent then just add the arrow icons in front            ofthe default and opened folders below!
      -- arrow_open = "",
      -- arrow_closed = "",
      default = "",
      empty = "",
      empty_open = "",
      open = "",
      symlink = "",
      symlink_open = "",
   },
}

