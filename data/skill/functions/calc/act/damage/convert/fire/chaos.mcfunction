scoreboard players operation #CurD Number = #BaseFiD Number
scoreboard players operation #CurDIncP Number = #BaseFiDIncP Number
scoreboard players operation #CurDIncP Number += #Temp ChDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp FiConvChP
function skill:calc/act/damage/convert/calc
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp ChD += #CurD Number
