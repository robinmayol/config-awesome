local awful = require("awful")

-- root window mouse bindings
--awful.mouse.append_global_mousebindings({
--	awful.button({ }, 3, function () mymainmenu:toggle() end),
--	awful.button({ }, 4, awful.tag.viewprev),
--	awful.button({ }, 5, awful.tag.viewnext),
--})

-- window mouse bindings
client.connect_signal("request::default_mousebindings", function()
awful.mouse.append_client_mousebindings({
	awful.button({ }, 1, function (c)
		c:activate { context = "mouse_click" }
	end),
	awful.button({ modkey }, 1, function (c)
		c:activate { context = "mouse_click", action = "mouse_move"  }
	end),
	awful.button({ modkey, "Shift" }, 1, function (c)
		c:activate { context = "mouse_click", action = "mouse_resize"}
	end),
})
end)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
c:activate { context = "mouse_enter", raise = false }
end)
