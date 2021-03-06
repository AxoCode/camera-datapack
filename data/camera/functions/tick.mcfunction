#
# Description :	Run every 1 tick
# Called by :	#minecraft:load
# Entity @s :	none
# Entity @s :	World Spawn
#

# Call this function again after 1 tick
schedule function camera:tick 1t

# Enable all player to run /trigger camera and camera.setting
scoreboard players enable @a camera
scoreboard players enable @a camera.setting

# Switch to Camera Mode
execute as @a[scores={camera=1}] at @s run function camera:camera/check

# Run function every tick while player in Camera Mode
execute as @a[tag=camera.player] at @s run function camera:camera/tick

# Switch to Normal Mode
execute as @a[scores={camera=3..}] at @s run function camera:normal

# Display Settings
execute as @a[scores={camera.setting=1..}] run function camera:setting

# Run Settings
execute as @a[scores={camera.setting=10}] at @s run function camera:setting/camera/disable
execute as @a[scores={camera.setting=11}] at @s run function camera:setting/camera/enable
