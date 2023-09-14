-- Set up hyper key

hyper = hs.hotkey.modal.new({}, nil)

hyper.pressed = function()
  hyper:enter()
end

hyper.released = function()
  hyper:exit()
end

hs.hotkey.bind({}, "F16", hyper.pressed, hyper.released)

hyper:bind({}, "r", nil, hs.reload)
hyper:bind({}, "y", nil, hs.toggleConsole)

-- Load config in Fennel

package.path = "/opt/local/share/lua/5.4/?.lua;" .. package.path

fennel = require("fennel")
fennel.install()
fennel.dofile("init.fnl")
