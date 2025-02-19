var i;
for (i = 0; i < ds_list_size(obj_controller.objetos_quebrados); i++) {
    show_debug_message("Elemento " + string(i) + ": " + string(ds_list_find_value(obj_controller.objetos_quebrados, i)));
}


if (keyboard_check_pressed(vk_space)) {
    if (place_meeting(x, y, obj_geladeira) && obj_geladeira.consertado != true) {
        global.obj_para_consertar = instance_place(x, y, obj_geladeira);
        room_goto(room_minigame);
    }
    else if (place_meeting(x, y, obj_fogao)) {
        global.obj_para_consertar = instance_place(x, y, obj_fogao);
        room_goto(room_minigame);
    }
    else if (place_meeting(x, y, obj_televisao)) {
        global.obj_para_consertar = instance_place(x, y, obj_televisao);
        room_goto(room_minigame);
    }
    else if (place_meeting(x, y, obj_mesa)) {
        global.obj_para_consertar = instance_place(x, y, obj_mesa);
        room_goto(room_minigame);
    }
    else if (place_meeting(x, y, obj_estante)) {
        global.obj_para_consertar = instance_place(x, y, obj_estante);
        room_goto(room_minigame);
    }
    else if (place_meeting(x, y, obj_chuveiro)) {
        global.obj_para_consertar = instance_place(x, y, obj_chuveiro);
        room_goto(room_minigame);
    }
    else if (place_meeting(x, y, obj_privada)) {
        global.obj_para_consertar = instance_place(x, y, obj_privada);
        room_goto(room_minigame);
    }
}
