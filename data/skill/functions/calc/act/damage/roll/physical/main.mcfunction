#ダメージロール
execute if entity @s[tag=Player] run function skill:calc/act/damage/roll/physical/player
execute if entity @s[tag=Enemy] run function skill:calc/act/damage/calc/range25
#Effectiveness
function skill:calc/act/damage/calc/effectiveness
#Inc
scoreboard players operation #CurDIncP Number = #Temp PhDIncP
#コンバート
execute if score #Temp PhConvFlag matches 1 run function skill:calc/act/damage/convert/physical/main
#Inc
execute unless score #Temp PhConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp PhConvFlag matches 1 run scoreboard players operation #Temp PhD += #CurD Number
