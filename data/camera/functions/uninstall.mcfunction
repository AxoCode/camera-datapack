#
# Description :	Remove scoreboard, team, and change player to Normal Mode
# Called by :	Player / Command Block
# Entity @s :	Player / none
# Location @s :	Player / Comamnd Block
#

# Send message to player
tellraw @a[tag=camera.player] {"text": "Switching to Normal Mode because your admin remove the camera datapack!"}

# Switch to Normal Mode
execute as @a[tag=camera.player] at @s run function camera:normal

# Stop tick function
schedule clear camera:tick

# Remove scoreboard
scoreboard objectives remove camera
scoreboard objectives remove camera.help
scoreboard objectives remove camera.uuid0
scoreboard objectives remove camera.uuid1
scoreboard objectives remove camera.uuid2
scoreboard objectives remove camera.uuid3
scoreboard objectives remove camera.temp
scoreboard objectives remove camera.setting

# Remove team
team remove camera
