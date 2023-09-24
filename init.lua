-- My hammerspoon init script.

-- Center focused window.
hs.hotkey.bind({ "cmd", "alt", "shift", "ctrl" }, "F12", function()
    local scr = hs.screen.primaryScreen()
    local w = hs.window.focusedWindow():centerOnScreen(scr, true)
end)
