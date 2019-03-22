#ダメージロール
scoreboard players operation #RandMod Number = #PhDMax Number
scoreboard players operation #RandMod Number -= #PhDMin Number
function main:rand
scoreboard players operation #CurD Number = #RandMod Number
#コンバート
execute if score #PhConvP Number matches 1.. run function skill:calc/act/damage/convert/physical/main

