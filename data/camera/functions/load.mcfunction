#
# Description :	Create scoreboard and team
# Called by :	#minecraft:load
# Entity @s :	none
# Location @s :	World Spawn
#

# Create scoreboard
scoreboard objectives add camera trigger
scoreboard objectives add camera.setting trigger
scoreboard objectives add camera.uuid0 dummy
scoreboard objectives add camera.uuid1 dummy
scoreboard objectives add camera.uuid2 dummy
scoreboard objectives add camera.uuid3 dummy
scoreboard objectives add camera.temp dummy
scoreboard objectives add camera.setting dummy

# Create team
team add camera
team modify camera prefix [{"text": "["},{"text": "Camera","color": "gray"},{"text": "] "}]
