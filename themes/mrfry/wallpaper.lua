local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local wibox = require("wibox")

local themes_path = gears.filesystem.get_themes_dir()

-- image, change to whatever
-- alternatively, you could use this as some sort of manager by linking files to background.png
local background = "/home/mrfry/Pictures/2011_12_08_Sam_the_fisherman/IMG_4397.JPG"

-- configure how the wallpaper is applied here
screen.connect_signal("request::wallpaper", function(s)
    awful.wallpaper {
        screen = s,
        widget = {
            {
                image     = background,
                upscale   = true,
                downscale = true,
                widget    = wibox.widget.imagebox,
            },
            valign = "center",
            halign = "center",
            tiled  = false,
            widget = wibox.container.tile,
        }
    }
end)
