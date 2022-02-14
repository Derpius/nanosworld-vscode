---@return Item
function Item(...) end

---@class Item
local cls = {}

---@return any
function Item.GetAll(...) end

---@return any
function Item.GetCount(...) end

---@type table<string, any>
Item.__index = nil

---@return Item
function Item.new(...) end

---@param index any
---@return any
function Item.GetByIndex(index) end

---@return any
function Item.GetPairs(...) end

