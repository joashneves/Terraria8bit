function gerationBlocks(){
    var block_size = 4;
    var world_width = room_width / block_size;
    var world_height = room_height / block_size;

    var world = array_create(world_width, array_create(world_height, 0))
    
    // Armazenar
    var surface_height = 50;
    var variation = 5;
    
    for (var _xx = 0; _xx < world_width; _xx++){
        var column_height = surface_height + irandom_range(-variation, variation);
        for(var _yy = 0; _yy < world_height; _yy++){
            if(_yy >= column_height){
                world[_xx][_yy] = 1; 
            }
        }
    }
    
    // Render
    var block = oBlockDurt;
    
    
    for (var _x = 0; _x  < world_width; _x++){
        for (var _y = 0; _y < world_height; _y++){

            print(_x, " , ",_y, " world : ", world[_x][_y] )
            if(world[_x][_y] == 1){
                instance_create_layer(_x * block_size,_y * block_size, "BLOCKS", oBlockDurt);
                    
                print(_x,_y)
            }
        }
    }
    
    // Criar jogador
    var player = instance_create_layer(64, 0, "PLAYER", oPlayer);

    
}