#ダメージロール
scoreboard players set #RandMod Number 2000
function main:rand
scoreboard players operation #CurD Number = #Temp PhDMax
scoreboard players operation #CurD Number -= #Temp PhDMin
scoreboard players operation #CurD Number *= #RandMod Number
scoreboard players operation #CurD Number /= #2000 Number
scoreboard players operation #CurD Number += #Temp PhDMin
#Inc
scoreboard players operation #CurDIncP Number = #Temp PhDIncP
#コンバート
execute if score #Temp PhConvFlag matches 1 run function skill:calc/act/damage/convert/physical/main
#Inc
execute unless score #Temp PhConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp PhConvFlag matches 1 run scoreboard players operation #Temp PhD += #CurD Number
