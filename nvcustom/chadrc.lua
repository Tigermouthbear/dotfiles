---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "tokyodark",
  theme_toggle = { "tokyodark", "radium" },
  transparency = false,

  hl_override = highlights.override,
  hl_add = highlights.add,

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    --[[header = {
      "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
      "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
      "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
      "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
      "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
      "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
      "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
      " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
      " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
      "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
      "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    },]]

    header = {
      " ███▄    █ ▓█████ ▒█████   ██▒   █▓  ██  ███▄ ▄███▓",
      " ██ ▀█   █ ▓█   ▀▒██▒  ██▒▓██░   █▒▒▓██ ▓██▒▀█▀ ██▒",
      "▓██  ▀█ ██▒▒███  ▒██░  ██▒ ▓██  █▒░░▒██ ▓██    ▓██░",
      "▓██▒  ▐▌██▒▒▓█  ▄▒██   ██░  ▒██ █░░ ░██ ▒██    ▒██ ",
      "▒██░   ▓██░░▒████░ ████▓▒░   ▒▀█░   ░██▒▒██▒   ░██▒",
      "░ ▒░   ▒ ▒ ░░ ▒░ ░ ▒░▒░▒░    ░ ▐░   ░▓ ░░ ▒░   ░  ░",
      "░ ░░   ░ ▒░ ░ ░    ░ ▒ ▒░    ░ ░░    ▒ ░░  ░      ░",
      "   ░   ░ ░    ░  ░ ░ ░ ▒       ░░    ▒  ░      ░   ",
      "         ░    ░      ░ ░        ░    ░ ░       ░   ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = {
  general = {
    n = {
      ["<leader>d"] = { "<cmd> Nvdash <CR>", "Dashboard" },
    },
  }
}

return M
