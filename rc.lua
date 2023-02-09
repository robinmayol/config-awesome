-- awesome_mode: api-level=4:screen=on
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local awful = require("awful")
local naughty = require("naughty")

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
naughty.connect_signal("request::display_error", function(message, startup)
naughty.notification {
	urgency = "critical",
	title   = "Oops, an error happened"..(startup and " during startup!" or "!"),
	message = message
}
end)
-- }}}

-- Load autofocus
require("awful.autofocus")

-- Load global definitions
require("defs.vars")
require("defs.theme")
require("defs.layouts")
require("defs.tags")

-- Load menus
require("ui.promptmenu")
require("ui.menubar")

-- Load bindings
require("bindings.mouse")
require("bindings.key")

-- Load rules
require("defs.rules")

-- Load titlebars
require("ui.titlebars")

-- Load notifications
require("ui.notifications")
