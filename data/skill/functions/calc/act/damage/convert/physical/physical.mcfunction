scoreboard players operation #CurD Number = #BasePhD Number
scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
#Conv
execute if score #Temp PhConvP matches 1.. run function skill:calc/act/damage/convert/physical/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp PhD += #CurD Number
