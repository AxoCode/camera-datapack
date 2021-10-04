#
# Description :	Display help and settings
# Called by :	camera:tick
# Entity @s :	@a[scores={camera.help=1..}]
# Location @s :	World Spawn
#

# Message
tellraw @s ["",{"text": "                     ","strikethrough": true},{"text": " Camera Settings ","color": "gold","bold": true},{"text": "                     ","strikethrough": true}]

tellraw @s[tag=camera.player] ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/trigger camera","hoverEvent": {"action": "show_text","value": "Turn on Camera Mode (/trigger camera)"}}},{"text": "Toggle Camera Mode"}]
tellraw @s[tag=!camera.player] ["",{"text": "[ ✔ ]","color": "red","clickEvent": {"action": "run_command","value": "/trigger camera","hoverEvent": {"action": "show_text","value": "Turn off Camera Mode (/trigger camera)"}}},{"text": "Toggle Camera Mode"}]

tellraw @s ["",{"text": "                                                                                ","strikethrough": true}]

# Set the score back to 0
scoreboard players set @s camera.help 0
