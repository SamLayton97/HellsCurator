/// @description Used for initialization

// create list of other shop buttons
otherSkins = ds_list_create();

// add all other shop buttons to list
with(obj_shopButtonBase)
{
	// if button is not this button, add to list
	if (id != other.id)
		ds_list_add(other.otherSkins, id);
}