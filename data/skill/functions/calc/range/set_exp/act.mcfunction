#スキルに持っていなければ指数付与
execute store result score #TempRngExp Number run scoreboard players add #CurRngExp Number 1
execute if score #CurRngExp Number matches 248.. run scoreboard players set #CurRngExp Number 0
scoreboard players operation #Temp RngExp = #CurRngExp Number
#RngSumリセット
scoreboard players operation #TempRngExp Number %= #31 Number
execute if score #TempRngExp Number matches 0 run function skill:calc/range/set_exp/reset_sum
