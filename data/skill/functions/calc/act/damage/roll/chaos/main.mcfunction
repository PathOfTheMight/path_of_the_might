#ダメージロール
execute if entity @s[tag=Player] run function skill:calc/act/damage/roll/chaos/player
execute if entity @s[tag=Enemy] run function skill:calc/act/damage/calc/range25
#Effectiveness
function skill:calc/act/damage/calc/effectiveness
#Inc
scoreboard players operation #CurDIncP Number = #Temp ChDIncP
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp ChD += #CurD Number
