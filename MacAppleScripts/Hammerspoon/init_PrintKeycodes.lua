hs.eventtap.new({hs.eventtap.event.types.keyDown}, function(e)
  print("KeyCode: " .. e:getKeyCode())
end):start()
