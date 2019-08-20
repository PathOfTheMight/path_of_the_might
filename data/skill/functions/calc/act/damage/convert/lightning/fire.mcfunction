scoreboard players operation #CurD Number = #BaseLnD Number
scoreboard players operation #CurDIncP Number = #BaseLnDIncP Number
scoreboard players operation #CurDIncP Number += #Temp FiDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp LnConvFiP
function skill:calc/act/damage/convert/calc
execute if score #Temp FiConvFlag matches 1run function skill:calc/act/damage/convert/fire/main
#Inc
execute unless score #Temp FiConvFlag matches 1run function skill:calc/act/damage/increase/main
execute unless score #Temp FiConvFlag matches 1run scoreboard players operation #Temp FiD += #CurD Number
