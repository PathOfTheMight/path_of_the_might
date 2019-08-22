#単位ベクトル取得
execute store result score #X2 Number run data get entity @s Pos[0] 100
execute store result score #Z2 Number run data get entity @s Pos[2] 100
execute store success score #ReturnCalc Number run tp 0-0-1-0-0 ^ ^ ^1
execute store result score #X1 Number run data get entity 0-0-1-0-0 Pos[0] 100
execute store result score #Z1 Number run data get entity 0-0-1-0-0 Pos[2] 100
scoreboard players operation #X1 Number -= #X2 Number
scoreboard players operation #Z1 Number -= #Z2 Number
#単位ベクトルのRadius倍
scoreboard players operation #X1 Number *= @s Radius
scoreboard players operation #Z1 Number *= @s Radius
scoreboard players operation #X1 Number /= #100 Number
scoreboard players operation #Z1 Number /= #100 Number
#0度
scoreboard players operation #X0 Number = #X2 Number
scoreboard players operation #Z0 Number = #Z2 Number
scoreboard players operation #X0 Number += #X1 Number
scoreboard players operation #Z0 Number += #Z1 Number
execute store result entity 0-0-1-0-0 Pos[0] double 0.01 run scoreboard players get #X0 Number
execute store result entity 0-0-1-0-0 Pos[2] double 0.01 run scoreboard players get #Z0 Number
execute positioned as 0-0-1-0-0 run function main:physics/rotate/particle
#180度
execute positioned ^1000 ^ ^ facing entity 0-0-1-0-0 feet positioned ^ ^ ^-1000 rotated as @s positioned ^-2000 ^ ^ run function main:physics/rotate/particle
#90度
scoreboard players operation #X0 Number = #X2 Number
scoreboard players operation #Z0 Number = #Z2 Number
scoreboard players operation #X0 Number += #Z1 Number
scoreboard players operation #Z0 Number -= #X1 Number
execute store result entity 0-0-1-0-0 Pos[0] double 0.01 run scoreboard players get #X0 Number
execute store result entity 0-0-1-0-0 Pos[2] double 0.01 run scoreboard players get #Z0 Number
execute at 0-0-1-0-0 run function main:physics/rotate/particle
#270度
execute rotated ~90 0 positioned ^1000 ^ ^ facing entity 0-0-1-0-0 feet positioned ^ ^ ^-1000 rotated as @s rotated 90 0 positioned ^-2000 ^ ^ run function main:physics/rotate/particle

tp @s[tag=Rotate3] ~ ~ ~ ~3 ~
tp @s[tag=Rotate37] ~ ~ ~ ~37 ~
