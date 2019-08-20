#ダメージロール
execute unless score #Temp CoDMin = #Temp CoDMax run function skill:calc/act/damage/roll/cold/roll
execute if score #Temp CoDMin = #Temp CoDMax run scoreboard players operation #CurD Number = #Temp CoDMin
#Effectiveness
function skill:calc/act/damage/calc/effectiveness
#Inc
scoreboard players operation #CurDIncP Number = #Temp CoDIncP
#コンバート
execute unless score #Temp CoConvFlag matches -1 run function skill:calc/act/damage/convert/cold/main
#Inc
execute if score #Temp CoConvFlag matches -1 run function skill:calc/act/damage/increase/main
execute if score #Temp CoConvFlag matches -1 run scoreboard players operation #Temp CoD += #CurD Number
