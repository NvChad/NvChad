---@meta

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xDACE671663F2F5DB)
---@param entity number 
---@param propertyName string 
---@return boolean retval 
function DecorGetBool(entity, propertyName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0xA06C969B02A97298)
---@param entity number 
---@param propertyName string 
---@return number retval 
function DecorGetInt(entity, propertyName) end

---```
---Returns whether or not the specified property is set for the entity.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x05661B80A8C9165F)
---@param entity number 
---@param propertyName string 
---@return boolean retval 
function DecorExistOn(entity, propertyName) end

---Decor types:
---
---```
---enum eDecorType
---{
---    DECOR_TYPE_FLOAT = 1,
---    DECOR_TYPE_BOOL = 2,
---    DECOR_TYPE_INT = 3,
---    DECOR_TYPE_UNK = 4,
---    DECOR_TYPE_TIME = 5
---};
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x9FD90732F56403CE)
---@param propertyName string 
---@param type number 
function DecorRegister(propertyName, type) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6524A2F114706F43)
---@param entity number 
---@param propertyName string 
---@return number retval 
function DecorGetFloat(entity, propertyName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x6524A2F114706F43)
---@param entity number 
---@param propertyName string 
---@return number retval 
function DecorGetFloat(entity, propertyName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x00EE9F297C738720)
---@param entity number 
---@param propertyName string 
---@return boolean retval 
function DecorRemove(entity, propertyName) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F14F9F870D6FBC8)
---@param propertyName string 
---@param type number See [`DECOR_REGISTER`](#\_0x9FD90732F56403CE).
---@return boolean retval 
function DecorIsRegisteredAsType(propertyName, type) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x211AB1DD8D0F363A)
---@param entity number 
---@param propertyName string 
---@param value number 
---@return boolean retval 
function DecorSetFloat(entity, propertyName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x211AB1DD8D0F363A)
---@param entity number 
---@param propertyName string 
---@param value number 
---@return boolean retval 
function DecorSetFloat(entity, propertyName, value) end

---```
---Called after all decorator type initializations.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9D14EEA259F9248)
function DecorRegisterLock() end

---```
---This function sets metadata of type bool to specified entity.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B1E8E2ED1335B71)
---@param entity number 
---@param propertyName string 
---@param value boolean 
---@return boolean retval 
function DecorSetBool(entity, propertyName, value) end

---
---[Native Documentation](https://docs.fivem.net/natives/?_0x95AED7B8E39ECAA4)
---@param entity number 
---@param propertyName string 
---@param timestamp number 
---@return boolean retval 
function DecorSetTime(entity, propertyName, timestamp) end

---```
---Sets property to int.  
---```
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CE3AA5E1CA19E10)
---@param entity number 
---@param propertyName string 
---@param value number 
---@return boolean retval 
function DecorSetInt(entity, propertyName, value) end

