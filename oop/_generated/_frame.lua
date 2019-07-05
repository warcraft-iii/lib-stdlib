local Native = require('lib.stdlib.native')

---@class Frame : Handle
local Frame = class('Frame', require('lib.stdlib.oop.handle'))

---<static> getOrigin
---@param frameType OriginFrameType
---@param index integer
---@return Frame
function Frame:getOrigin(frameType, index)
    return Frame:fromUd(Native.BlzGetOriginFrame(frameType, index))
end

---<static> create
---@param name string
---@param owner Frame
---@param priority integer
---@param createContext integer
---@return Frame
function Frame:create(name, owner, priority, createContext)
    return Frame:fromUd(Native.BlzCreateFrame(name, getUd(owner), priority, createContext))
end

---<static> createSimple
---@param name string
---@param owner Frame
---@param createContext integer
---@return Frame
function Frame:createSimple(name, owner, createContext)
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
    return Frame:fromUd(Native.BlzCreateFrameByType(typeName, name, getUd(owner), inherits, createContext))
end

---<static> getByName
---@param name string
---@param createContext integer
---@return Frame
function Frame:getByName(name, createContext)
    return Frame:fromUd(Native.BlzGetFrameByName(name, createContext))
end

---destroy
---@return void
function Frame:destroy()
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
    return Native.BlzFrameSetAbsPoint(getUd(self), point, x, y)
end

---clearAllPoints
---@return void
function Frame:clearAllPoints()
    return Native.BlzFrameClearAllPoints(getUd(self))
end

---setAllPoints
---@param relative Frame
---@return void
function Frame:setAllPoints(relative)
    return Native.BlzFrameSetAllPoints(getUd(self), getUd(relative))
end

---setVisible
---@param visible boolean
---@return void
function Frame:setVisible(visible)
    return Native.BlzFrameSetVisible(getUd(self), visible)
end

---isVisible
---@return boolean
function Frame:isVisible()
    return Native.BlzFrameIsVisible(getUd(self))
end

---getName
---@return string
function Frame:getName()
    return Native.BlzFrameGetName(getUd(self))
end

---click
---@return void
function Frame:click()
    return Native.BlzFrameClick(getUd(self))
end

---setText
---@param text string
---@return void
function Frame:setText(text)
    return Native.BlzFrameSetText(getUd(self), text)
end

---getText
---@return string
function Frame:getText()
    return Native.BlzFrameGetText(getUd(self))
end

---addText
---@param text string
---@return void
function Frame:addText(text)
    return Native.BlzFrameAddText(getUd(self), text)
end

---setTextSizeLimit
---@param size integer
---@return void
function Frame:setTextSizeLimit(size)
    return Native.BlzFrameSetTextSizeLimit(getUd(self), size)
end

---getTextSizeLimit
---@return integer
function Frame:getTextSizeLimit()
    return Native.BlzFrameGetTextSizeLimit(getUd(self))
end

---setTextColor
---@param color integer
---@return void
function Frame:setTextColor(color)
    return Native.BlzFrameSetTextColor(getUd(self), color)
end

---setModel
---@param modelFile string
---@param cameraIndex integer
---@return void
function Frame:setModel(modelFile, cameraIndex)
    return Native.BlzFrameSetModel(getUd(self), modelFile, cameraIndex)
end

---setEnable
---@param enabled boolean
---@return void
function Frame:setEnable(enabled)
    return Native.BlzFrameSetEnable(getUd(self), enabled)
end

---getEnable
---@return boolean
function Frame:getEnable()
    return Native.BlzFrameGetEnable(getUd(self))
end

---setAlpha
---@param alpha integer
---@return void
function Frame:setAlpha(alpha)
    return Native.BlzFrameSetAlpha(getUd(self), alpha)
end

---getAlpha
---@return integer
function Frame:getAlpha()
    return Native.BlzFrameGetAlpha(getUd(self))
end

---setSpriteAnimate
---@param primaryProp integer
---@param flags integer
---@return void
function Frame:setSpriteAnimate(primaryProp, flags)
    return Native.BlzFrameSetSpriteAnimate(getUd(self), primaryProp, flags)
end

---setTexture
---@param texFile string
---@param flag integer
---@param blend boolean
---@return void
function Frame:setTexture(texFile, flag, blend)
    return Native.BlzFrameSetTexture(getUd(self), texFile, flag, blend)
end

---setScale
---@param scale float
---@return void
function Frame:setScale(scale)
    return Native.BlzFrameSetScale(getUd(self), scale)
end

---setTooltip
---@param tooltip Frame
---@return void
function Frame:setTooltip(tooltip)
    return Native.BlzFrameSetTooltip(getUd(self), getUd(tooltip))
end

---cageMouse
---@param enable boolean
---@return void
function Frame:cageMouse(enable)
    return Native.BlzFrameCageMouse(getUd(self), enable)
end

---setValue
---@param value float
---@return void
function Frame:setValue(value)
    return Native.BlzFrameSetValue(getUd(self), value)
end

---getValue
---@return float
function Frame:getValue()
    return Native.BlzFrameGetValue(getUd(self))
end

---setMinMaxValue
---@param minValue float
---@param maxValue float
---@return void
function Frame:setMinMaxValue(minValue, maxValue)
    return Native.BlzFrameSetMinMaxValue(getUd(self), minValue, maxValue)
end

---setStepSize
---@param stepSize float
---@return void
function Frame:setStepSize(stepSize)
    return Native.BlzFrameSetStepSize(getUd(self), stepSize)
end

---setSize
---@param width float
---@param height float
---@return void
function Frame:setSize(width, height)
    return Native.BlzFrameSetSize(getUd(self), width, height)
end

---setVertexColor
---@param color integer
---@return void
function Frame:setVertexColor(color)
    return Native.BlzFrameSetVertexColor(getUd(self), color)
end

---setLevel
---@param level integer
---@return void
function Frame:setLevel(level)
    return Native.BlzFrameSetLevel(getUd(self), level)
end

---setParent
---@param parent Frame
---@return void
function Frame:setParent(parent)
    return Native.BlzFrameSetParent(getUd(self), getUd(parent))
end

---getParent
---@return Frame
function Frame:getParent()
    return Frame:fromUd(Native.BlzFrameGetParent(getUd(self)))
end

---getHeight
---@return float
function Frame:getHeight()
    return Native.BlzFrameGetHeight(getUd(self))
end

---getWidth
---@return float
function Frame:getWidth()
    return Native.BlzFrameGetWidth(getUd(self))
end

---setFont
---@param fileName string
---@param height float
---@param flags integer
---@return void
function Frame:setFont(fileName, height, flags)
    return Native.BlzFrameSetFont(getUd(self), fileName, height, flags)
end

---setTextAlignment
---@param vert TextAlignType
---@param horz TextAlignType
---@return void
function Frame:setTextAlignment(vert, horz)
    return Native.BlzFrameSetTextAlignment(getUd(self), vert, horz)
end

return Frame
