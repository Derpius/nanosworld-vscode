Color = {}

function Color.__sub(self, other) end

Color.YELLOW = {}

---@type number
Color.YELLOW.B = 0

---@type number
Color.YELLOW.A = 1

---@type number
Color.YELLOW.R = 1

---@type number
Color.YELLOW.G = 1

function Color.__add(self, other) end

function Color.__div(self, other) end

function Color.__eq(self, other) end

Color.CYAN = {}

---@type number
Color.CYAN.B = 1

---@type number
Color.CYAN.A = 1

---@type number
Color.CYAN.R = 0

---@type number
Color.CYAN.G = 1

Color.AZURE = {}

---@type number
Color.AZURE.B = 1

---@type number
Color.AZURE.A = 1

---@type number
Color.AZURE.R = 0

---@type number
Color.AZURE.G = 0.5

function Color.FromHSV(h, s, v) end

Color.VIOLET = {}

---@type number
Color.VIOLET.B = 1

---@type number
Color.VIOLET.A = 1

---@type number
Color.VIOLET.R = 0.5

---@type number
Color.VIOLET.G = 0

function Color.FromCYMK(c, y, m, k, a) end

function Color.FromHSL(h, s, l) end

function Color.FromRGBA(r, g, b, a) end

Color.WHITE = {}

---@type number
Color.WHITE.B = 1

---@type number
Color.WHITE.A = 1

---@type number
Color.WHITE.R = 1

---@type number
Color.WHITE.G = 1

function Color.__tostring(self) end

function Color.__mul(self, other) end

Color.MAGENTA = {}

---@type number
Color.MAGENTA.B = 1

---@type number
Color.MAGENTA.A = 1

---@type number
Color.MAGENTA.R = 1

---@type number
Color.MAGENTA.G = 0

Color.PALETTE = {}

function Color.RandomPalette() end

function Color.FromHEX(hex) end

function Color.Random() end

Color.CHARTREUSE = {}

---@type number
Color.CHARTREUSE.B = 1

---@type number
Color.CHARTREUSE.A = 1

---@type number
Color.CHARTREUSE.R = 0.5

---@type number
Color.CHARTREUSE.G = 1

Color.ORANGE = {}

---@type number
Color.ORANGE.B = 0

---@type number
Color.ORANGE.A = 1

---@type number
Color.ORANGE.R = 1

---@type number
Color.ORANGE.G = 0.5

Color.BLUE = {}

---@type number
Color.BLUE.B = 1

---@type number
Color.BLUE.A = 1

---@type number
Color.BLUE.R = 0

---@type number
Color.BLUE.G = 0

function Color.new(_R, _G, _B, _A) end

Color.RED = {}

---@type number
Color.RED.B = 0

---@type number
Color.RED.A = 1

---@type number
Color.RED.R = 1

---@type number
Color.RED.G = 0

Color.AQUAMARINE = {}

---@type number
Color.AQUAMARINE.B = 0.5

---@type number
Color.AQUAMARINE.A = 1

---@type number
Color.AQUAMARINE.R = 0

---@type number
Color.AQUAMARINE.G = 1

Color.BLACK = {}

---@type number
Color.BLACK.B = 0

---@type number
Color.BLACK.A = 1

---@type number
Color.BLACK.R = 0

---@type number
Color.BLACK.G = 0

Color.GREEN = {}

---@type number
Color.GREEN.B = 0

---@type number
Color.GREEN.A = 1

---@type number
Color.GREEN.R = 0

---@type number
Color.GREEN.G = 1

Color.ROSE = {}

---@type number
Color.ROSE.B = 0.5

---@type number
Color.ROSE.A = 1

---@type number
Color.ROSE.R = 1

---@type number
Color.ROSE.G = 0

