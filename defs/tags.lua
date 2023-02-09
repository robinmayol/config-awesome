local awful = require("awful")

local tag_names = { "", "", "", "", "󱠂"}

-- this is a very basic tag implementation
-- for more fine-grained tag defaults, look at the documentation for awful.tag.add
screen.connect_signal("request::desktop_decoration", function(s)
	awful.tag(
		tag_names,
		s,
		awful.layout.layouts[1]
	)
end)
