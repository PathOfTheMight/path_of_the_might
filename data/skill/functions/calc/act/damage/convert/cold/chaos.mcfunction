scoreboard players operation #CurD Number = #BaseCoD Number
scoreboard players operation #CurDIncP Number = #BaseCoDIncP Number
scoreboard players operation #CurDIncP Number += #ChDIncP Number
#Conv
scoreboard players operation #CurConvP Number = #CoConvChP Number
function skill:calc/act/damage/convert/calc
execute if score #ChConvP Number matches 1.. run function skill:calc/act/damage/convert/chaos/main
#Inc
execute unless score #ChConvP Number matches 1.. run function skill:calc/act/damage/increase/main
execute unless score #ChConvP Number matches 1.. run scoreboard players operation #ChD Number += #CurD Number
