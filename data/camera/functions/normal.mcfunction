#
# Description :	Run function when player in Normal Mode (not in Camera Mode)
# Called by :	camera:tick, camera:uninstall
# Entity @s :	@a[scores={camera=3..}], @a[tag=camera.player]
# Location @s :	@a[scores={camera=3..}], @a[tag=camera.player]
#

# Store gamerule
execute store result score cmdFeedback camera.temp run gamerule sendCommandFeedback

# Reset player momentum
tp @s @s

# Tp them back
tag @s add camera.current
execute as @e[type=armor_stand,tag=camera.marker] if score @s camera.uuid0 = @p[tag=camera.current] camera.uuid0 if score @s camera.uuid1 = @p[tag=camera.current] camera.uuid1 if score @s camera.uuid2 = @p[tag=camera.current] camera.uuid2 if score @s camera.uuid3 = @p[tag=camera.current] camera.uuid3 at @s run tp @p[tag=camera.current] ~ ~ ~ ~ ~

# Clear night vision
effect clear @s[nbt={ActiveEffects:[{Id:16b,Amplifier:-1b}]}] night_vision

# Kill the Armor Stand
execute as @e[type=armor_stand,tag=camera.marker] if score @s camera.uuid0 = @p[tag=camera.current] camera.uuid0 if score @s camera.uuid1 = @p[tag=camera.current] camera.uuid1 if score @s camera.uuid2 = @p[tag=camera.current] camera.uuid2 if score @s camera.uuid3 = @p[tag=camera.current] camera.uuid3 at @s run kill @s
tag @s remove camera.current

# Remove the forceload
forceload remove ~ ~

# Remove tag and team
tag @s remove camera.player
team leave @s

# Set back the player gamemode
gamemode survival @s[scores={camera.temp=0}]
gamemode creative @s[scores={camera.temp=1}]
gamemode adventure @s[scores={camera.temp=2}]
gamemode spectator @s[scores={camera.temp=3}]

# Set the score back to 0
scoreboard players set @s camera 0

# Turn on sendCommandFeedback
execute if score cmdFeedback camera.temp matches 1 run gamerule sendCommandFeedback true
