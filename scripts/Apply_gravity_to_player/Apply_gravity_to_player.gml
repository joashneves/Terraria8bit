// Apply gravity
function apply_gravity_to_player() {
    vspd += global.gravity_force;

    // Limitar velocidade máxima de queda
    if (vspd > global.gravity_max) {
        vspd = global.gravity_max;
    }

}