#ダメージロール
execute unless score #Temp FiDMin = #Temp FiDMax run function skill:calc/act/damage/roll/fire/roll
execute if score #Temp FiDMin = #Temp FiDMax run scoreboard players operation #CurD Number = #Temp FiDMin
#Effectiveness
function skill:calc/act/damage/calc/effectiveness
#Inc
scoreboard players operation #CurDIncP Number = #Temp FiDIncP
#コンバート
execute if score #Temp FiConvFlag matches 1 run function skill:calc/act/damage/convert/fire/main
#Inc
execute unless score #Temp FiConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp FiConvFlag matches 1 run scoreboard players operation #Temp FiD += #CurD Number
