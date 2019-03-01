#初期乱数決定
function main:rand
scoreboard players operation @s entropy = #Rand Number
scoreboard players operation @s entropy %= #10000 Number
