---Credit (MIT license): https://github.com/overextended/cfxlua-vscode/blob/91c5fa4666b0e0e37fecba315c7134fdfd213a3e/Lua/runtime/msgpack.lua
---@meta

---[citizenfx/lua-cmsgpack](https://github.com/citizenfx/lua-cmsgpack/tree/grit)
msgpack = {}

---@alias msgpack_options
---| 'float'
---| 'double'
---| 'integer'
---| 'unsigne'
---| 'string_compat'
---| 'string_binary'
---| 'always_as_map'
---| 'without_hole'
---| 'with_hole'
---| 'empty_table_as_array'
---| 'sentinel'
---| 'ignore_invalid'
---| 'small_lua'
---| 'full64bits'
---| 'long_double'

---Return the value of a global encoding/decoding option. See [citizenfx/lua-cmsgpack#configuration](https://github.com/citizenfx/lua-cmsgpack/tree/grit#configuration).
---@param option msgpack_options
function msgpack.getoption(option) end

---Set a global encoding/decoding option. See [citizenfx/lua-cmsgpack#configuration](https://github.com/citizenfx/lua-cmsgpack/tree/grit#configuration).
---@param option msgpack_options
---@param value any
function msgpack.setoption(option, value) end

---@type lightuserdata
msgpack.null = nil
msgpack.sentinel = msgpack.null

---Receives any number of arguments and pack their values.
---See [citizenfx/lua-cmsgpack#packing](https://github.com/citizenfx/lua-cmsgpack/tree/grit#packing).
---@return string
function msgpack.pack(...) end

---Receives any number of arguments and pack their values as an array, handling intermediate nil values.
---See [citizenfx/lua-cmsgpack#packing](https://github.com/citizenfx/lua-cmsgpack/tree/grit#packing).
---@return string
function msgpack.pack_args(...) end

---Create, and place onto the Lua stack, a new userdata that can be used to pack Lua values.
---See [citizenfx/lua-cmsgpack#packing](https://github.com/citizenfx/lua-cmsgpack/tree/grit#packing).
---@return userdata
function msgpack.new() end

---See [citizenfx/lua-cmsgpack#unpacking](https://github.com/citizenfx/lua-cmsgpack/tree/grit#unpacking).
---@param encoded_string string
---@param offset number? Offset within the encoded string to start decoding.
---@param limit number? Number of Lua objects to decode, 0 to decode the entire string.
---@param end_position number? Length of the encoded substring (starting at offset).
---@return any
function msgpack.unpack(encoded_string, offset, limit, end_position) end

---Unpack all elements, up to a potential limit, from a msgpack encoded string.
---Returning (1) the position in the string where the decoding ended, 0 for
---completion; and (2) and all decoded objects (up to limit).
---@param encoded_string string
---@param position number? Offset within the encoded string to start decoding.
---@param limit number? Number of Lua objects to decode, 0 to decode the entire string.
---@param end_position number? Length of the encoded substring (starting at offset).
---@return number position
---@return any element
function msgpack.next(encoded_string, position, limit, end_position) end

---Register an extension-type with a pack and unpack methods, and a unique identifier.
---See [citizenfx/lua-cmsgpack#extensions](https://github.com/citizenfx/lua-cmsgpack/tree/grit#extensions).
---@param encoder table
function msgpack.extend(encoder) end

---Get the extension-type definition for encoding/decoding tables/userdata definitions.
---See [citizenfx/lua-cmsgpack#extensions](https://github.com/citizenfx/lua-cmsgpack/tree/grit#extensions).
---@return table
function msgpack.extend_get(ext_id) end

---Explicitly remove the extension definition for all type identifiers provided.
---See [citizenfx/lua-cmsgpack#extensions](https://github.com/citizenfx/lua-cmsgpack/tree/grit#extensions).
---@vararg string
function msgpack.extend_clear(...) end

---Associate the name of a Lua type to an encoder table.
---@param type_string string
---@param ext_id number?
function msgpack.settype(type_string, ext_id) end

---Get the encoder table associated to the name of a Lua type.
---@param type_string string
---@return table
function msgpack.gettype(type_string) end

---Setoption that only processes: "string", "string_compat", "string_binary".
---@param string_value string
function msgpack.set_string(string_value) end

---Setoption that only processes: "without_hole", "with_hole", "always_as_map".
---@param array_value string
function msgpack.set_array(array_value) end

---Setoption that only processes: "signed", "unsigned".
---@param integer_value string
function msgpack.set_integer(integer_value) end

---Setoption that only processes: "float", "double".
---@param number_value string
function msgpack.set_number(number_value) end
