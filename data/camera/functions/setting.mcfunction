#
# Description :	Display settings
# Called by :	camera:tick
# Entity @s :	@a[scores={camera.setting=1..}]
# Location @s :	World Spawn
#

# Message
tellraw @s ["",{"text": "                           ","strikethrough": true},{"text": " Camera Settings ","color": "gold","bold": true},{"text": "                           ","strikethrough": true}]

tellraw @s[tag=camera.player] ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/trigger camera.setting set 10","hoverEvent": {"action": "show_text","value": "Turn off Camera Mode"}}},{"text": " Toggle Camera Mode"}]
tellraw @s[tag=!camera.player] ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/trigger camera.setting set 11","hoverEvent": {"action": "show_text","value": "Turn on Camera Mode"}}},{"text": " Toggle Camera Mode"}]

tellraw @s ["",{"text": "                                                                                ","strikethrough": true}]

# Set the score back to 0
scoreboard players set @s camera.setting 0
