#
# Description :	Run function when player not in Spectator Mode while in Camera Mode
# Called by :	camera:camera/tick
# Entity @s :	@a[tag=camera.player,gamemode=!spectator]
# Location @s :	World Spawn
#

# Store gamerule
execute store result score cmdFeedback camera.temp run gamerule sendCommandFeedback

# Send message to player
tellraw @s {"text": "You cannot change gamemode while in Camera Mode","color": "gold"}

# Turn off sendCommandFeedback
gamerule sendCommandFeedback false

# Change gamemode
gamemode spectator

# Turn on sendCommandFeedback
execute if score cmdFeedback camera.temp matches 1 run gamerule sendCommandFeedback true
