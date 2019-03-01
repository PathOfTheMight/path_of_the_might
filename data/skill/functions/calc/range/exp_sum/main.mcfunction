#合計リセット
scoreboard players set #RngSum1 Number 0
scoreboard players set #RngSum2 Number 0
scoreboard players set #RngSum3 Number 0
scoreboard players set #RngSum4 Number 0
scoreboard players set #RngSum5 Number 0
scoreboard players set #RngSum6 Number 0
scoreboard players set #RngSum7 Number 0
scoreboard players set #RngSum8 Number 0
#敵の2^指数を合計
execute as @e[scores={RngFlag=2..3}] run function skill:calc/range/exp_sum/calc
#合計をスキルに保存
scoreboard players operation @s RngSum1 = #RngSum1 Number
scoreboard players operation @s RngSum2 = #RngSum2 Number
scoreboard players operation @s RngSum3 = #RngSum3 Number
scoreboard players operation @s RngSum4 = #RngSum4 Number
scoreboard players operation @s RngSum5 = #RngSum5 Number
scoreboard players operation @s RngSum6 = #RngSum6 Number
scoreboard players operation @s RngSum7 = #RngSum7 Number
scoreboard players operation @s RngSum8 = #RngSum8 Number
