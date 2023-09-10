---@meta

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ScInboxGetTotalNumMessages() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param msgIndex number 
function ScInboxGetMessageTypeAtIndex(msgIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param msgIndex number 
function ScInboxGetMessageIsReadAtIndex(msgIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param msgIndex number 
function ScInboxSetMessageAsReadAtIndex(msgIndex) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
---@param context const char 
---@param out number 
function ScInboxMessageGetDataInt(p0, context, out) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
---@param context const char 
---@param out string 
function ScInboxMessageGetDataString(p0, context, out) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
function ScInboxMessageGetRawTypeAtIndex(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param attrHash number | string 
---@param value number 
function ScPresenceAttrSetFloat(attrHash, value) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param attrName const char 
---@param value number 
---@param p2 boolean 
function ScPresenceAttrSetIntEx(attrName, value, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param attrName const char 
---@param value number 
---@param p2 boolean 
function ScPresenceAttrSetFloatEx(attrName, value, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param attrName const char 
---@param value const char 
---@param p2 boolean 
function ScPresenceAttrSetStringEx(attrName, value, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param string const char 
---@param token number 
function ScProfanityCheckString(string, token) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param token number 
function ScProfanityGetCheckIsValid(token) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param token number 
function ScProfanityGetCheckIsPending(token) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param token number 
function ScProfanityGetStringPassed(token) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param token number 
function ScProfanityGetStringStatus(token) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ScCommunityEventIsActive() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
function ScCommunityEventGetEventId() end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
---@param p1 number 
function ScCommunityEventGetExtraDataInt(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
---@param p1 number 
function ScCommunityEventGetExtraDataFloat(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
---@param p1 string 
function ScCommunityEventGetExtraDataString(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 string 
function ScCommunityEventGetDisplayName(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
function ScCommunityEventIsActiveForType(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
function ScCommunityEventGetEventIdForType(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
---@param p1 number 
---@param p2 const char 
function ScCommunityEventGetExtraDataIntForType(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
---@param p1 number 
---@param p2 const char 
function ScCommunityEventGetExtraDataFloatForType(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 const char 
---@param p1 string 
---@param p2 const char 
function ScCommunityEventGetExtraDataStringForType(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 string 
---@param p1 const char 
function ScCommunityEventGetDisplayNameForType(p0, p1) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
function ScCommunityEventIsActiveById(p0) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
---@param p1 const char 
---@param p2 number 
function ScCommunityEventGetExtraDataIntById(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
---@param p1 const char 
---@param p2 number 
function ScCommunityEventGetExtraDataFloatById(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
---@param p1 const char 
---@param p2 string 
function ScCommunityEventGetExtraDataStringById(p0, p1, p2) end

---This native does not have an official description.
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=undefined)
---@param p0 number 
---@param p1 string 
function ScCommunityEventGetDisplayNameById(p0, p1) end

