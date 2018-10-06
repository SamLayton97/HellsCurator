/// @description When player mouses over button

// set button to be moused over
isMousedOver = true;

// if blind mode is enabled
if (global.BlindModeEnabled)
{	
	// with all button objects in scene
	with (obj_menuButtonBase)
	{
		// add their sound to list
		ds_list_add(other.otherButtonSounds, mySound)
		//ds_list_add(other.otherButtonSounds, obj_menuButtonBase.enableSound);
		//ds_list_add(other.otherButtonSounds, obj_menuButtonBase.disableSound);
	}
	
	// if list of other button voices isn't empty
	if (!ds_list_empty(otherButtonSounds))
	{
		// iterate over each sound in list
		for (var i = 0; i < ds_list_size(otherButtonSounds); i++)
		{
			// stop sound at index 'i'
			audio_stop_sound(ds_list_find_value(otherButtonSounds, i));
		}
	}

	// voice function
	audio_play_sound(mySound, 10, false);
}

// play hover sound effect
audio_play_sound(sfx_buttonHover, 10, false);