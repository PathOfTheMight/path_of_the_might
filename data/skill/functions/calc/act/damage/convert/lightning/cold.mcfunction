scoreboard players operation #CurD Number = #BaseLnD Number
scoreboard players operation #CurDIncP Number = #BaseLnDIncP Number
scoreboard players operation #CurDIncP Number += #CoDIncP Number
#Conv
scoreboard players operation #CurConvP Number = #LnConvCoP Number
function skill:calc/act/damage/convert/calc
execute if score #CoConvP Number matches 1.. run function skill:calc/act/damage/convert/cold/main
#Inc
execute unless score #CoConvP Number matches 1.. run function skill:calc/act/damage/increase/main
execute unless score #CoConvP Number matches 1.. run scoreboard players operation #CoD Number += #CurD Number
