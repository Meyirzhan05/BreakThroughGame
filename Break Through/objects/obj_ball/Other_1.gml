/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0D468A79
/// @DnDArgument : "soundid" "snd_Bounce"
/// @DnDSaveInfo : "soundid" "snd_Bounce"
audio_play_sound(snd_Bounce, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34A7E2AC
/// @DnDArgument : "var" "bbox_left"
/// @DnDArgument : "op" "1"
if(bbox_left < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7FC1F512
	/// @DnDParent : 34A7E2AC
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3C9B5374
	/// @DnDInput : 2
	/// @DnDParent : 34A7E2AC
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49ABFB38
/// @DnDArgument : "var" "bbox_right"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(bbox_right > room_width)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3AB54948
	/// @DnDParent : 49ABFB38
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 500078AA
	/// @DnDInput : 2
	/// @DnDParent : 49ABFB38
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AE77729
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "1"
if(bbox_top < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3491433F
	/// @DnDParent : 2AE77729
	/// @DnDArgument : "speed" "-vspeed"
	/// @DnDArgument : "type" "2"
	vspeed = -vspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3FFE8EFF
	/// @DnDInput : 2
	/// @DnDParent : 2AE77729
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71CD3A93
/// @DnDArgument : "var" "bbox_bottom"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_bottom > room_height)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2A283319
	/// @DnDParent : 71CD3A93
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 10C0514C
	/// @DnDParent : 71CD3A93
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D6B46A7
	/// @DnDParent : 71CD3A93
	/// @DnDArgument : "var" "global.player_lives"
	/// @DnDArgument : "op" "3"
	if(global.player_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18D9E659
		/// @DnDApplyTo : {obj_control}
		/// @DnDParent : 7D6B46A7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "gameover"
		with(obj_control) {
		gameover = true;
		
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C63551D
		/// @DnDParent : 7D6B46A7
		/// @DnDArgument : "var" "global.player_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "global.high_score"
		if(global.player_score > global.high_score)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02F472D4
			/// @DnDParent : 0C63551D
			/// @DnDArgument : "expr" "global.player_score"
			/// @DnDArgument : "var" "global.high_score"
			global.high_score = global.player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5EE399AA
	/// @DnDParent : 71CD3A93
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 33E24C9F
		/// @DnDParent : 5EE399AA
		/// @DnDArgument : "xpos" "xstart"
		/// @DnDArgument : "ypos" "ystart"
		/// @DnDArgument : "objectid" "obj_ball"
		/// @DnDSaveInfo : "objectid" "obj_ball"
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0688EAB5
		/// @DnDApplyTo : {obj_bat}
		/// @DnDParent : 5EE399AA
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "x"
		with(obj_bat) {
		x = xstart;
		
		}
	}
}