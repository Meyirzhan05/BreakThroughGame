/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 057404D3
/// @DnDArgument : "soundid" "snd_PowerUp"
/// @DnDSaveInfo : "soundid" "snd_PowerUp"
audio_play_sound(snd_PowerUp, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 44A5779E
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40A0C464
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2B6B3E10
	/// @DnDApplyTo : other
	/// @DnDParent : 40A0C464
	/// @DnDArgument : "value" "1.5"
	/// @DnDArgument : "instvar" "15"
	with(other) {
	image_xscale = 1.5;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0D0DA09D
	/// @DnDApplyTo : other
	/// @DnDParent : 40A0C464
	/// @DnDArgument : "steps" "10 * room_speed"
	with(other) {
	alarm_set(0, 10 * room_speed);
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 037B6B17
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5A44D1DF
	/// @DnDApplyTo : {obj_ball}
	/// @DnDParent : 037B6B17
	/// @DnDArgument : "speed" "spd"
	with(obj_ball) speed = spd;
}