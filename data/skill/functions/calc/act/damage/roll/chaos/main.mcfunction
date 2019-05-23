#ダメージロール
execute unless score #Temp ChDMin = #Temp ChDMax run function skill:calc/act/damage/roll/chaos/roll
execute if score #Temp ChDMin = #Temp ChDMax run scoreboard players operation #CurD Number = #Temp ChDMin
#Effectiveness
function skill:calc/act/damage/calc/effectiveness
#Inc
scoreboard players operation #CurDIncP Number = #Temp ChDIncP
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp ChD += #CurD Number
