execute if score #RngExp Number matches 0..30 run scoreboard players operation #RngSum Number = @s RngSum1
execute if score #RngExp Number matches 31..61 run scoreboard players operation #RngSum Number = @s RngSum2
execute if score #RngExp Number matches 62..92 run scoreboard players operation #RngSum Number = @s RngSum3
execute if score #RngExp Number matches 93..123 run scoreboard players operation #RngSum Number = @s RngSum4
execute if score #RngExp Number matches 124..154 run scoreboard players operation #RngSum Number = @s RngSum5
execute if score #RngExp Number matches 155..185 run scoreboard players operation #RngSum Number = @s RngSum6
execute if score #RngExp Number matches 186..216 run scoreboard players operation #RngSum Number = @s RngSum7
execute if score #RngExp Number matches 217..247 run scoreboard players operation #RngSum Number = @s RngSum8

scoreboard players operation #RngSum Number %= #RngPower+1 Number
execute if score #RngPower Number <= #RngSum Number run scoreboard players set @s RngFlag 1
execute unless score #RngPower Number <= #RngSum Number run function skill:calc/range/cancel/add_sum
