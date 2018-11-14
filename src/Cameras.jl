module Cameras

export Camera,
    camera_info,
    isopen,
    isrunning,
    open!,
    close!,
    start!,
    stop!

export CameraInfo,
    vendor_name,
    model_name,
    serial_number

abstract type Camera end

isopen(camera::Camera) = error("No implementation for $(typeof(camera))")
open!(camera::Camera) = error("No implementation for $(typeof(camera))")
close!(camera::Camera) = error("No implementation for $(typeof(camera))")

camera_info(camera::Camera) = error("No implementation for $(typeof(camera))")

isrunning(camera::Camera) = error("No implementation for $(typeof(camera))")
start!(camera::Camera) = error("No implementation for $(typeof(camera))")
stop!(camera::Camera) = error("No implementation for $(typeof(camera))")

abstract type CameraInfo end

vendor_name(info::CameraInfo) = error("No implementation for $(typeof(info))")
model_name(info::CameraInfo) = error("No implementation for $(typeof(info))")
serial_number(info::CameraInfo) = error("No implementation for $(typeof(info))")

end # module
