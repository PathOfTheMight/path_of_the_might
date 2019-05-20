#rotationX の取得
execute store result score #RotationX Number run data get entity @s Rotation[0] 1
#-DiffuseX ~ DiffuseXの乱数生成
scoreboard players operation #RandMod Number = #DiffuseX Number
scoreboard players operation #RandMod Number *= #2 Number
scoreboard players add #RandMod Number 1
function main:rand
scoreboard players operation #RandMod Number -= #DiffuseX Number
#rotationX に乱数を足す
scoreboard players operation #RotationX Number += #RandMod Number
#rotation[0]に代入
execute store result entity @s Rotation[0] float 1 run scoreboard players get #RotationX Number
