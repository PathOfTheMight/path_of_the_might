scoreboard players operation #CurD Number = #BaseFiD Number
scoreboard players operation #CurDIncP Number = #BaseFiDIncP Number
#Conv
execute if score #Temp FiConvP matches 1.. run function skill:calc/act/damage/convert/fire/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp FiD += #CurD Number
