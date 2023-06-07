/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2BBA6C1A
/// @DnDArgument : "soundid" "snd_Break"
/// @DnDSaveInfo : "soundid" "snd_Break"
audio_play_sound(snd_Break, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 713CB4A0
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"
var chance = floor(random_range(0, 2 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C33DC1E
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 352B5192
	/// @DnDParent : 6C33DC1E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_powers"
	/// @DnDSaveInfo : "objectid" "obj_powers"
	instance_create_layer(x + 0, y + 0, "Instances", obj_powers);
}