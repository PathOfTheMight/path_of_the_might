#Conv
execute if score #FiConvP Number matches 1.. run function skill:calc/act/damage/convert/fire/base
#Inc
function skill:calc/act/damage/increase/main
scoreboard players operation #FiD Number += #CurD Number
