#Conv
execute if score #CoConvP Number matches 1.. run function skill:calc/act/damage/convert/cold/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #CoD Number += #CurD Number
