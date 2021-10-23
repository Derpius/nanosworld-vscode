---@param _R any
---@param _G any
---@param _B any
---@param _A any
---@return Color
function Color(_R, _G, _B, _A) end

---@class Color
local cls = {}

---@param other any
---@return any
function cls:__sub(other) end

---@type Color
Color.YELLOW = nil

---@param other any
---@return any
function cls:__mul(other) end

---@type table<string, any>
Color.__index = nil

---@param _R any
---@param _G any
---@param _B any
---@param _A any
---@return Color
function Color.new(_R, _G, _B, _A) end

---@param hex any
---@return any
function Color.FromHEX(hex) end

---@return any
function cls:__tostring(...) end

---@type Color
Color.AQUAMARINE = nil

---@param other any
---@return any
function cls:__add(other) end

---@param h any
---@param s any
---@param l any
---@return any
function Color.FromHSL(h, s, l) end

---@type Color
Color.BLACK = nil

---@param c any
---@param y any
---@param m any
---@param k any
---@param a any
---@return any
function Color.FromCYMK(c, y, m, k, a) end

---@type Color
Color.GREEN = nil

---@param r any
---@param g any
---@param b any
---@param a any
---@return any
function Color.FromRGBA(r, g, b, a) end

---@return any
function Color.Random(...) end

---@type table<number, table>
Color.PALETTE = nil

---@return any
function Color.RandomPalette(...) end

---@type Color
Color.ROSE = nil

---@type Color
Color.WHITE = nil

---@type Color
Color.VIOLET = nil

---@type Color
Color.AZURE = nil

---@param other any
---@return any
function cls:__eq(other) end

---@param h any
---@param s any
---@param v any
---@return any
function Color.FromHSV(h, s, v) end

---@type Color
Color.RED = nil

---@type Color
Color.CHARTREUSE = nil

---@type Color
Color.ORANGE = nil

---@type Color
Color.MAGENTA = nil

---@type Color
Color.BLUE = nil

---@type Color
Color.CYAN = nil

---@param other any
---@return any
function cls:__div(other) end

