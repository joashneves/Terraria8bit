function move_player(){
    var up_press = keyboard_check(ord("W"));
    var down_press = keyboard_check(ord("S"));
    var left_press = keyboard_check(ord("A"));
    var right_press = keyboard_check(ord("D"));
    
    hspd = (right_press - left_press) * spd;
    vspd = (down_press - up_press) * spd;
    
    move_and_collide(hspd, vspd, IDBLOCK)
}