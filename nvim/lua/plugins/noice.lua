local pywal_core = require('pywal.core')
local colors = pywal_core.get_colors()
require("noice").setup({
	enable = true,
	views = {
    	  cmdline_popup = {
        position = {
          row = "99%",   -- unten
          col = 0,         -- an die x-Position deiner Lualine-Section anpassen
        },
        size = {
          width = 600,       -- Breite an deine Komponente anpassen
          height = "auto",
        },
        border = { style = "none" },
        filter_options = {},
        win_options = {
          winhighlight = "NormalFloat:StatusLine,FloatBorder:StatusLine",
        },
      },
    },
})
