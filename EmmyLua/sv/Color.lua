Color = {}

Color.PALETTE = {}

---@param hex any
---@return any
function Color.FromHEX(hex) end

Color.GREEN = {}

---@type number
Color.GREEN.G = 1

---@type number
Color.GREEN.R = 0

---@type number
Color.GREEN.A = 1

---@type number
Color.GREEN.B = 0

---@param self any
---@param other any
---@return any
function Color.__div(self, other) end

Color.WHITE = {}

---@type number
Color.WHITE.G = 1

---@type number
Color.WHITE.R = 1

---@type number
Color.WHITE.A = 1

---@type number
Color.WHITE.B = 1

Color.CHARTREUSE = {}

---@type number
Color.CHARTREUSE.G = 1

---@type number
Color.CHARTREUSE.R = 0.5

---@type number
Color.CHARTREUSE.A = 1

---@type number
Color.CHARTREUSE.B = 1

Color.YELLOW = {}

---@type number
Color.YELLOW.G = 1

---@type number
Color.YELLOW.R = 1

---@type number
Color.YELLOW.A = 1

---@type number
Color.YELLOW.B = 0

Color.ROSE = {}

---@type number
Color.ROSE.G = 0

---@type number
Color.ROSE.R = 1

---@type number
Color.ROSE.A = 1

---@type number
Color.ROSE.B = 0.5

Color.VIOLET = {}

---@type number
Color.VIOLET.G = 0

---@type number
Color.VIOLET.R = 0.5

---@type number
Color.VIOLET.A = 1

---@type number
Color.VIOLET.B = 1

---@param h any
---@param s any
---@param l any
---@return any
function Color.FromHSL(h, s, l) end

---@param c any
---@param y any
---@param m any
---@param k any
---@param a any
---@return any
function Color.FromCYMK(c, y, m, k, a) end

---@param self any
---@param other any
---@return any
function Color.__sub(self, other) end

---@param r any
---@param g any
---@param b any
---@param a any
---@return any
function Color.FromRGBA(r, g, b, a) end

---@param self any
---@param other any
---@return any
function Color.__add(self, other) end

---@param _R any
---@param _G any
---@param _B any
---@param _A any
---@return any
function Color.new(_R, _G, _B, _A) end

Color.BLUE = {}

---@type number
Color.BLUE.G = 0

---@type number
Color.BLUE.R = 0

---@type number
Color.BLUE.A = 1

---@type number
Color.BLUE.B = 1

---@return any
function Color.RandomPalette() end

---@param h any
---@param s any
---@param v any
---@return any
function Color.FromHSV(h, s, v) end

---@param self any
---@param other any
---@return any
function Color.__mul(self, other) end

Color.CYAN = {}

---@type number
Color.CYAN.G = 1

---@type number
Color.CYAN.R = 0

---@type number
Color.CYAN.A = 1

---@type number
Color.CYAN.B = 1

---@return any
function Color.Random() end

Color.MAGENTA = {}

---@type number
Color.MAGENTA.G = 0

---@type number
Color.MAGENTA.R = 1

---@type number
Color.MAGENTA.A = 1

---@type number
Color.MAGENTA.B = 1

Color.AQUAMARINE = {}

---@type number
Color.AQUAMARINE.G = 1

---@type number
Color.AQUAMARINE.R = 0

---@type number
Color.AQUAMARINE.A = 1

---@type number
Color.AQUAMARINE.B = 0.5

Color.ORANGE = {}

---@type number
Color.ORANGE.G = 0.5

---@type number
Color.ORANGE.R = 1

---@type number
Color.ORANGE.A = 1

---@type number
Color.ORANGE.B = 0

---@param self any
---@return any
function Color.__tostring(self) end

Color.AZURE = {}

---@type number
Color.AZURE.G = 0.5

---@type number
Color.AZURE.R = 0

---@type number
Color.AZURE.A = 1

---@type number
Color.AZURE.B = 1

Color.BLACK = {}

---@type number
Color.BLACK.G = 0

---@type number
Color.BLACK.R = 0

---@type number
Color.BLACK.A = 1

---@type number
Color.BLACK.B = 0

Color.RED = {}

---@type number
Color.RED.G = 0

---@type number
Color.RED.R = 1

---@type number
Color.RED.A = 1

---@type number
Color.RED.B = 0

---@param self any
---@param other any
---@return any
function Color.__eq(self, other) end

