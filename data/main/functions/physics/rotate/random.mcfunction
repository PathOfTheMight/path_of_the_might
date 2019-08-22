#ランダムな向きに向ける
scoreboard players set #RandMod Number 360
function main:rand
execute store result entity @s Rotation[0] float 1 run scoreboard players get #RandMod Number
