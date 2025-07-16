function move_player(){
    var up_press = keyboard_check(ord("W"));
    var down_press = keyboard_check(ord("S"));
    var left_press = keyboard_check(ord("A"));
    var right_press = keyboard_check(ord("D"));
    
    hspd = (right_press - left_press) * spd;

    
    move_and_collide(hspd, vspd, IDBLOCK)
}

function jump_player(){
    var _jump_press = keyboard_check(vk_space);
    
    var _no_chao = place_meeting(x,y + 1, IDBLOCK);
    
    if(!_no_chao){
        apply_gravity_to_player();
    }else{
        vspd = 0;
        if (_jump_press){
        vspd = -vspd_max; 
            // Limite para não subir demais

        }
        //vspd = 0
    }
    
    move_and_collide(0, vspd, IDBLOCK, 12)
}