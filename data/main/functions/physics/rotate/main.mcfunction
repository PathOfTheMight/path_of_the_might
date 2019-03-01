#単位ベクトル取得
execute store result score #X2 Number run data get entity @s Pos[0] 100
execute store result score #Z2 Number run data get entity @s Pos[2] 100
tp 00000000-0000-0001-0000-000000000000 ^ ^ ^1
execute store result score #X1 Number run data get entity 00000000-0000-0001-0000-000000000000 Pos[0] 100
execute store result score #Z1 Number run data get entity 00000000-0000-0001-0000-000000000000 Pos[2] 100
scoreboard players operation #X1 Number -= #X2 Number
scoreboard players operation #Z1 Number -= #Z2 Number
#単位ベクトルのRadius倍
scoreboard players operation #X1 Number *= @s Radius
scoreboard players operation #Z1 Number *= @s Radius
scoreboard players operation #X1 Number /= #100 Number
scoreboard players operation #Z1 Number /= #100 Number
#補正位置の計算・代入
scoreboard players operation #X0 Number = #X2 Number
scoreboard players operation #Z0 Number = #Z2 Number
scoreboard players operation #X0 Number += #X1 Number
scoreboard players operation #Z0 Number += #Z1 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[0] double 0.01 run scoreboard players get #X0 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[2] double 0.01 run scoreboard players get #Z0 Number
execute at 00000000-0000-0001-0000-000000000000 run function main:physics/rotate/particle
#補正位置の計算・代入
scoreboard players operation #X0 Number = #X2 Number
scoreboard players operation #Z0 Number = #Z2 Number
scoreboard players operation #X0 Number -= #X1 Number
scoreboard players operation #Z0 Number -= #Z1 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[0] double 0.01 run scoreboard players get #X0 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[2] double 0.01 run scoreboard players get #Z0 Number
execute at 00000000-0000-0001-0000-000000000000 run function main:physics/rotate/particle
#補正位置の計算・代入
scoreboard players operation #X0 Number = #X2 Number
scoreboard players operation #Z0 Number = #Z2 Number
scoreboard players operation #X0 Number += #Z1 Number
scoreboard players operation #Z0 Number -= #X1 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[0] double 0.01 run scoreboard players get #X0 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[2] double 0.01 run scoreboard players get #Z0 Number
execute at 00000000-0000-0001-0000-000000000000 run function main:physics/rotate/particle
#補正位置の計算・代入
scoreboard players operation #X0 Number = #X2 Number
scoreboard players operation #Z0 Number = #Z2 Number
scoreboard players operation #X0 Number -= #Z1 Number
scoreboard players operation #Z0 Number += #X1 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[0] double 0.01 run scoreboard players get #X0 Number
execute store result entity 00000000-0000-0001-0000-000000000000 Pos[2] double 0.01 run scoreboard players get #Z0 Number
execute at 00000000-0000-0001-0000-000000000000 run function main:physics/rotate/particle

tp 00000000-0000-0001-0000-000000000000 -40896 1 -40960
tp @s[tag=Rotate3] ~ ~ ~ ~3 ~
tp @s[tag=Rotate37] ~ ~ ~ ~37 ~

