tag @s remove MapControl
execute positioned as @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 2

scoreboard players operation #Map Number = @s map
function map:across/transfer/get_map
execute unless score #Map Number = @s map run function map:load/tellraw/allocate/main

effect give @s minecraft:levitation 1 255 true

execute if entity @s[tag=MapAcross] run function map:load/map_timer/check/allocate/main
