scoreboard players operation #CurDIncP Number += #Temp LnDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp PhConvLnP
function skill:calc/act/damage/convert/calc
execute if score #Temp LnConvFlag matches 1 run function skill:calc/act/damage/convert/lightning/main
#Inc
execute unless score #Temp LnConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp LnConvFlag matches 1 run scoreboard players operation #Temp LnD += #CurD Number
