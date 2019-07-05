local Native = require('lib.stdlib.native')

---@class Frame : Handle
local Frame = class('Frame', require('lib.stdlib.oop.handle'))

---<static> getOrigin
---@param frameType OriginFrameType
---@param index integer
---@return Frame
function Frame:getOrigin(frameType, index)
--@debug@
    checkclass(self, Frame, 'getOrigin', 'self')
    checkuserdata(frameType, 'originframetype', 'getOrigin', 1)
    checktype(index, 'integer', 'getOrigin', 2)
--@end-debug@
    return Frame:fromUd(Native.BlzGetOriginFrame(frameType, index))
end

---<static> create
---@param name string
---@param owner Frame
---@param priority integer
---@param createContext integer
---@return Frame
function Frame:create(name, owner, priority, createContext)
--@debug@
    checkclass(self, Frame, 'create', 'self')
    checktype(name, 'string', 'create', 1)
    checkobject(owner, require('lib.stdlib.oop.frame'), 'create', 2)
    checktype(priority, 'integer', 'create', 3)
    checktype(createContext, 'integer', 'create', 4)
--@end-debug@
    return Frame:fromUd(Native.BlzCreateFrame(name, getUd(owner), priority, createContext))
end

---<static> createSimple
---@param name string
---@param owner Frame
---@param createContext integer
---@return Frame
function Frame:createSimple(name, owner, createContext)
--@debug@
    checkclass(self, Frame, 'createSimple', 'self')
    checktype(name, 'string', 'createSimple', 1)
    checkobject(owner, require('lib.stdlib.oop.frame'), 'createSimple', 2)
    checktype(createContext, 'integer', 'createSimple', 3)
--@end-debug@
    return Frame:fromUd(Native.BlzCreateSimpleFrame(name, getUd(owner), createContext))
end

---<static> createByType
---@param typeName string
---@param name string
---@param owner Frame
---@param inherits string
---@param createContext integer
---@return Frame
function Frame:createByType(typeName, name, owner, inherits, createContext)
--@debug@
    checkclass(self, Frame, 'createByType', 'self')
    checktype(typeName, 'string', 'createByType', 1)
    checktype(name, 'string', 'createByType', 2)
    checkobject(owner, require('lib.stdlib.oop.frame'), 'createByType', 3)
    checktype(inherits, 'string', 'createByType', 4)
    checktype(createContext, 'integer', 'createByType', 5)
--@end-debug@
    return Frame:fromUd(Native.BlzCreateFrameByType(typeName, name, getUd(owner), inherits, createContext))
end

---<static> getByName
---@param name string
---@param createContext integer
---@return Frame
function Frame:getByName(name, createContext)
--@debug@
    checkclass(self, Frame, 'getByName', 'self')
    checktype(name, 'string', 'getByName', 1)
    checktype(createContext, 'integer', 'getByName', 2)
--@end-debug@
    return Frame:fromUd(Native.BlzGetFrameByName(name, createContext))
end

---destroy
---@return void
function Frame:destroy()
--@debug@
    checkobject(self, Frame, 'destroy', 'self')
--@end-debug@
    return Native.BlzDestroyFrame(getUd(self))
end

---setPoint
---@overload fun(point: FramePointType, relative: Frame, relativePoint: FramePointType, vec: Vector2): void
---@param point FramePointType
---@param relative Frame
---@param relativePoint FramePointType
---@param x float
---@param y float
---@return void
function Frame:setPoint(point, relative, relativePoint, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Frame, 'setPoint', 'self')
    checkuserdata(point, 'framepointtype', 'setPoint', 1)
    checkobject(relative, require('lib.stdlib.oop.frame'), 'setPoint', 2)
    checkuserdata(relativePoint, 'framepointtype', 'setPoint', 3)
    checktype(x, 'float', 'setPoint', 4)
    checktype(y, 'float', 'setPoint', 5)
--@end-debug@
    return Native.BlzFrameSetPoint(getUd(self), point, getUd(relative), relativePoint, x, y)
end

---setAbsPoint
---@overload fun(point: FramePointType, vec: Vector2): void
---@param point FramePointType
---@param x float
---@param y float
---@return void
function Frame:setAbsPoint(point, x, y)
    if type(x) == 'table' then
        x, y = table.unpack(x)
    end
--@debug@
    checkobject(self, Frame, 'setAbsPoint', 'self')
    checkuserdata(point, 'framepointtype', 'setAbsPoint', 1)
    checktype(x, 'float', 'setAbsPoint', 2)
    checktype(y, 'float', 'setAbsPoint', 3)
--@end-debug@
    return Native.BlzFrameSetAbsPoint(getUd(self), point, x, y)
end

---clearAllPoints
---@return void
function Frame:clearAllPoints()
--@debug@
    checkobject(self, Frame, 'clearAllPoints', 'self')
--@end-debug@
    return Native.BlzFrameClearAllPoints(getUd(self))
end

---setAllPoints
---@param relative Frame
---@return void
function Frame:setAllPoints(relative)
--@debug@
    checkobject(self, Frame, 'setAllPoints', 'self')
    checkobject(relative, require('lib.stdlib.oop.frame'), 'setAllPoints', 1)
--@end-debug@
    return Native.BlzFrameSetAllPoints(getUd(self), getUd(relative))
end

---setVisible
---@param visible boolean
---@return void
function Frame:setVisible(visible)
--@debug@
    checkobject(self, Frame, 'setVisible', 'self')
    checktype(visible, 'boolean', 'setVisible', 1)
--@end-debug@
    return Native.BlzFrameSetVisible(getUd(self), visible)
end

---isVisible
---@return boolean
function Frame:isVisible()
--@debug@
    checkobject(self, Frame, 'isVisible', 'self')
--@end-debug@
    return Native.BlzFrameIsVisible(getUd(self))
end

---getName
---@return string
function Frame:getName()
--@debug@
    checkobject(self, Frame, 'getName', 'self')
--@end-debug@
    return Native.BlzFrameGetName(getUd(self))
end

---click
---@return void
function Frame:click()
--@debug@
    checkobject(self, Frame, 'click', 'self')
--@end-debug@
    return Native.BlzFrameClick(getUd(self))
end

---setText
---@param text string
---@return void
function Frame:setText(text)
--@debug@
    checkobject(self, Frame, 'setText', 'self')
    checktype(text, 'string', 'setText', 1)
--@end-debug@
    return Native.BlzFrameSetText(getUd(self), text)
end

---getText
---@return string
function Frame:getText()
--@debug@
    checkobject(self, Frame, 'getText', 'self')
--@end-debug@
    return Native.BlzFrameGetText(getUd(self))
end

---addText
---@param text string
---@return void
function Frame:addText(text)
--@debug@
    checkobject(self, Frame, 'addText', 'self')
    checktype(text, 'string', 'addText', 1)
--@end-debug@
    return Native.BlzFrameAddText(getUd(self), text)
end

---setTextSizeLimit
---@param size integer
---@return void
function Frame:setTextSizeLimit(size)
--@debug@
    checkobject(self, Frame, 'setTextSizeLimit', 'self')
    checktype(size, 'integer', 'setTextSizeLimit', 1)
--@end-debug@
    return Native.BlzFrameSetTextSizeLimit(getUd(self), size)
end

---getTextSizeLimit
---@return integer
function Frame:getTextSizeLimit()
--@debug@
    checkobject(self, Frame, 'getTextSizeLimit', 'self')
--@end-debug@
    return Native.BlzFrameGetTextSizeLimit(getUd(self))
end

---setTextColor
---@param color integer
---@return void
function Frame:setTextColor(color)
--@debug@
    checkobject(self, Frame, 'setTextColor', 'self')
    checktype(color, 'integer', 'setTextColor', 1)
--@end-debug@
    return Native.BlzFrameSetTextColor(getUd(self), color)
end

---setModel
---@param modelFile string
---@param cameraIndex integer
---@return void
function Frame:setModel(modelFile, cameraIndex)
--@debug@
    checkobject(self, Frame, 'setModel', 'self')
    checktype(modelFile, 'string', 'setModel', 1)
    checktype(cameraIndex, 'integer', 'setModel', 2)
--@end-debug@
    return Native.BlzFrameSetModel(getUd(self), modelFile, cameraIndex)
end

---setEnable
---@param enabled boolean
---@return void
function Frame:setEnable(enabled)
--@debug@
    checkobject(self, Frame, 'setEnable', 'self')
    checktype(enabled, 'boolean', 'setEnable', 1)
--@end-debug@
    return Native.BlzFrameSetEnable(getUd(self), enabled)
end

---getEnable
---@return boolean
function Frame:getEnable()
--@debug@
    checkobject(self, Frame, 'getEnable', 'self')
--@end-debug@
    return Native.BlzFrameGetEnable(getUd(self))
end

---setAlpha
---@param alpha integer
---@return void
function Frame:setAlpha(alpha)
--@debug@
    checkobject(self, Frame, 'setAlpha', 'self')
    checktype(alpha, 'integer', 'setAlpha', 1)
--@end-debug@
    return Native.BlzFrameSetAlpha(getUd(self), alpha)
end

---getAlpha
---@return integer
function Frame:getAlpha()
--@debug@
    checkobject(self, Frame, 'getAlpha', 'self')
--@end-debug@
    return Native.BlzFrameGetAlpha(getUd(self))
end

---setSpriteAnimate
---@param primaryProp integer
---@param flags integer
---@return void
function Frame:setSpriteAnimate(primaryProp, flags)
--@debug@
    checkobject(self, Frame, 'setSpriteAnimate', 'self')
    checktype(primaryProp, 'integer', 'setSpriteAnimate', 1)
    checktype(flags, 'integer', 'setSpriteAnimate', 2)
--@end-debug@
    return Native.BlzFrameSetSpriteAnimate(getUd(self), primaryProp, flags)
end

---setTexture
---@param texFile string
---@param flag integer
---@param blend boolean
---@return void
function Frame:setTexture(texFile, flag, blend)
--@debug@
    checkobject(self, Frame, 'setTexture', 'self')
    checktype(texFile, 'string', 'setTexture', 1)
    checktype(flag, 'integer', 'setTexture', 2)
    checktype(blend, 'boolean', 'setTexture', 3)
--@end-debug@
    return Native.BlzFrameSetTexture(getUd(self), texFile, flag, blend)
end

---setScale
---@param scale float
---@return void
function Frame:setScale(scale)
--@debug@
    checkobject(self, Frame, 'setScale', 'self')
    checktype(scale, 'float', 'setScale', 1)
--@end-debug@
    return Native.BlzFrameSetScale(getUd(self), scale)
end

---setTooltip
---@param tooltip Frame
---@return void
function Frame:setTooltip(tooltip)
--@debug@
    checkobject(self, Frame, 'setTooltip', 'self')
    checkobject(tooltip, require('lib.stdlib.oop.frame'), 'setTooltip', 1)
--@end-debug@
    return Native.BlzFrameSetTooltip(getUd(self), getUd(tooltip))
end

---cageMouse
---@param enable boolean
---@return void
function Frame:cageMouse(enable)
--@debug@
    checkobject(self, Frame, 'cageMouse', 'self')
    checktype(enable, 'boolean', 'cageMouse', 1)
--@end-debug@
    return Native.BlzFrameCageMouse(getUd(self), enable)
end

---setValue
---@param value float
---@return void
function Frame:setValue(value)
--@debug@
    checkobject(self, Frame, 'setValue', 'self')
    checktype(value, 'float', 'setValue', 1)
--@end-debug@
    return Native.BlzFrameSetValue(getUd(self), value)
end

---getValue
---@return float
function Frame:getValue()
--@debug@
    checkobject(self, Frame, 'getValue', 'self')
--@end-debug@
    return Native.BlzFrameGetValue(getUd(self))
end

---setMinMaxValue
---@param minValue float
---@param maxValue float
---@return void
function Frame:setMinMaxValue(minValue, maxValue)
--@debug@
    checkobject(self, Frame, 'setMinMaxValue', 'self')
    checktype(minValue, 'float', 'setMinMaxValue', 1)
    checktype(maxValue, 'float', 'setMinMaxValue', 2)
--@end-debug@
    return Native.BlzFrameSetMinMaxValue(getUd(self), minValue, maxValue)
end

---setStepSize
---@param stepSize float
---@return void
function Frame:setStepSize(stepSize)
--@debug@
    checkobject(self, Frame, 'setStepSize', 'self')
    checktype(stepSize, 'float', 'setStepSize', 1)
--@end-debug@
    return Native.BlzFrameSetStepSize(getUd(self), stepSize)
end

---setSize
---@param width float
---@param height float
---@return void
function Frame:setSize(width, height)
--@debug@
    checkobject(self, Frame, 'setSize', 'self')
    checktype(width, 'float', 'setSize', 1)
    checktype(height, 'float', 'setSize', 2)
--@end-debug@
    return Native.BlzFrameSetSize(getUd(self), width, height)
end

---setVertexColor
---@param color integer
---@return void
function Frame:setVertexColor(color)
--@debug@
    checkobject(self, Frame, 'setVertexColor', 'self')
    checktype(color, 'integer', 'setVertexColor', 1)
--@end-debug@
    return Native.BlzFrameSetVertexColor(getUd(self), color)
end

---setLevel
---@param level integer
---@return void
function Frame:setLevel(level)
--@debug@
    checkobject(self, Frame, 'setLevel', 'self')
    checktype(level, 'integer', 'setLevel', 1)
--@end-debug@
    return Native.BlzFrameSetLevel(getUd(self), level)
end

---setParent
---@param parent Frame
---@return void
function Frame:setParent(parent)
--@debug@
    checkobject(self, Frame, 'setParent', 'self')
    checkobject(parent, require('lib.stdlib.oop.frame'), 'setParent', 1)
--@end-debug@
    return Native.BlzFrameSetParent(getUd(self), getUd(parent))
end

---getParent
---@return Frame
function Frame:getParent()
--@debug@
    checkobject(self, Frame, 'getParent', 'self')
--@end-debug@
    return Frame:fromUd(Native.BlzFrameGetParent(getUd(self)))
end

---getHeight
---@return float
function Frame:getHeight()
--@debug@
    checkobject(self, Frame, 'getHeight', 'self')
--@end-debug@
    return Native.BlzFrameGetHeight(getUd(self))
end

---getWidth
---@return float
function Frame:getWidth()
--@debug@
    checkobject(self, Frame, 'getWidth', 'self')
--@end-debug@
    return Native.BlzFrameGetWidth(getUd(self))
end

---setFont
---@param fileName string
---@param height float
---@param flags integer
---@return void
function Frame:setFont(fileName, height, flags)
--@debug@
    checkobject(self, Frame, 'setFont', 'self')
    checktype(fileName, 'string', 'setFont', 1)
    checktype(height, 'float', 'setFont', 2)
    checktype(flags, 'integer', 'setFont', 3)
--@end-debug@
    return Native.BlzFrameSetFont(getUd(self), fileName, height, flags)
end

---setTextAlignment
---@param vert TextAlignType
---@param horz TextAlignType
---@return void
function Frame:setTextAlignment(vert, horz)
--@debug@
    checkobject(self, Frame, 'setTextAlignment', 'self')
    checkuserdata(vert, 'textaligntype', 'setTextAlignment', 1)
    checkuserdata(horz, 'textaligntype', 'setTextAlignment', 2)
--@end-debug@
    return Native.BlzFrameSetTextAlignment(getUd(self), vert, horz)
end

return Frame
