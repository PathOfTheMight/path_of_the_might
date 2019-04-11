scoreboard players operation #CurD Number = #BaseCoD Number
scoreboard players operation #CurDIncP Number = #BaseCoDIncP Number
#Conv
execute if score #Temp CoConvP matches 1.. run function skill:calc/act/damage/convert/cold/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp CoD += #CurD Number
