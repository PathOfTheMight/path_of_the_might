execute if score @s map matches 0..20 run function map:load/status/get_level/map0_20
execute if score @s map matches 21..40 run function map:load/status/get_level/map21_40
execute if score @s map matches 41..60 run function map:load/status/get_level/map41_60
execute if score @s map matches 61..80 run function map:load/status/get_level/map61_80
execute if score @s map matches 81..100 run function map:load/status/get_level/map81_100

execute if score @s map matches 101..120 run function map:load/status/get_level/map101_120
execute if score @s map matches 121..140 run function map:load/status/get_level/map121_140
execute if score @s map matches 141..160 run function map:load/status/get_level/map141_160
execute if score @s map matches 161..180 run function map:load/status/get_level/map161_180
execute if score @s map matches 181..200 run function map:load/status/get_level/map181_200

execute if score @s map matches 201..220 run function map:load/status/get_level/map201_220
execute if score @s map matches 221..240 run function map:load/status/get_level/map221_240
execute if score @s map matches 241..260 run function map:load/status/get_level/map241_260
execute if score @s map matches 261..280 run function map:load/status/get_level/map261_280
execute if score @s map matches 281..300 run function map:load/status/get_level/map281_300

execute if score @s map matches 301..320 run function map:load/status/get_level/map301_320
execute if score @s map matches 321..340 run function map:load/status/get_level/map321_340
execute if score @s map matches 341..360 run function map:load/status/get_level/map341_360
execute if score @s map matches 361..380 run function map:load/status/get_level/map361_380
execute if score @s map matches 381..400 run function map:load/status/get_level/map381_400

#MapID
scoreboard players operation #MapID Number = @s map

function map:load/status/get_status/allocate/main