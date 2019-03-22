scoreboard players operation #CurD Number = #BasePhD Number
scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
scoreboard players operation #CurDIncP Number += #LnDIncP Number
#Conv
scoreboard players operation #CurConvP Number = #PhConvLnP Number
function skill:calc/act/damage/convert/calc
execute if score #LnConvP Number matches 1.. run function skill:calc/act/damage/convert/lightning/main
#Inc
execute unless score #LnConvP Number matches 1.. run function skill:calc/act/damage/increase/main
execute unless score #LnConvP Number matches 1.. run scoreboard players operation #LnD Number += #CurD Number
