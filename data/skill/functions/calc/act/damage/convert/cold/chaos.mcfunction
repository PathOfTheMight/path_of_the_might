scoreboard players operation #CurD Number = #BaseCoD Number
scoreboard players operation #CurDIncP Number = #BaseCoDIncP Number
scoreboard players operation #CurDIncP Number += #Temp ChDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp CoConvChP
function skill:calc/act/damage/convert/calc
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp ChD += #CurD Number
