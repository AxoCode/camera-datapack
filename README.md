# Camera Datapack

This datapack will allow you to spectate the world without having OP!

## Table of Contents

- [Camera Datapack](#camera-datapack)
	- [Table of Contents](#table-of-contents)
	- [Credit](#credit)
	- [Info](#info)
	- [Check](#check)

## Credit
This camera datapack was inspired by [scarpet cam app](https://github.com/gnembon/scarpet/blob/master/programs/survival/cam.sc) by @gnembon

## Info
You can run `/trigger camera` to switch into spectator mode. At camera mode, you have `[Camera]` prefix, and you cannot switch gamemode (by using command, or F3 + F4) while in camera mode. To mark your spot, I use Armor Stand with your name, armor, mainhand, and offhand. The armor stand cannot be moved and killed (except using `/kill`).  
Also, I will add the settings to toggle each feature (global and per player) in game!

If you want to switch into your original gamemode, run `/trigger camera` again, and it will switch into your original gamemode, location, and rotation. And your `[Camera]` prefix will gone.

## Check
Before you turn into spectator mode (`/trigger camera`), there is 3 check.  
- You must be on the ground, not falling, flying, or standing on the air.  
- You must be in the air, not drowning.  
- You must no be on fire

If you fail any check, it will cancel, and doesnt switch you into spectator mode.
