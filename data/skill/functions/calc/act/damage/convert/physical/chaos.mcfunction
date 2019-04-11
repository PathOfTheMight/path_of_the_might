scoreboard players operation #CurD Number = #BasePhD Number
scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
scoreboard players operation #CurDIncP Number += #Temp ChDIncP
#Conv
scoreboard players operation #CurConvP Number = #Temp PhConvChP
function skill:calc/act/damage/convert/calc
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp ChD += #CurD Number
