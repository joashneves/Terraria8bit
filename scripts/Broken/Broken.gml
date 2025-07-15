function broken_block(){
        // Detectar se o mouse está em cima
        hovered = position_meeting(mouse_x, mouse_y, id);
        
        // Se estiver em cima e clicar
        if (hovered && mouse_check_button_pressed(mb_left)) {
            life_block -= 100;
            
            if (life_block <= 0) {
                instance_destroy(); // destruir o bloco
            }
    }
}