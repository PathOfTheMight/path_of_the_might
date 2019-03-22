#ダメージロール
scoreboard players operation #RandMod Number = #CoDMax Number
scoreboard players operation #RandMod Number -= #CoDMin Number
function main:rand
scoreboard players operation #CurD Number = #RandMod Number
#コンバート
execute if score #CoConvP Number matches 1.. run function skill:calc/act/damage/convert/cold/main
