#ダメージロール
execute unless score #Temp PhDMin = #Temp PhDMax run function skill:calc/act/damage/roll/physical/roll
execute if score #Temp PhDMin = #Temp PhDMax run scoreboard players operation #CurD Number = #Temp PhDMin
#Effectiveness
function skill:calc/act/damage/calc/effectiveness
#Inc
scoreboard players operation #CurDIncP Number = #Temp PhDIncP
#コンバート
execute unless score #Temp PhConvFlag matches -1 run function skill:calc/act/damage/convert/physical/main
#Inc
execute if score #Temp PhConvFlag matches -1 run function skill:calc/act/damage/increase/main
execute if score #Temp PhConvFlag matches -1 run scoreboard players operation #Temp PhD += #CurD Number
