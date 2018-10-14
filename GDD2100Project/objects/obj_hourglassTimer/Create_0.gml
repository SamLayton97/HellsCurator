/// @description Used for initialization

// calculate GUI draw coordinates
drawX = 168;
drawY = 168;

// declare animation support variables
currSubImage = 0;
numOfSubImages = 30;
betweenImagesCounter = 0;

// calculate speed of animation
framesBetweenSubImages = (room_speed * global.MaxScorableSeconds) / numOfSubImages;