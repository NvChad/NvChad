---@meta

---[zserge/lua-promises](https://github.com/zserge/lua-promises)
promise = {}

---@class promise
---@field value any
---@field state integer
---@field queue promise[]
---@field success fun(value: any)
---@field failure fun(value: any)
---@field resolve fun(self: promise, value: any): promise
---@field reject fun(self: promise, value: any): promise
---@field next fun(self: promise, resolve: fun(value: any), reject: fun(value: any)): promise

---[Documentation](https://zserge.com/lua-promises/#new).
---Returns a new promise object.
---@param options any | fun(d: promise) | { extend?: fun(d: promise), success?: fun(value: any), failure?: fun(value: any) }
---@return promise
function promise.new(options) end

---[Documentation](https://zserge.com/lua-promises/#all).
---Returns a new promise object that is resolved when all promises are resolved/rejected.
---@param args promise[]
---@return promise
function promise.all(args) end

---[Documentation](https://zserge.com/lua-promises/#map).
---Returns a new promise object that is resolved with the values of sequential application of function `fn` to each element in the list.
---`fn` is expected to return promise object.
---@param list any[]
---@param fn fun(d: promise): promise
---@return promise
function promise.map(list, fn) end

---[Documentation](https://zserge.com/lua-promises/#first).
---Returns a new promise object that is resolved as soon as the first of the promises gets resolved/rejected.
---@param args promise[]
---@return promise
function promise.first(args) end
