-- My hammerspoon init script.

-- Window operations
local window_op = require "windowOperations"

window_op:centerWindowHotKey()
window_op:snapTopLeft(5, 5)
window_op:snapTopRight(5, 5)
window_op:snapBottomLeft(5, 5)
window_op:snapBottomRight(5, 5)
