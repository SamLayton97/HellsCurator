/// @description When player presses button

event_inherited();

// enable / disable closed captioning
isSelected = !isSelected;
global.ClosedCaptioningEnabled = !global.ClosedCaptioningEnabled;