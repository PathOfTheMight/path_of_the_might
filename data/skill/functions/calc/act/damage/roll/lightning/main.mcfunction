#ダメージロール
execute if entity @s[tag=Player] run function skill:calc/act/damage/roll/lightning/player
execute if entity @s[tag=Enemy] run function skill:calc/act/damage/calc/range85
#Effectiveness
function skill:calc/act/damage/calc/effectiveness
#Inc
scoreboard players operation #CurDIncP Number = #Temp LnDIncP
#コンバート
execute if score #Temp LnConvFlag matches 1 run function skill:calc/act/damage/convert/lightning/main
#Inc
execute unless score #Temp LnConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp LnConvFlag matches 1 run scoreboard players operation #Temp LnD += #CurD Number
