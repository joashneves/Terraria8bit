randomize();

if (!variable_global_exists("gravity_force")) global.gravity_force = 0.3;
if (!variable_global_exists("gravity_max")) global.gravity_max = 2;
    
if(!instance_exists(oControllerBlocks) ){
        instance_create_depth(0,0,0,oControllerBlocks)
}
    
gerationBlocks();