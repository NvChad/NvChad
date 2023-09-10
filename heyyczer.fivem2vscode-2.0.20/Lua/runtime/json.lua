---@meta

---[lua-rapidjson](https://github.com/citizenfx/lua-rapidjson/tree/grit)
json = {}

---@param option string
function json.getoption(option) end

---Set a global encoding/decoding option; see json.getoption.
---@param option string
---@param value any
function json.setoption(option, value) end

---@type lightuserdata
json.null = nil
json.sentinel = json.null

---Create a string representing an object.
---@param object any
---@param options? { indent?: boolean, indent_amt?: integer, exception?: fun(reason: 'reference cycle' | 'custom encoder failed' | 'unsupported type' | 'error encoding number', value: string): string | nil, string | nil }
---@return string
function json.encode(object, options) end

---Decode a JSON encoded string.
---@param string string
---@param position? integer
---@param null? any
---@param objectmeta? table
---@param arraymeta? table
---@return any? object, integer? errPos, string? errMessage
function json.decode(string, position, null, objectmeta, arraymeta) end

---@return table
---Returns a metatable with the 'object' __jsontype field.
function json.object() end

---@return table
---Returns a metatable with the 'array' __jsontype field.
function json.array() end

---Return true if the provided table has metatable with an 'object' __jsontype field.
---@param value table
---@return boolean
function json.isobject(value) end

---Return true if the provided table has metatable with an 'array' __jsontype field.
---@param value table
---@return boolean
function json.isarray(value) end
