-- My hammerspoon init script.

-- Window operations
local window_op = require "windowOperations"

window_op:centerWindowHotKey()
window_op:snapTopLeft(0, 0)
window_op:snapTopRight(0, 0)
window_op:snapBottomLeft(0, 0)
window_op:snapBottomRight(0, 0)
