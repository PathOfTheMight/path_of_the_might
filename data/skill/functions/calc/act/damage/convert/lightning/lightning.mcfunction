#Conv
execute if score #LnConvP Number matches 1.. run function skill:calc/act/damage/convert/lightning/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #LnD Number += #CurD Number
