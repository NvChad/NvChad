---@meta

---[lua-cmsgpack](https://github.com/citizenfx/lua-cmsgpack/tree/grit)
msgpack = {}

---Refer to [lua-cmsgpack#configuration](https://github.com/citizenfx/lua-cmsgpack/tree/grit#configuration).
---@param option string
function msgpack.getoption(option) end

---Set a global encoding/decoding option; see msgpack.getoption.
---@param option string
---@param value any
function msgpack.setoption(option, value) end

---@type lightuserdata
msgpack.null = nil
msgpack.sentinel = msgpack.null

---Receives any number of arguments and pack their values.
---Refer to [lua-cmsgpack#packing](https://github.com/citizenfx/lua-cmsgpack/tree/grit#packing).
---@return string
function msgpack.pack(...) end

---Receives any number of arguments and pack their values as an array, handling intermediate nil values.
---Refer to [lua-cmsgpack#packing](https://github.com/citizenfx/lua-cmsgpack/tree/grit#packing).
---@return string
function msgpack.pack_args(...) end

---Refer to [lua-cmsgpack#packing](https://github.com/citizenfx/lua-cmsgpack/tree/grit#packing).
---@return userdata
function msgpack.new() end

---Refer to [lua-cmsgpack#unpacking](https://github.com/citizenfx/lua-cmsgpack/tree/grit#unpacking).
---@param string string
---@param offset number?
---@param limit number?
---@param endposition number?
---@return any
function msgpack.unpack(string, offset, limit, endposition) end

---Register an extension-type with a pack and unpack methods, and a unique identifier.
---Refer to [lua-cmsgpack#extensions](https://github.com/citizenfx/lua-cmsgpack/tree/grit#extensions).
---@param encoder table
function msgpack.extend(encoder) end

---Get the extension-type definition for encoding/decoding tables/userdata definitions.
---Refer to [lua-cmsgpack#extensions](https://github.com/citizenfx/lua-cmsgpack/tree/grit#extensions).
---@return table
function msgpack.extend_get(ext_id) end

---Explicitly remove the extension definition for all type identifiers provided.
---Refer to [lua-cmsgpack#extensions](https://github.com/citizenfx/lua-cmsgpack/tree/grit#extensions).
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
