#life=itemlevel*14/10+9
scoreboard players set #RandMod Number 14
scoreboard players operation #RandMod Number *= #ItemLevel Number
scoreboard players operation #RandMod Number /= #10 Number
function main:rand
scoreboard players operation #RandMod Number *= #Weight Number
scoreboard players operation #RandMod Number /= #100 Number
scoreboard players add #RandMod Number 9
