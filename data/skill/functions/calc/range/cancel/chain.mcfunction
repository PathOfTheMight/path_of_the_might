#チェイン時
function skill:calc/range/cancel/load_sum

scoreboard players operation #RngSum Number %= #RngPower+1 Number
execute if score #RngPower Number <= #RngSum Number run tag @s remove Chained
