#
# Description :	Enable Camera Mode
# Called by :	camera:tick
# Entity @s :	@a[scores={camera.setting=11}]
# Location @s :	@a[scores={camera.setting=11}]
#

# Switch to Camera Mode
function camera:camera

# Show the setting again
function camera:setting

# Play a click sound
playsound ui.button.click master @s ~ ~ ~ 0.3
