local Native = require('lib.stdlib.native')

---@class CameraField
local CameraField = {
    TargetDistance = Native.ConvertCameraField(0), --CAMERA_FIELD_TARGET_DISTANCE
    Farz = Native.ConvertCameraField(1), --CAMERA_FIELD_FARZ
    AngleOfAttack = Native.ConvertCameraField(2), --CAMERA_FIELD_ANGLE_OF_ATTACK
    FieldOfView = Native.ConvertCameraField(3), --CAMERA_FIELD_FIELD_OF_VIEW
    Roll = Native.ConvertCameraField(4), --CAMERA_FIELD_ROLL
    Rotation = Native.ConvertCameraField(5), --CAMERA_FIELD_ROTATION
    Zoffset = Native.ConvertCameraField(6), --CAMERA_FIELD_ZOFFSET
    Nearz = Native.ConvertCameraField(7), --CAMERA_FIELD_NEARZ
    LocalPitch = Native.ConvertCameraField(8), --CAMERA_FIELD_LOCAL_PITCH
    LocalYaw = Native.ConvertCameraField(9), --CAMERA_FIELD_LOCAL_YAW
    LocalRoll = Native.ConvertCameraField(10), --CAMERA_FIELD_LOCAL_ROLL
}
return CameraField
