------------------------------------------------------------------
--      _                _ _
--     | |   _   _  __ _| (_)_ __   ___
--     | |  | | | |/ _` | | | '_ \ / _ \
--     | |__| |_| | (_| | | | | | |  __/
--     |_____\__,_|\__,_|_|_|_| |_|\___|
--
------------------------------------------------------------------
---------------------- Declaring Functions -----------------------
local vim = vim
local function clock()
  return " " .. os.date("%H:%M")
end

local function lsp_progress()
  local messages = vim.lsp.util.get_progress_messages()
  if #messages == 0 then
    return
  end
  local status = {}
  for _, msg in pairs(messages) do
    table.insert(status, (msg.percentage or 0) .. "%% " .. (msg.title or ""))
  end
  local spinners = {
    "⠋",
    "⠙",
    "⠹",
    "⠸",
    "⠼",
    "⠴",
    "⠦",
    "⠧",
    "⠇",
    "⠏",
  }
  local ms = vim.loop.hrtime() / 1000000
  local frame = math.floor(ms / 120) % #spinners
  return table.concat(status, " | ") .. " " .. spinners[frame + 1]
end

vim.cmd("autocmd User LspProgressUpdate let &ro = &ro")

---------------------- Satuts Line -------------------------------
require("lualine").setup({
  options = {
    theme = "neovim_purple",
    icons_enabled = true,
    --section_separators = { "", "" },
    --component_separators = { "", "" },
    section_separators = {"", ""},
    component_separators = {"", ""}
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = { { "diagnostics", sources = { "nvim_diagnostic" } }, "filename" },
    lualine_x = { "filetype", lsp_progress },
    lualine_y = { clock },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  extensions = { "nvim-tree" },
})