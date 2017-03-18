SET(OpenVR_ROOT "${RADIANT_MODULE_ROOT}/openvr")
SET(OpenVR_BUILD_ROOT "${OpenVR_ROOT}/build")
SET(OpenVR_INCLUDE_DIRS "${OpenVR_ROOT}/headers")

MESSAGE("----------- OpenVR include dirs (module): ${OpenVR_INCLUDE_DIRS}")

# this is totally totally wrong
SET(OpenVR_LIBRARIES
    optimized ${OpenVR_BUILD_ROOT}/${RADIANT_BUILD_PLATFORM}/install/lib/openvr_api64.lib
    debug     ${OpenVR_BUILD_ROOT}/${RADIANT_BUILD_PLATFORM}/install/lib/openvr_api64.lib
)

SET(OpenVR_FOUND TRUE)
