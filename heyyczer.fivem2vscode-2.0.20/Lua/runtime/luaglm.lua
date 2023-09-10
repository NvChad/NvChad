---@meta

-- https://github.com/citizenfx/lua/blob/luaglm-dev/cfx/README.md
-- https://github.com/citizenfx/lua/blob/luaglm-dev/cfx/EXTENDED.md
-- investigation into custom types and functions is slowly ongoing

---@class vector2
---@field x number
---@field y number
---@field r number
---@field g number
---@field [1] number
---@field [2] number
---@field xy vector2
---@operator add(vector2|number): vector2
---@operator sub(vector2|number): vector2
---@operator mul(vector2|number): vector2
---@operator div(vector2|number): vector2
---@operator unm: vector2
---@operator len: number
---@field n 2

---@class vector3 : vector2
---@field z number
---@field b number
---@field [3] number
---@field xyz vector3
---@operator add(vector3|number): vector3
---@operator sub(vector3|number): vector3
---@operator mul(vector3|number): vector3
---@operator div(vector3|number): vector3
---@operator unm: vector3
---@field n 3

---@class vector4 : vector3
---@field w number
---@field a number
---@field [4] number
---@field xyzw vector4
---@operator add(vector4|number): vector4
---@operator sub(vector4|number): vector4
---@operator mul(vector4|number): vector4
---@operator div(vector4|number): vector4
---@operator unm: vector4
---@field n 4

---@alias vector vector2 | vector3 | vector4
---@class quat : vector4
---@class matrix<T>: { [number]: T }

---Compute the Jenkins hash of the input string.\
---If 'ignore_casing' is true, the byte data is hashed as is. Otherwise, each\
---ASCII character is tolower'd prior to hashing.
---```
--- joaat("Hello, World!")
--- 1395890823
---```
---@param input any
---@param ignore_casing? boolean
---@return number
function joaat(input, ignore_casing) end

---Creates a new empty table.
---@param narr number a hint for how many elements the table will contain in a sequence.
---@param nrec number a hint for how many other elements the table will have.
---@return table
function table.create(narr, nrec) end

---Restore the table to its initial value (removing its contents) while retaining its internal pointer.
---@param t table
---@return table
function table.wipe(t) end

---An efficient table shallow-copy implementation using memcpy.
--- @generic T
--- @param t T
--- @param t2? table a preallocated destination table
--- @return T
function table.clone(t, t2) end

---Return the type of table being used, either "empty", "array", "hash", or "mixed".\
---Once an array becomes mixed or has its values nil'd it will remain "mixed" or "hash".
---@param t table
---@return 'empty' | 'array' | 'hash' | 'mixed'
function table.type(t) end

---Joins strings together with a delimiter.
---@param delimiter string
---@return string
function string.strjoin(delimiter, ...) end

---Trim characters off the beginning and end of a string.
---@param input string
---@param chars? string
---@return string
function string.strtrim(input, chars) end

---Returns a concatenation of all number/string arguments passed.
---@return string
function string.strconcat(...) end

---Splits a string using a delimiter (optionally: into a specified number of pieces).
---@param delimiter string
---@param string string
---@param pieces? number
---@return ...
function string.strsplit(delimiter, string, pieces) end

--- Converts all arguments to strings.
---@return string ...
function string.tostringall(...) end

utf8.strlenutf8 = utf8.len

---String comparison accounting for UTF-8 chars. Returning a negative integer,\
---zero, or a positive integer if the first string is less than, equal to, or\
---greater than the second string.
---@param stringLH string
---@param stringRH string
function utf8.strcmputf8i(stringLH, stringRH) end

--- Return all arguments with non-number/boolean/string values changed to nil.
---@return number | boolean | string | nil ...
function scrub(...) end

---@param x number
---@return number
---@overload fun(x: number, y: number): vector2
---@overload fun(x: number, y: number, z: number): vector3
---@overload fun(x: number, y: number, z: number, w: number): vector4
---@overload fun(q: quat): vector4
function vector(x) end

---@param x number
---@param y number
---@return vector2
---@overload fun(n: number): vector2
function vector2(x, y) end

---@param x number
---@param y number
---@param z number
---@return vector3
---@overload fun(n: number): vector3
function vector3(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param w number
---@return vector4
---@overload fun(n: number): vector4
---@overload fun(q: quat): vector4
function vector4(x, y, z, w) end

vec = vector
vec2 = vector2
vec3 = vector3
vec4 = vector4

---@generic T: vector
---@param x T
---@param y T
---@param z? T
---@param w? T
---@return matrix<T>
function mat(x, y, z, w) end

---@return matrix<vector2>
function mat2(...) end

mat2x2 = mat2
mat3x2 = mat2
mat4x2 = mat2

---@return matrix<vector3>
function mat3(...) end

mat2x3 = mat3
mat3x3 = mat3
mat4x3 = mat3

---@return matrix<vector4>
function mat4(...) end

mat2x4 = mat4
mat3x4 = mat4
mat4x4 = mat4

---Returns the dot product of x and y.
---@param x number
---@param y number
---@return number
---@overload fun(x: vector2, y: vector2): number
---@overload fun(x: vector3, y: vector3): number
---@overload fun(x: vector4, y: vector4): number
---@overload fun(x: quat, y: quat): number
function dot(x, y) end

---Returns the cross product of x and y.
---@param x vector2
---@param y vector2
---@return number
---@overload fun(x: vector3, y: vector3): vector3
---@overload fun(x: quat, y: quat): quat
---@overload fun(x: vector3 | quat, y: vector3 | quat): vector3
function cross(x, y) end

---Returns the quaternion inverse, or inverse of a squared matrix.
---@generic T: matrix | quat
---@param v T
---@return T
function inverse(v) end

---Returns a vector in the same direction as x but with length of 1.
---@generic T: vector | quat
---@param v T
---@return T
function norm(v) end

---Returns spherical interpolation between two vectors.
---@param x vector
---@param y vector
---@param t number
---@return vector
---@overload fun(x: quat, y: quat, t: number): quat
function slerp(x, y, t) end

---@nodiscard
---@param fn function
---When assigned to a to-be-closed variable it will call the function once the variable falls out of scope.
function defer(fn) end

---@todo
each = pairs

---@param w number
---@param x number
---@param y number
---@param z number
---@return quat
---@overload fun(): quat
---@overload fun(xyz: vector3, target: vector3): quat
---@overload fun(angle: number, axis: vector3): quat
---@overload fun(matrix: matrix): quat
function quat(w, x, y, z) end

---Returns the current time in nanoseconds.
---@return number
function os.nanotime() end

---Returns the current time in microseconds
---@return number
function os.microtime() end
