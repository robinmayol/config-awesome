local awful = require("awful")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
require("awful.hotkeys_popup.keys")
local screenshot = 'scrot -F /home/mrfry/`date +"screenshot_%y-%m-%d_%H:%M:%S_%N.png"`'
-- General Awesome keys
awful.keyboard.append_global_keybindings({
awful.key({ modkey,           }, "s",      hotkeys_popup.show_help,
			{ description="show help", group="awesome" }),
awful.key({ modkey,           }, "w", function () mymainmenu:show() end,
			{ description = "show main menu", group = "awesome" }),
awful.key({ modkey, "Control" }, "r", awesome.restart,
			{ description = "reload awesome", group = "awesome" }),
awful.key({ modkey, "Shift"   }, "q", awesome.quit,
			{ description = "quit awesome", group = "awesome" }),
--[[awful.key({ modkey }, "x",
			function ()
				awful.prompt.run {
					prompt       = "Run Lua code: ",
					textbox      = awful.screen.focused().mypromptbox.widget,
					exe_callback = awful.util.eval,
					history_path = awful.util.get_cache_dir() .. "/history_eval"
				}
			end,
			{ description = "lua execute prompt", group = "awesome" }),--]]
awful.key({ modkey,           }, "Return", function () awful.spawn(terminal) end,
			{ description = "open a terminal", group = "launcher" }),
awful.key({ modkey },            "r",     function () awful.screen.focused().mypromptbox:run() end,
			{ description = "run prompt", group = "launcher" }),
awful.key({ modkey }, "p", function() menubar.show() end,
			{ description = "show the menubar", group = "launcher" }),
awful.key({ modkey,           }, "z", function () awful.spawn("/home/mrfry/bin/dmenu_run_history -l 10 -p 'Run' -fn 'Fantasque sans mono-20'") end,
			{ description = "open a dmenu", group = "launcher" }),
awful.key({ modkey,           }, "x", function () awful.spawn("networkmanager_dmenu -fn 'Fantasque sans mono-20'") end,
			{ description = "open a dmenu", group = "launcher" }),
awful.key({ modkey,           }, "c", function () awful.spawn("dmenu-bluetooth -l 10 -fn 'Fantasque sans mono-20'") end,
			{ description = "open a dmenu", group = "launcher" }),

awful.key({            }, "XF86MonBrightnessDown", function () awful.spawn("/sbin/light -U 2") end,
			{ desrcription = "decrease brightness", group = "multimedia" }),
awful.key({            }, "XF86MonBrightnessUp", function () awful.spawn("/sbin/light -A 2") end,
			{ description = "increase brightness", group = "multimedia" }),

awful.key({            }, "XF86AudioRaiseVolume", function () awful.spawn("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+") end,
			{ description = "increase volume", group = "multimedia" }),
awful.key({            }, "XF86AudioLowerVolume", function () awful.spawn("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-") end,
			{ description = "decrease volume", group = "multimedia" }),
awful.key({            }, "XF86AudioMute", function () awful.spawn("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle") end,
			{ description = "decrease volume", group = "multimedia" }),

awful.key({            }, "XF86AudioPrev", function () awful.spawn.with_shell("MPD_HOST=127.0.0.1 mpc prev") end,
			{ description = "mpc previous track", group = "multimedia" }),
awful.key({            }, "XF86AudioPlay", function () awful.spawn.with_shell("MPD_HOST=127.0.0.1 mpc toggle") end,
			{ description = "mpc play/plause track", group = "multimedia" }),
awful.key({            }, "XF86AudioNext", function () awful.spawn.with_shell("MPD_HOST=127.0.0.1 mpc next") end,
			{ description = "mpc next track", group = "multimedia" }),

awful.key({            }, "XF86KbdBrightnessDown", function () awful.spawn("/home/mrfry/bin/razer_kbd_brightness dec 5") end,
			{ description = "keyboard brightness down", group = "multimedia" }),
awful.key({            }, "XF86KbdBrightnessUp", function () awful.spawn("/home/mrfry/bin/razer_kbd_brightness inc 5") end,
			{ description = "keyboard brightness down", group = "multimedia" }),


awful.key({ modkey, "Shift"   }, ",", function () awful.spawn.with_shell(screenshot) end,
			{ description = "screenshot", group = "launcher" }),
awful.key({ modkey, "Shift"   }, ".", function () awful.spawn.with_shell('scrot -s -F /home/mrfry/$(date +"screenshot_%y-%m-%d_%H:%M:%S_%N.png")') end,
			{ description = "screenshot", group = "launcher" }),
awful.key({ modkey, "Shift"   }, "/", function () awful.spawn.with_shell('scrot -u -F /home/mrfry/$(date +"screenshot_%y-%m-%d_%H:%M:%S_%N.png")') end,
			{ description = "screenshot", group = "launcher" }),
})
