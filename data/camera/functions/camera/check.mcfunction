#
# Description :	Check player condition before turning into Camera Mode
# Called by :	camera:tick
# Entity @s :	@a[scores={camera=1}]
# Location @s :	@a[scores={camera=1}]
#

tellraw @a[nbt=!{OnGround:1b}] {"text": "You must be on the ground"}
tellraw @a[nbt=!{Air:300s}] {"text": "You must be in air, not suffocating nor in liquids."}
tellraw @a[nbt=!{Fire:-20s}] {"text": "You must not be on fire"}

# If the person pass the check, then switch to Camera Mode
execute as @a[nbt={OnGround:1b,Air:300s,Fire:-20s}] at @s run function camera:camera
