#Conv
execute if score #PhConvP Number matches 1.. run function skill:calc/act/damage/convert/physical/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #PhD Number += #CurD Number
