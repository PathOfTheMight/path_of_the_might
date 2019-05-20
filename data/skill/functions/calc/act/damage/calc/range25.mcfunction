#敵ダメージ*0.75~1.25を取得
scoreboard players set #RandMod Number 50
function main:rand
scoreboard players add #RandMod Number 75
scoreboard players operation #CurD Number = @s D
scoreboard players operation #CurD Number *= #RandMod Number
scoreboard players operation #CurD Number /= #100 Number
