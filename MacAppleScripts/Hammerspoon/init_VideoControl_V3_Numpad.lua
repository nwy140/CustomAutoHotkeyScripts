-- Global toggle flag
local scriptEnabledNumpad = true

-- Toggle hotkey: Cmd + [
hs.hotkey.bind({"pad*"}, "pad=", function()
    scriptEnabledNumpad = not scriptEnabledNumpad
    if scriptEnabledNumpad then
        hs.alert.show("Seek hotkeys ENABLED")
    else
        hs.alert.show("Seek hotkeys DISABLED")
    end
end)

-- Alternate Solution https://www.reddit.com/r/hammerspoon/comments/vklw9i/comment/iew8zum/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
hs.hotkey.bind({""}, "padclear", function()
        hs.execute('shortcuts run "Play/Pause"')
end)

-- Seek Forward (Ctrl + Shift + 2)
local seekForwardTimerNumpad = nil
hs.hotkey.bind({""}, "pad*",
  function() -- keyDown
    if scriptEnabledNumpad then
      seekForwardTimerNumpad = hs.timer.doEvery(0.00001, function()
        hs.execute('shortcuts run "Seek Forward"')
      end)
    end
  end,
  function() -- keyUp
    if seekForwardTimerNumpad then
      seekForwardTimerNumpad:stop()
      seekForwardTimerNumpad = nil
    end
  end
)

-- Seek Backward (Ctrl + Shift + 1)
local seekBackwardTimerNumpad = nil
hs.hotkey.bind({""}, "pad/",
  function() -- keyDown
    if scriptEnabledNumpad then
      seekBackwardTimerNumpad = hs.timer.doEvery(0.00001, function()
        hs.execute('shortcuts run "Seek Backward"')
      end)
    end
  end,
  function() -- keyUp
    if seekBackwardTimerNumpad then
      seekBackwardTimerNumpad:stop()
      seekBackwardTimerNumpad = nil
    end
  end
)
