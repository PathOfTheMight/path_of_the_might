#敵ダメージ*0.15~1.85を取得
scoreboard players set #RandMod Number 170
function main:rand
scoreboard players add #RandMod Number 15
scoreboard players operation #CurD Number = @s D
scoreboard players operation #CurD Number *= #RandMod Number
scoreboard players operation #CurD Number /= #100 Number
