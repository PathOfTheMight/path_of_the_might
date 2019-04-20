#2^Exp <= Sum mod 2^(Exp+1) => SumのExp番目のbitは1である => RngFlag=1

scoreboard players operation #RngExp Number = @s RngExp
scoreboard players operation #RngExp Number %= #31 Number

execute if score #RngExp Number matches 0 run scoreboard players set #RngPower Number 1
execute if score #RngExp Number matches 1 run scoreboard players set #RngPower Number 2
execute if score #RngExp Number matches 2 run scoreboard players set #RngPower Number 4
execute if score #RngExp Number matches 3 run scoreboard players set #RngPower Number 8
execute if score #RngExp Number matches 4 run scoreboard players set #RngPower Number 16
execute if score #RngExp Number matches 5 run scoreboard players set #RngPower Number 32
execute if score #RngExp Number matches 6 run scoreboard players set #RngPower Number 64
execute if score #RngExp Number matches 7 run scoreboard players set #RngPower Number 128
execute if score #RngExp Number matches 8 run scoreboard players set #RngPower Number 256
execute if score #RngExp Number matches 9 run scoreboard players set #RngPower Number 512
execute if score #RngExp Number matches 10 run scoreboard players set #RngPower Number 1024
execute if score #RngExp Number matches 11 run scoreboard players set #RngPower Number 2048
execute if score #RngExp Number matches 12 run scoreboard players set #RngPower Number 4096
execute if score #RngExp Number matches 13 run scoreboard players set #RngPower Number 8192
execute if score #RngExp Number matches 14 run scoreboard players set #RngPower Number 16384
execute if score #RngExp Number matches 15 run scoreboard players set #RngPower Number 32768
execute if score #RngExp Number matches 16 run scoreboard players set #RngPower Number 65536
execute if score #RngExp Number matches 17 run scoreboard players set #RngPower Number 131072
execute if score #RngExp Number matches 18 run scoreboard players set #RngPower Number 262144
execute if score #RngExp Number matches 19 run scoreboard players set #RngPower Number 524288
execute if score #RngExp Number matches 20 run scoreboard players set #RngPower Number 1048576
execute if score #RngExp Number matches 21 run scoreboard players set #RngPower Number 2097152
execute if score #RngExp Number matches 22 run scoreboard players set #RngPower Number 4194304
execute if score #RngExp Number matches 23 run scoreboard players set #RngPower Number 8388608
execute if score #RngExp Number matches 24 run scoreboard players set #RngPower Number 16777216
execute if score #RngExp Number matches 25 run scoreboard players set #RngPower Number 33554432
execute if score #RngExp Number matches 26 run scoreboard players set #RngPower Number 67108864
execute if score #RngExp Number matches 27 run scoreboard players set #RngPower Number 134217728
execute if score #RngExp Number matches 28 run scoreboard players set #RngPower Number 268435456
execute if score #RngExp Number matches 29 run scoreboard players set #RngPower Number 536870912
execute if score #RngExp Number matches 30 run scoreboard players set #RngPower Number 1073741824

scoreboard players operation #RngPower+1 Number = #RngPower Number
scoreboard players operation #RngPower+1 Number *= #2 Number

scoreboard players operation #RngExp Number = @s RngExp

execute as @e[scores={RngFlag=2},distance=..21] run function skill:calc/range/cancel/calc
