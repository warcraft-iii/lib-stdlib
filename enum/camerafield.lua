local Native = require('lib.stdlib.native')
local converter = require('lib.stdlib.enum.converter')

---@class CameraField
local CameraField = {
    TargetDistance = 0, --CAMERA_FIELD_TARGET_DISTANCE
    Farz = 1, --CAMERA_FIELD_FARZ
    AngleOfAttack = 2, --CAMERA_FIELD_ANGLE_OF_ATTACK
    FieldOfView = 3, --CAMERA_FIELD_FIELD_OF_VIEW
    Roll = 4, --CAMERA_FIELD_ROLL
    Rotation = 5, --CAMERA_FIELD_ROTATION
    Zoffset = 6, --CAMERA_FIELD_ZOFFSET
    Nearz = 7, --CAMERA_FIELD_NEARZ
    LocalPitch = 8, --CAMERA_FIELD_LOCAL_PITCH
    LocalYaw = 9, --CAMERA_FIELD_LOCAL_YAW
    LocalRoll = 10, --CAMERA_FIELD_LOCAL_ROLL
}

CameraField = converter(Native.ConvertCameraField, CameraField)
return CameraField
