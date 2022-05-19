local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
local gap = 28

-- Bar
local bar = {}

awful.screen.connect_for_each_screen(function(s)

-- Tagslist
local Taglist = awful.widget.taglist{
    screen = s,
    buttons = gears.table.join(
        awful.button({ }, 1, function(t) t:view_only() end),
        awful.button({ modkey }, 1, function(t)
                                  if client.focus then
                                      client.focus:move_to_tag(t)
                                  end
                              end),
        awful.button({ }, 3, awful.tag.viewtoggle),
        awful.button({ modkey }, 3, function(t)
                                  if client.focus then
                                      client.focus:toggle_tag(t)
                                  end
                              end),
        awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
        awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
    ),
    filter = awful.widget.taglist.filter.all,
    layout = wibox.layout.fixed.horizontal,
    valign = "center"
}
-- Taglist end

local barWidgets = wibox.widget {
    Taglist,
    layout = wibox.layout.fixed.horizontal
}

bar = wibox { align = "center",
    width = 1356,
    opacity = 1,
    visible = true, 
    bg = "#1E1E2E", 
    height = gap,
    ontop = false,
    widget = barWidgets,
}
bar:struts{
    bottom = gap+5
}

end)
-- Bar end

return bar
