#ダメージロール
scoreboard players operation #RandMod Number = #FiDMax Number
scoreboard players operation #RandMod Number -= #FiDMin Number
function main:rand
scoreboard players operation #CurD Number = #RandMod Number
#コンバート
execute if score #FiConvP Number matches 1.. run function skill:calc/act/damage/convert/fire/main
