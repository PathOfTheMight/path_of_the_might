function map:transfer/get_map
tag @s remove map_control

execute positioned as @s run playsound entity.arrow.hit_player master @p ~ ~ ~ 1 2

execute if entity @s[tag=map_across] run function map:load/map_timer/check/allocate/main
