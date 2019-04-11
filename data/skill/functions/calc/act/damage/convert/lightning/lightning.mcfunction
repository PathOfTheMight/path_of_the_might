scoreboard players operation #CurD Number = #BaseLnD Number
scoreboard players operation #CurDIncP Number = #BaseLnDIncP Number
#Conv
execute if score #Temp LnConvP matches 1.. run function skill:calc/act/damage/convert/lightning/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #Temp LnD += #CurD Number
