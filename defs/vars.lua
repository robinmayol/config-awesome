-- This is used later as the default terminal and editor to run.
terminal = "tilix"
editor = os.getenv("EDITOR") or "lapcs"
editor_cmd = terminal .. " -e " .. editor

-- Default modkey.
modkey = "Mod4"
