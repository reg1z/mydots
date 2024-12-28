-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadwal",
  transparency = true,
  hl_override = {
    CursorLine = { bg = "statusline_bg" },
    CursorColumn = { bg = "statusline_bg" },
    -- Cursor = { bg = "base06", fg = "pink" },
  },

}

-- M.ui = {
-- }
--
-- M.ui.hl_override = {
--   Normal = {
--     bg = "none",
--   },
-- }

return M
