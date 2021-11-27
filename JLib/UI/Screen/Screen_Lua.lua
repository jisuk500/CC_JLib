local class = require("Class.middleclass")

-- #includes
require("MathLib.Vector2")

-- public class Screen
local Screen_Lua = class("Screen")

-- namespace JLib
JLib = JLib or {}
JLib.Screen = Screen_Lua

-- [constructor]
function Screen_Lua:initialize(screenObj) self._screen = screenObj or nil end

-- [functions]

-- @brief Writes text to the screen, using the current text and background colors.
-- @param text:string
function Screen_Lua:write(text) self._screen.write(text) end

-- @brief Writes text to the screen using the specified text and background colors. Requires version 1.74 or newer.
-- @param text:string
-- @param fg:JLib.Enums.Color
-- @param gb:JLib.Enums.Color
function Screen_Lua:bilt(text, fg, bg) self._screen.bilt(text, fg, bg) end

-- @brief Clears the entire screen.
function Screen_Lua:clear() self._screen.clear() end

-- @brief Clears the line the cursor is on.
function Screen_Lua:clearLine() self._screen.clearLine() end

-- @brief Returns two arguments containing the x and the y position of the cursor.
-- @return JLib.Vector2
function Screen_Lua:getCursorPos()
    local x, y = Screen_Lua:getCursorPos_Raw()
    return JLib.Vector2:new(x, y)
end

-- @brief Returns two arguments containing the x and the y position of the cursor. use only lua
-- @return num, num
function Screen_Lua:getCursorPos_Raw() return self._screen.getCursorPos() end

-- @brief Sets the cursor's position.
function Screen_Lua:setCursorPos(pos) Screen_Lua:setCursorPos_Raw(pos.x, pos.y) end

-- @brief Sets the cursor's position. use only lua
function Screen_Lua:setCursorPos_Raw(x, y) self._screen.setCursorPos(x, y) end

-- @brief Disables the blinking or turns it on.
function Screen_Lua:setCursorBlink(bool) self._screen.setCursorBlink(bool) end

-- @brief Returns whether the terminal supports color.
-- @return bool
function Screen_Lua:isColor() return self._screen.isColor() end

-- @brief Returns two arguments containing the x and the y values stating the size of the screen. 
-- (Good for if you're making something to be compatible with both Turtles and Computers.)
-- use only lua
-- @return num, num
function Screen_Lua:getSize_Raw() return self._screen.getSize() end

-- @brief Returns two arguments containing the x and the y values stating the size of the screen. 
-- (Good for if you're making something to be compatible with both Turtles and Computers.)
-- @return JLib.Vector2
function Screen_Lua:getSize()
    local x, y = Screen_Lua:getSize_Raw()
    return JLib.Vector2:new(x, y)
end

-- @brief Sets the text color of the terminal. Limited functionality without an Advanced machines.
-- @param color:JLib.Enums.Color
function Screen_Lua:setTextColor(color) self._screen.setTextColor(color) end

-- @brief Returns the current text color of the terminal. Requires version 1.74 or newer.
-- @return JLib.Enums.Color
function Screen_Lua:getTextColor() return self._screen.getTextColor() end

-- @brief Sets the background color of the terminal. Limited functionality without an Advanced Computer / Turtle / Monitor.
-- @return JLib.Enums.Color
function Screen_Lua:setBackgroundColor(color) self._screen.setBackgroundColor(color) end

-- @brief Returns the current background color of the terminal. Requires version 1.74 or newer.
-- @return JLib.Enums.Color
function Screen_Lua:getBackgroundColor() return self._screen.getBackgroundColor() end

-- @brief Sets the text scale. Available only to monitor objects.
-- @param scale:num
function Screen_Lua:setTextScale(scale) self._screen.setTextScale(scale) end
