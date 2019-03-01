#線形合同法による0~1000000-1の乱数生成 #rand*21+3 mod 1000000
scoreboard players operation #Rand Number *= #21 Number
scoreboard players add #Rand Number 3
scoreboard players operation #Rand Number %= #1000000 Number

#0~RandMod-1の乱数生成 #RandMod*#rand/1000000 #RandMod=1~2147
scoreboard players operation #RandMod Number *= #Rand Number
scoreboard players operation #RandMod Number /= #1000000 Number
