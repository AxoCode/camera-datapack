#
# Description :	Disable Camera Mode
# Called by :	camera:tick
# Entity @s :	@a[scores={camera.setting=10}]
# Location @s :	@a[scores={camera.setting=10}]
#

# Switch to Normal Mode
function camera:camera

# Show the setting again
function camera:setting

# Play a click sound
playsound ui.button.click master @s ~ ~ ~ 0.3
