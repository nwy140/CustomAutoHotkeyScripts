-- https://chatgpt.com/c/6820afd8-1498-8009-aac4-bfb0732c2e17
-- Global control flag
local scriptEnabled = false

-- Toggle keys
hs.hotkey.bind({"cmd"}, "[", function()
    scriptEnabled = true
    hs.alert.show("Seek hotkeys ENABLED")
end)

hs.hotkey.bind({"cmd"}, "]", function()
    scriptEnabled = false
    hs.alert.show("Seek hotkeys DISABLED")
end)

-- Seek Forward
local seekForwardTimer = nil
hs.hotkey.bind({"cmd", "shift"}, "2",
  function() -- keyDown
    if scriptEnabled then
      seekForwardTimer = hs.timer.doEvery(0.00001, function()
        hs.execute('shortcuts run "Seek Forward"')
      end) 
    end
  end,
  function() -- keyUp
    if seekForwardTimer then
      seekForwardTimer:stop()
      seekForwardTimer = nil
    end
  end
)

-- Seek Backward
local seekBackwardTimer = nil
hs.hotkey.bind({"cmd", "shift"}, "1",
  function() -- keyDown
    if scriptEnabled then
      seekBackwardTimer = hs.timer.doEvery(0.00001, function()
        hs.execute('shortcuts run "Seek Backward"')
      end)
    end
  end,
  function() -- keyUp
    if seekBackwardTimer then
      seekBackwardTimer:stop()
      seekBackwardTimer = nil
    end
  end
)
