//b_execute_event(id) - executes event with the relevant id

switch(argument0)
{
    case 1:
    {
        game_end()
        break
    }
    case 2:
    {
        var inst = instance_create(0,0,obj_fade);
        inst.room_to_go = r_game
        inst.a_speed = 1 / 2
        break
    }
    case 3:
    {
        var inst = instance_create(0,0,obj_fade);
        inst.room_to_go = r_options
        inst.a_speed = 1 / 2
        break
    }
    case 4:
    {
        show_message("Feature coming soon!")
        break
    }
    case 5:
    {
        var inst = instance_create(0,0,obj_fade);
        inst.room_to_go = r_menu
        inst.a_speed = 1 / 2
        break
    }
    case 6:
    {
        window_set_fullscreen(!window_get_fullscreen())
        break
    }
    case 7:
    {
        obj_settings.current_vsync = !obj_settings.current_vsync
        display_reset(obj_settings.current_aa, obj_settings.current_vsync)
        break
    }
    case 8:
    {
        if(obj_settings.current_aa == display_aa)
        {
            obj_settings.curent_aa = 0
        }
        else {
            obj_settings.current_aa = display_aa
        }
        display_reset(obj_settings.current_aa, obj_settings.current_vsync)
        break
    }
    case 9:
    {
        obj_settings.music = !obj_settings.music
        break;
    }
    default:
    {
        show_message("Event type not supported, call the developer to fix the issue :D")
        break
    }
}
