scoreboard players operation #RngSum1 Number = #RngSum1Temp Number
scoreboard players operation #RngSum2 Number = #RngSum2Temp Number
scoreboard players operation #RngSum3 Number = #RngSum3Temp Number
scoreboard players operation #RngSum4 Number = #RngSum4Temp Number
scoreboard players operation #RngSum5 Number = #RngSum5Temp Number
scoreboard players operation #RngSum6 Number = #RngSum6Temp Number
scoreboard players operation #RngSum7 Number = #RngSum7Temp Number
scoreboard players operation #RngSum8 Number = #RngSum8Temp Number

execute if score @s RngExp matches 0..30 run function skill:calc/range/cancel/score1
execute if score @s RngExp matches 31..61 run function skill:calc/range/cancel/score2
execute if score @s RngExp matches 62..92 run function skill:calc/range/cancel/score3
execute if score @s RngExp matches 93..123 run function skill:calc/range/cancel/score4
execute if score @s RngExp matches 124..154 run function skill:calc/range/cancel/score5
execute if score @s RngExp matches 155..185 run function skill:calc/range/cancel/score6
execute if score @s RngExp matches 186..216 run function skill:calc/range/cancel/score7
execute if score @s RngExp matches 217..247 run function skill:calc/range/cancel/score8
