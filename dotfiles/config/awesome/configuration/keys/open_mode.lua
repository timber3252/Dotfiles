local gears = require("gears")
local awful = require("awful")
local hotkeys_popup = require('awful.hotkeys_popup').widget

local modkey = require('configuration.keys.mod').mod_key
local apps = require('configuration.apps')

local openkeys = gears.table.join(
  awful.key(
    { modkey },
    "F1",
    hotkeys_popup.show_help,
    { description = "show help", group = "open mode" }
  ),
  awful.key(
    {},
    "Escape",
    function ()
      root.keys(require('configuration.keys.global'))
    end,
    { description = "leave open mode", group = "open mode" }
  ),
  awful.key(
    {},
    "w",
    function ()
      awful.spawn(apps.default.web_browser)
    end,
    { description = "open default browser", group = "open mode" }
  ),
  awful.key(
    {},
    "m",
    function ()
      awful.spawn(apps.default.music_player)
    end,
    { description = "open default music player", group = "open mode" }
  ),
  awful.key(
    {},
    "e",
    function ()
      awful.spawn(apps.default.text_editor)
    end,
    { description = "open default text editor", group = "open mode" }
  )
)

return openkeys
