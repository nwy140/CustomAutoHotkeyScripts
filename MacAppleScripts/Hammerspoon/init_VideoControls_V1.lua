local seekForwardTimer = nil

hs.hotkey.bind({"ctrl", "shift"}, "1",
  function() -- keyDown
    seekForwardTimer = hs.timer.doEvery(0.00001, function()
      hs.execute('shortcuts run "Seek Forward"')
    end)
  end,
  function() -- keyUp
    if seekForwardTimer then
      seekForwardTimer:stop()
      seekForwardTimer = nil
    end
  end
)



local seekBackwardTimer = nil

hs.hotkey.bind({"ctrl", "shift"}, "2",
  function() -- keyDown
    seekBackwardTimer = hs.timer.doEvery(0.00001, function()
      hs.execute('shortcuts run "Seek Backward"')
    end)
  end,
  function() -- keyUp
    if seekBackwardTimer then
      seekBackwardTimer:stop()
      seekBackwardTimer = nil
    end
  end
)




