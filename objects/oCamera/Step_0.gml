// Step
if (!variable_instance_exists(id, "width_") || !variable_instance_exists(id, "height_")) {
    width_  = camera_get_view_width(view_camera[0]);
    height_ = camera_get_view_height(view_camera[0]);
}

if (!instance_exists(target_)) exit;

x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y - height_/8, 0.1);

camera_set_view_pos(view_camera[0], x - width_/2, y - height_/2);
