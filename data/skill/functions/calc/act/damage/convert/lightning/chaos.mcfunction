scoreboard players operation #CurD Number = #BaseLnD Number
scoreboard players operation #CurDIncP Number = #BaseLnDIncP Number
scoreboard players operation #CurDIncP Number += #Temp ChDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp LnConvChP
function skill:calc/act/damage/convert/calc
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp ChD += #CurD Number
