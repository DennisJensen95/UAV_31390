function rotated_vec = quaternion_rpy(quat_rot, vec)
    quat_rot
    quat_vec = [0 vec]
    rot = quat_rot.*quat_vec.*quat_rot.^(-1)
end