-- Global toggle flag
local scriptEnabled = true

-- Toggle hotkey: Cmd + [
hs.hotkey.bind({"cmd"}, "[", function()
    scriptEnabled = not scriptEnabled
    if scriptEnabled then
        hs.alert.show("Seek hotkeys ENABLED")
    else
        hs.alert.show("Seek hotkeys DISABLED")
    end
end)

-- Alternate Solution https://www.reddit.com/r/hammerspoon/comments/vklw9i/comment/iew8zum/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
hs.hotkey.bind({"cmd", "shift"}, "`", function()
        hs.execute('shortcuts run "Play/Pause"')
end)

-- Seek Forward (Ctrl + Shift + 1)
local seekForwardTimer = nil
hs.hotkey.bind({"cmd", "shift"}, "1",
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

-- Seek Backward (Ctrl + Shift + 2)
local seekBackwardTimer = nil
hs.hotkey.bind({"cmd", "shift"}, "2",
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
