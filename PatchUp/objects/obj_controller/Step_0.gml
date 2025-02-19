with (obj_player) {
        if (vidas <= 0) {
            show_debug_message("perdeu fi")
            room_goto(room_derrota);
        }
    }
