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

  -- Seek Forward (Ctrl + Shift + 2)
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

  -- Seek Backward (Ctrl + Shift + 1)
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



  -- NUMPAD Map
  -- Global toggle flag
  local scriptEnabledNumpad = true

  -- Toggle hotkey: Cmd + [
  hs.hotkey.bind({"cmd"}, "]", function()
      scriptEnabledNumpad = not scriptEnabledNumpad
      if scriptEnabledNumpad then
          hs.alert.show("Seek hotkeys NUMPAD ENABLED")
      else
          hs.alert.show("Seek hotkeys NUMPAD DISABLED")
      end
  end)

  -- Toggle hotkey: Cmd + [
  hs.hotkey.bind({"pad*"}, "pad=", function()
      scriptEnabledNumpad = not scriptEnabledNumpad
      if scriptEnabledNumpad then
          hs.alert.show("Seek hotkeys NUMPAD ENABLED")
      else
          hs.alert.show("Seek hotkeys NUMPAD DISABLED")
      end
  end)

  -- Alternate Solution https://www.reddit.com/r/hammerspoon/comments/vklw9i/comment/iew8zum/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
  hs.hotkey.bind({""}, "padclear", function()
          hs.execute('shortcuts run "Play/Pause"')
  end)

  -- Seek Forward (Ctrl + Shift + 2)
  local seekForwardTimerNumpad = nil
  hs.hotkey.bind({""}, "f15",
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
  hs.hotkey.bind({""}, "f14",
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


  -- PrintScreen https://github.com/skehlet/hammerspoon/blob/d85ae6adc54afa105aae5438ec2a6a20b079fad6/include/screenShot.lua#L3
  -- Make F13 (the button where PrintScreen is on PC keyboards) send ctrl-shift-cmd-4
  -- For reference: Apple Style Guide says the proper order is Control, Option, Shift, Command
  hs.hotkey.bind({}, 'f13', function()
      hs.eventtap.keyStroke({'ctrl', 'shift', 'cmd'}, '4', 0)
  end)

  hs.hotkey.bind({"cmd"}, 'f13', function()
      hs.eventtap.keyStroke({ 'shift', 'cmd'}, '3', 0)
  end)