#ダメージロール
#範囲>2147につき特殊
scoreboard players set #RandMod Number 2000
function main:rand
scoreboard players operation #LnDMax Number -= #LnDMin Number
scoreboard players operation #LnDMax Number *= #RandMod Number
scoreboard players operation #LnDMax Number /= #2000 Number
scoreboard players operation #LnDMin Number += #LnDMax Number
scoreboard players operation #CurD Number = #LnDMin Number
#コンバート
execute if score #LnConvP Number matches 1.. run function skill:calc/act/damage/convert/lightning/main
