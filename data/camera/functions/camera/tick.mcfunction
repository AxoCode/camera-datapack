#
# Description :	Run function every tick while player in Camera Mode
# Called by :	camera:tick
# Entity @s :	@a[tag=camera.player]
# Location @s :	@a[tag=camera.player]
#

# Run function when player not in Spectator Mode while in Camera Mode
execute as @a[gamemode=!spectator] run function camera:camera/not_spectator

# Give jump boost and night vision unless they have it before
effect give @s[nbt=!{ActiveEffects:[{Id:8b,Amplifier:0b}]},nbt=!{ActiveEffects:[{Id:8b,Amplifier:1b}]}] jump_boost 1 255 true
effect give @s[nbt=!{ActiveEffects:[{Id:16b,Amplifier:0b}]}] night_vision 11 255 true

# Teleport player to y -62 when the player is in y -64 or below
tp @s[y=-64,dy=-100] ~ -62 ~
