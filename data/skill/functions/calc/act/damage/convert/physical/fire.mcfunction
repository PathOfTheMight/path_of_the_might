scoreboard players operation #CurD Number = #BasePhD Number
scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
scoreboard players operation #CurDIncP Number += #Temp FiDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp PhConvFiP
function skill:calc/act/damage/convert/calc
execute if score #Temp FiConvFlag matches 1 run function skill:calc/act/damage/convert/fire/main
#Inc
execute unless score #Temp FiConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp FiConvFlag matches 1 run scoreboard players operation #Temp FiD += #CurD Number
