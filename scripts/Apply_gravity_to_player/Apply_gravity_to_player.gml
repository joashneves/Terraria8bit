if (!variable_global_exists("gravity_force")) global.gravity_force = 0.3;
if (!variable_global_exists("gravity_max")) global.gravity_max = 4;

// Apply gravity
function apply_gravity_to_player() {
    vspd += global.gravity_force;

    // Limitar velocidade máxima de queda
    if (vspd > global.gravity_max) {
        vspd = global.gravity_max;
    }

    // Tentar mover verticalmente com colisão
    move_and_collide(0, vspd, IDBLOCK);
}