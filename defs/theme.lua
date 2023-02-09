local gears = require("gears")
local beautiful = require("beautiful")

-- Themes define colours, icons, font and wallpapers.
theme = "mrfry"

beautiful.init(gears.filesystem.get_configuration_dir() .. "themes/" .. theme .. "/theme.lua")

-- per-theme wallpaper and bar config
require("themes." .. theme .. ".wallpaper")
require("themes." .. theme .. ".wibar")
