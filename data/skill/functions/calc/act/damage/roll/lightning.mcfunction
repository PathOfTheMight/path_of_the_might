#ダメージロール
scoreboard players set #RandMod Number 2000
function main:rand
scoreboard players operation #CurD Number = #Temp LnDMax
scoreboard players operation #CurD Number -= #Temp LnDMin
scoreboard players operation #CurD Number *= #RandMod Number
scoreboard players operation #CurD Number /= #2000 Number
scoreboard players operation #CurD Number += #Temp LnDMin
#Inc
scoreboard players operation #CurDIncP Number = #Temp LnDIncP
#コンバート
execute if score #Temp LnConvFlag matches 1 run function skill:calc/act/damage/convert/lightning/main
#Inc
execute unless score #Temp LnConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp LnConvFlag matches 1 run scoreboard players operation #Temp LnD += #CurD Number
