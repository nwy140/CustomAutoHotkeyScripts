-- hs.eventtap.new({hs.eventtap.event.types.keyDown}, function(e)
--   print("KeyCode: " .. e:getKeyCode())
-- end):start()


-- Create an eventtap to listen to key presses
hs.eventtap.new({hs.eventtap.event.types.keyDown}, function(event)
    local keyCode = event:getKeyCode()
    local keyName = hs.keycodes.map[keyCode] or "Unknown Key"
    print("Key pressed: " .. keyName .. " (KeyCode: " .. keyCode .. ")")
end):start()
