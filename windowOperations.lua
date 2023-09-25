-- Window operations.

local WindowOp = {
  -- None...
}

-- Center focused window.
function WindowOp:centerWindowHotKey()
  hs.hotkey.bind({ "cmd", "alt", "shift", "ctrl" }, "F12", function()
      local scr = hs.screen.primaryScreen()
      local w = hs.window.focusedWindow()
      w:centerOnScreen(scr, true)
  end)
end

function WindowOp:snapTopLeft(offsetX, offsetY)
  hs.hotkey.bind({ "cmd", "alt", "shift", "ctrl" }, "F10", function()
      local focused_wnd = hs.window.focusedWindow()
      local screen_rect = focused_wnd:screen():frame()
      local window_rect = focused_wnd:frame()
      local new_rect = hs.geometry.new({screen_rect.x + offsetX,
                                        screen_rect.y + offsetY,
                                        window_rect.w,
                                        window_rect.h})

      focused_wnd:setFrameWithWorkarounds(new_rect)
  end)
end

function WindowOp:snapTopRight(offsetX, offsetY)
  hs.hotkey.bind({ "cmd", "alt", "shift", "ctrl" }, "F11", function()
      local focused_wnd = hs.window.focusedWindow()
      local screen_rect = focused_wnd:screen():frame()
      local window_rect = focused_wnd:frame()
      local new_rect = hs.geometry.new({screen_rect.w - window_rect.w - offsetX,
                                        screen_rect.y + offsetY,
                                        window_rect.w,
                                        window_rect.h})

      focused_wnd:setFrameWithWorkarounds(new_rect)
  end)
end

function WindowOp:snapBottomLeft(offsetX, offsetY)
  hs.hotkey.bind({ "cmd", "alt", "shift", "ctrl" }, "F8", function()
      local focused_wnd = hs.window.focusedWindow()
      local screen_rect = focused_wnd:screen():frame()
      local window_rect = focused_wnd:frame()
      local screen_height = screen_rect.h + screen_rect.y
      local new_rect = hs.geometry.new({screen_rect.x + offsetX,
                                        screen_height - window_rect.h - offsetY,
                                        window_rect.w,
                                        window_rect.h})

      focused_wnd:setFrameWithWorkarounds(new_rect)
  end)
end

function WindowOp:snapBottomRight(offsetX, offsetY)
  hs.hotkey.bind({ "cmd", "alt", "shift", "ctrl" }, "F9", function()
      local focused_wnd = hs.window.focusedWindow()
      local screen_rect = focused_wnd:screen():frame()
      local window_rect = focused_wnd:frame()
      local screen_height = screen_rect.h + screen_rect.y
      local new_rect = hs.geometry.new({screen_rect.w - window_rect.w - offsetX,
                                        screen_height - window_rect.h - offsetY,
                                        window_rect.w,
                                        window_rect.h})

      focused_wnd:setFrameWithWorkarounds(new_rect)
  end)
end

return WindowOp
