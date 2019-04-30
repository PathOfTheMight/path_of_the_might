#Packから敵召喚
scoreboard players operation #PackSizeIncP Number = @s PackSizeIncP
scoreboard players operation #PackLvl Number = @s Lvl
scoreboard players operation #PackExp Number = @s Exp
scoreboard players operation #PackHp Number = @s Hp
scoreboard players operation #PackEs Number = @s Es
scoreboard players operation #PackArm Number = @s Arm
scoreboard players operation #PackEva Number = @s Eva
scoreboard players operation #PackAcc Number = @s Acc
scoreboard players operation #PackDmg Number = @s D

execute if score @s map matches 0..20 run function map:spawn/allocate/map0_20
execute if score @s map matches 21..40 run function map:spawn/allocate/map21_40
execute if score @s map matches 41..60 run function map:spawn/allocate/map41_60
execute if score @s map matches 61..80 run function map:spawn/allocate/map61_80
execute if score @s map matches 81..100 run function map:spawn/allocate/map81_100

execute if score @s map matches 101..120 run function map:spawn/allocate/map101_120
execute if score @s map matches 121..140 run function map:spawn/allocate/map121_140
execute if score @s map matches 141..160 run function map:spawn/allocate/map141_160
execute if score @s map matches 161..180 run function map:spawn/allocate/map161_180
execute if score @s map matches 181..200 run function map:spawn/allocate/map181_200

execute if score @s map matches 201..220 run function map:spawn/allocate/map201_220
execute if score @s map matches 221..240 run function map:spawn/allocate/map221_240
execute if score @s map matches 241..260 run function map:spawn/allocate/map241_260
execute if score @s map matches 261..280 run function map:spawn/allocate/map261_280
execute if score @s map matches 281..300 run function map:spawn/allocate/map281_300

execute if score @s map matches 301..320 run function map:spawn/allocate/map301_320
execute if score @s map matches 321..340 run function map:spawn/allocate/map321_340
execute if score @s map matches 341..360 run function map:spawn/allocate/map341_360
execute if score @s map matches 361..380 run function map:spawn/allocate/map361_380
execute if score @s map matches 381..400 run function map:spawn/allocate/map381_400

kill @s[tag=TempPack]
tag @s[tag=InfPack] add Spawned
