scoreboard players reset #SuccessTransfer Number

execute if score @s map matches 0..20 run function map:across/transfer/allocate/map0_20
execute if score @s map matches 21..40 run function map:across/transfer/allocate/map21_40
execute if score @s map matches 41..60 run function map:across/transfer/allocate/map41_60
execute if score @s map matches 61..80 run function map:across/transfer/allocate/map61_80
execute if score @s map matches 81..100 run function map:across/transfer/allocate/map81_100

execute if score @s map matches 101..120 run function map:across/transfer/allocate/map101_120
execute if score @s map matches 121..140 run function map:across/transfer/allocate/map121_140
execute if score @s map matches 141..160 run function map:across/transfer/allocate/map141_160
execute if score @s map matches 161..180 run function map:across/transfer/allocate/map161_180
execute if score @s map matches 181..200 run function map:across/transfer/allocate/map181_200

execute if score @s map matches 201..220 run function map:across/transfer/allocate/map201_220
execute if score @s map matches 221..240 run function map:across/transfer/allocate/map221_240
execute if score @s map matches 241..260 run function map:across/transfer/allocate/map241_260
execute if score @s map matches 261..280 run function map:across/transfer/allocate/map261_280
execute if score @s map matches 281..300 run function map:across/transfer/allocate/map281_300

execute if score @s map matches 301..320 run function map:across/transfer/allocate/map301_320
execute if score @s map matches 321..340 run function map:across/transfer/allocate/map321_340
execute if score @s map matches 341..360 run function map:across/transfer/allocate/map341_360
execute if score @s map matches 361..380 run function map:across/transfer/allocate/map361_380
execute if score @s map matches 381..400 run function map:across/transfer/allocate/map381_400

execute unless score #SuccessTransfer Number matches 1 run tellraw @s {"text":"移動先から離れている。"}
execute unless score #SuccessTransfer Number matches 1 run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1

execute if score #SuccessTransfer Number matches 1 run function map:across/transfer/success
