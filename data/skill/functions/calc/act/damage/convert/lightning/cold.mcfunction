scoreboard players operation #CurDIncP Number += #Temp CoDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp LnConvCoP
function skill:calc/act/damage/convert/calc
execute if score #Temp CoConvFlag matches 1.. run function skill:calc/act/damage/convert/cold/main
#Inc
execute unless score #Temp CoConvFlag matches 1.. run function skill:calc/act/damage/increase/main
execute unless score #Temp CoConvFlag matches 1.. run scoreboard players operation #Temp CoD += #CurD Number
