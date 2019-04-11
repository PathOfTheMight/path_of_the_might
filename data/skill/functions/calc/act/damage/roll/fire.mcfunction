#ダメージロール
scoreboard players set #RandMod Number 2000
function main:rand
scoreboard players operation #CurD Number = #Temp FiDMax
scoreboard players operation #CurD Number -= #Temp FiDMin
scoreboard players operation #CurD Number *= #RandMod Number
scoreboard players operation #CurD Number /= #2000 Number
scoreboard players operation #CurD Number += #Temp FiDMin
#Inc
scoreboard players operation #CurDIncP Number = #Temp FiDIncP
#コンバート
execute if score #Temp FiConvFlag matches 1 run function skill:calc/act/damage/convert/fire/main
#Inc
execute unless score #Temp FiConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp FiConvFlag matches 1 run scoreboard players operation #Temp FiD += #CurD Number
