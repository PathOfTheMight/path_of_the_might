#ヒット時
function skill:calc/range/cancel/load_sum

scoreboard players operation #RngSum Number %= #RngPower+1 Number
execute if score #RngPower Number <= #RngSum Number run scoreboard players reset @s RngFlag
execute unless score #RngPower Number <= #RngSum Number run function skill:calc/range/cancel/add_sum
