scoreboard players operation #CurD Number = #BasePhD Number
scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
scoreboard players operation #CurDIncP Number += #CoDIncP Number
#Conv
scoreboard players operation #CurConvP Number = #PhConvCoP Number
function skill:calc/act/damage/convert/calc
execute if score #CoConvP Number matches 1.. run function skill:calc/act/damage/convert/cold/main
#Inc
execute unless score #CoConvP Number matches 1.. run function skill:calc/act/damage/increase/main
execute unless score #CoConvP Number matches 1.. run scoreboard players operation #CoD Number += #CurD Number
