scoreboard players operation #CurD Number = #BaseCoD Number
scoreboard players operation #CurDIncP Number = #BaseCoDIncP Number
scoreboard players operation #CurDIncP Number += #FiDIncP Number
#Conv
scoreboard players operation #CurConvP Number = #CoConvFiP Number
function skill:calc/act/damage/convert/calc
execute if score #FiConvP Number matches 1.. run function skill:calc/act/damage/convert/fire/main
#Inc
execute unless score #FiConvP Number matches 1.. run function skill:calc/act/damage/increase/main
execute unless score #FiConvP Number matches 1.. run scoreboard players operation #FiD Number += #CurD Number
