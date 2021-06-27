local lain = require("lain")

ram_image = wibox.widget.imagebox ("/home/ken/.config/awesome/deco/mem.png")
cpu_image = wibox.widget.imagebox ("/home/ken/.config/awesome/deco/cpu.png")

local mem = lain.widget.mem{
    settings = function()
      	widget:set_markup(mem_now.used .. "M ")
    end
}

local cpu = lain.widget.cpu {
    settings = function()
        widget:set_markup(cpu_now.usage .. "% ")
    end
}

local net = lain.widget.net{
    settings = function()
      	widget:set_markup(net_now.received .. " ↓↑ " .. net_now.sent .. " ")
    end
}
