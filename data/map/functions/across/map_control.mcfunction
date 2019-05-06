#MapControl上のとき
execute if entity @s[tag=!MapControl] if block ~ ~-4 ~ minecraft:infested_cobblestone run function map:across/message/allocate/main

execute store result score #GameTime Number run time query gametime
scoreboard players operation #GameTime Number -= @s MapControl
execute if score #GameTime Number matches 2.. run tag @s remove MapControl
scoreboard players operation @s MapControl += #GameTime Number
