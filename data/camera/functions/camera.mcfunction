#
# Description :	Run function when player in Camera Mode
# Called by :	camera:camera/check
# Entity @s :	@a[nbt={OnGround:1b,Air:300s,Fire:-20s}]
# Location @s :	@a[nbt={OnGround:1b,Air:300s,Fire:-20s}]
#

# Set the score just in case player call this function straight away
scoreboard players set @s camera 1

# Store gamerule
execute store result score cmdFeedback camera.temp run gamerule sendCommandFeedback

# Turn off sendCommandFeedback
gamerule sendCommandFeedback false

# Force load the area
forceload add ~ ~

# Summon Armor Stand
summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["camera.marker","global.ignore.kill","global.ignore.pos"],DisabledSlots:4144959,NoGravity:1b}
tp @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Equip Armor Stand with player mainhand, offhand, and armor slot
data modify entity @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] HandItems[0] set from entity @s SelectedItem
data modify entity @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] HandItems[1] set from entity @s Inventory[{Slot:-106b}]
data modify entity @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]

# Set Armor Stand name with player name
loot spawn ~ ~ ~ loot camera:player_name
data modify entity @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] CustomName set from entity @e[nbt={Item:{tag:{camera.pname:1b}}},distance=..1,limit=1,sort=nearest] Item.tag.display.Name
kill @e[nbt={Item:{tag:{camera.pname:1b}}},distance=..1,limit=1,sort=nearest]

# Add tag and team
tag @s add camera.player
team join camera

# Get player UUID and store it to armor_stand
execute store result score @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] camera.uuid0 run data get entity @p[tag=camera.player] UUID[0]
execute store result score @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] camera.uuid1 run data get entity @p[tag=camera.player] UUID[1]
execute store result score @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] camera.uuid2 run data get entity @p[tag=camera.player] UUID[2]
execute store result score @e[type=armor_stand,tag=camera.marker,distance=..1,limit=1,sort=nearest] camera.uuid3 run data get entity @p[tag=camera.player] UUID[3]

# Get player UUID
execute store result score @s camera.uuid0 run data get entity @s UUID[0]
execute store result score @s camera.uuid1 run data get entity @s UUID[1]
execute store result score @s camera.uuid2 run data get entity @s UUID[2]
execute store result score @s camera.uuid3 run data get entity @s UUID[3]

# Get current gamemode
# 0 : Survival Mode
# 1 : Creative Mode
# 2 : Adventure Mode
# 3 : Spectator Mode
execute store result score @s camera.temp run data get entity @s playerGameType

# Set gamemode to spectator
gamemode spectator

# Add 1 to score
scoreboard players add @s camera 1

# Turn on sendCommandFeedback
execute if score cmdFeedback camera.temp matches 1 run gamerule sendCommandFeedback true
