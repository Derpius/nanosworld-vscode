---@return Item
function Item(...) end

---@class Item
local cls = {}

---@return Item
function Item.new(...) end

---@return any
function Item.GetPairs(...) end

---@type table<string, any>
Item.__index = nil

---@return any
function Item.GetCount(...) end

---@return any
function Item.GetAll(...) end

---@param index any
---@return any
function Item.GetByIndex(index) end

