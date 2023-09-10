---Credit (MIT license): https://github.com/overextended/cfxlua-vscode/blob/91c5fa4666b0e0e37fecba315c7134fdfd213a3e/Lua/runtime/json.lua
---@meta

---[lua-rapidjson](https://github.com/citizenfx/lua-rapidjson/tree/grit)
json = {}

---@alias json_options
---Created string will contain newlines and indentations.
---| 'indent'
---Alias of "indent".
---| 'pretty'
---Sort keys of a table prior to encoding.
---| 'sort_keys'
---If enabled use lua_pushnil, otherwise the json.null sentinel.
---| 'null'
---Write null instead of throwing a LUA_RAPIDJSON_ERROR_DEPTH_LIMIT error when the encoding depth exceeds 'max_depth'.
---| 'nesting'
---Encode integers as unsigned integers/values.
---| 'unsigned'
---Allow writing of Infinity, -Infinity and NaN.
---| 'nan'
---Alias of "nan".
---| 'inf'
---Encode integers as 32-bit values.
---| 'bit32'
---Use sprintf instead of rapidjson's native Grisu2.
---| 'lua_format_float'
---Massage Grisu2 by rounding at maxDecimalsPlaces.
---| 'lua_round_float'
---Format arrays on a single line.
---| 'single_line'
---Empty tables encoded as array.
---| 'empty_table_as_array'
---Allow tables to be encoded as arrays iff all keys are positive integers, inserting "nil"s when encoding to satisfy the array type.
---| 'with_hole'
---Maximum table recursion depth.
---| 'max_depth'
---Index for indentation (0 = ' ', 1 = '\t', 2 = '\n', 3 = '\r').
---| 'indent_char'
---Number of indent characters for each indentation level.
---| 'indent_count'
---Alias of "indent_count".
---| 'level'
---The maximum number of decimal places for double output.
---| 'decimal_count'
---["default", "extended"] - Preset parsing configuration. "extended" enables all fields (see rapidjson::ParseFlag).
---| 'decoder_preset'
---| 'sentinel'

---Return the current value of the global encoding/decoding option.
---@param option json_options
function json.getoption(option) end

---Set a global encoding/decoding option.
---@param option json_options
---@param value any
function json.setoption(option, value) end

---@type lightuserdata
json.null = nil
json.sentinel = json.null

---@class json_encode_state
---When set, the created string will contain newlines and indentation. Otherwise it will be one long line.
---@field indent? boolean
---The initial level of indentation used when indent is set. For each level two spaces are added; when absent it defaults to 0.
---@field indent_amt? integer
---An array to specify the ordering of keys in the encoded output. If an object has keys which are not in this array they are written after the sorted keys.
---@field keyorder? table
---A function to call when the encoder cannot encode a given value.
---@field exception? fun(reason: 'reference cycle' | 'custom encoder failed' | 'unsupported type' | 'error encoding number', value: string): string?, string?

---Create a string representing an object.
---@param object any
---@param state? json_encode_state
---@return string
function json.encode(object, state) end

---Decode a JSON encoded string.
---@param string string
---@param position? integer Decode string starting at position or 1 if omitted.
---@param null? any An optional value to return for null values, defaulting to onil.
---@param objectmeta? table A metatable to assign to a decoded object instead of the builtin rapidjson table.
---@param arraymeta? table A metatable to assign to a decoded array instead of the builtin rapidjson table.
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
