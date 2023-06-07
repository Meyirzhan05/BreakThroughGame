/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2A9E6021
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5ADED2EF
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7F6CF7CF
/// @DnDArgument : "x" "room_width - 8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High Score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width - 8, 8, string("High Score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5AC71307
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 64D62C18
/// @DnDArgument : "x" "(room_width / 2) - ((global.player_lives - 1) * 32) "
/// @DnDArgument : "y" "room_height - 32"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l64D62C18_0 = sprite_get_width(spr_lives);
var l64D62C18_1 = 0;
for(var l64D62C18_2 = global.player_lives; l64D62C18_2 > 0; --l64D62C18_2) {
	draw_sprite(spr_lives, 0, (room_width / 2) - ((global.player_lives - 1) * 32)  + l64D62C18_1, room_height - 32);
	l64D62C18_1 += l64D62C18_0;
}