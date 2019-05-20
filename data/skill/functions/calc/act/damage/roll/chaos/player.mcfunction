scoreboard players set #RandMod Number 2000
function main:rand
scoreboard players operation #CurD Number = #Temp ChDMax
scoreboard players operation #CurD Number -= #Temp ChDMin
scoreboard players operation #CurD Number *= #RandMod Number
scoreboard players operation #CurD Number /= #2000 Number
scoreboard players operation #CurD Number += #Temp ChDMin
