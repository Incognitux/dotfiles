local volume_widget = require('awesome-wm-widgets.volume-widget.volume')
local batteryarc_widget = require("awesome-wm-widgets.batteryarc-widget.batteryarc")
local logout_popup = require("awesome-wm-widgets.logout-popup-widget.logout-popup")
local brightness_widget = require("awesome-wm-widgets.brightness-widget.brightness") 
local wibox = require("wibox")

local widgets = { -- Right widgets
        layout = wibox.layout.fixed.horizontal,
        --mykeyboardlayout,
        wibox.widget.systray(),
        brightness_widget(),
        batteryarc_widget({
            show_current_level = true,
            arc_thickness = 1,
            charging_color = "#70c987",
            arcshow_current_level = true,
            warning_msg_title = "Incognitux, we have a problem",
            warning_msg_position = 'top_right', 
            }),                
        volume_widget(),
        --battery_widget(),
        mytextclock,
    }
