function broken_block(){
// Posição do mouse no mundo
var mx = mouse_x;
var my = mouse_y;

// Checar se tem um bloco na posição do mouse
var bloco = instance_position(mx, my, IDBLOCK);

if (bloco != noone) {
// Destacar o bloco com flag
    bloco.hovered = true;
    // Clicar para quebrar
    
    if (mouse_check_button(mb_left)) {
        bloco.life_block -= 3;
        if (bloco.life_block <= 0) {
            instance_destroy(bloco);
        }
    }
}
}

function select_block(){
    var mx = mouse_x;
    var my = mouse_y;
    
    var bloco = instance_position(mx, my, IDBLOCK);
    
    if (bloco != noone) {
        draw_set_alpha(0.5);
        draw_set_color(c_red);
        draw_rectangle(bloco.x, bloco.y, bloco.x + bloco.sprite_width, bloco.y + bloco.sprite_height, false);
        draw_set_alpha(1);
    }
}