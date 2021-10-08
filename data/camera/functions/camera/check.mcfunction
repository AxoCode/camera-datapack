#
# Description :	Check player condition before turning into Camera Mode
# Called by :	camera:tick
# Entity @s :	@a[scores={camera=1}]
# Location @s :	@a[scores={camera=1}]
#

tellraw @s[nbt=!{OnGround:1b}] {"text": "You must be on the ground"}
tellraw @s[nbt=!{Air:300s}] {"text": "You must be in air, not drowning."}
tellraw @s[nbt=!{Fire:-20s}] {"text": "You must not be on fire"}
scoreboard players set @s[nbt=!{OnGround:1b,Air:300s,Fire:-20s}] camera 0

# If the person pass the check, then switch to Camera Mode
execute as @s[nbt={OnGround:1b,Air:300s,Fire:-20s}] at @s run function camera:camera
