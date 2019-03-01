scoreboard players operation #Map Number = @e[tag=Portal,distance=..2,limit=1,sort=nearest] map

execute if score #Map Number matches 0..20 run function map:portal/message/allocate/map0_20
execute if score #Map Number matches 21..40 run function map:portal/message/allocate/map21_40
execute if score #Map Number matches 41..60 run function map:portal/message/allocate/map41_60
execute if score #Map Number matches 61..80 run function map:portal/message/allocate/map61_80
execute if score #Map Number matches 81..100 run function map:portal/message/allocate/map81_100

execute if score #Map Number matches 101..120 run function map:portal/message/allocate/map101_120
execute if score #Map Number matches 121..140 run function map:portal/message/allocate/map121_140
execute if score #Map Number matches 141..160 run function map:portal/message/allocate/map141_160
execute if score #Map Number matches 161..180 run function map:portal/message/allocate/map161_180
execute if score #Map Number matches 181..200 run function map:portal/message/allocate/map181_200

execute if score #Map Number matches 201..220 run function map:portal/message/allocate/map201_220
execute if score #Map Number matches 221..240 run function map:portal/message/allocate/map221_240
execute if score #Map Number matches 241..260 run function map:portal/message/allocate/map241_260
execute if score #Map Number matches 261..280 run function map:portal/message/allocate/map261_280
execute if score #Map Number matches 281..300 run function map:portal/message/allocate/map281_300

execute if score #Map Number matches 301..320 run function map:portal/message/allocate/map301_320
execute if score #Map Number matches 321..340 run function map:portal/message/allocate/map321_340
execute if score #Map Number matches 341..360 run function map:portal/message/allocate/map341_360
execute if score #Map Number matches 361..380 run function map:portal/message/allocate/map361_380
execute if score #Map Number matches 381..400 run function map:portal/message/allocate/map381_400

tag @p add InPortal