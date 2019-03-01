#Map_control上のとき
execute if entity @s[tag=!map_control] if block ~ ~-4 ~ minecraft:infested_cobblestone run function map:across/message/allocate/main

execute store result score #gametime Number run time query gametime
scoreboard players operation #gametime Number -= @s map_control
execute if score #gametime Number matches 2.. run tag @s remove map_control
scoreboard players operation @s map_control += #gametime Number
