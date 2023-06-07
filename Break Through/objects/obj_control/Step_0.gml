/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 721A5FFC
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "obj_brick"
var numOfBricks = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50C804EB
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "op" "3"
if(numOfBricks <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 701D08B9
	/// @DnDParent : 50C804EB
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5433E04D
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3DD04489
	/// @DnDParent : 5433E04D
	/// @DnDArgument : "key" "vk_anykey"
	var l3DD04489_0;
	l3DD04489_0 = keyboard_check_pressed(vk_anykey);
	if (l3DD04489_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 189CDEDC
		/// @DnDParent : 3DD04489
		/// @DnDArgument : "soundid" "snd_PowerUp"
		/// @DnDSaveInfo : "soundid" "snd_PowerUp"
		audio_play_sound(snd_PowerUp, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 375C7E28
		/// @DnDParent : 3DD04489
		/// @DnDArgument : "var" "player_score"
		global.player_score = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 1964748A
		/// @DnDParent : 3DD04489
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "var" "player_lives"
		global.player_lives = 3;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 6D2E4864
		/// @DnDParent : 3DD04489
		room_restart();
	}
}