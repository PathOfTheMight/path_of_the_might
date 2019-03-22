#スコア保存
scoreboard players operation #BasePhD Number = #CurD Number
scoreboard players operation #BasePhDIncP Number = #CurDIncP Number
scoreboard players operation #BasePhDIncP Number += #PhDIncP Number
#Conv上限補正
execute if score #PhConvP Number matches 101.. run function skill:calc/act/damage/convert/physical/upper_limit
#Extra加算
scoreboard players operation #PhConvLnP Number += #PhExtraLnP Number
scoreboard players operation #PhConvCoP Number += #PhExtraCoP Number
scoreboard players operation #PhConvFiP Number += #PhExtraFiP Number
scoreboard players operation #PhConvChP Number += #PhExtraChP Number
#Phys
execute unless score #PhConvP Number matches 100.. run function skill:calc/act/damage/convert/physical/physical
#Light
execute if score #PhConvLnP Number matches 1.. run function skill:calc/act/damage/convert/physical/lightning
#Cold
execute if score #PhConvCoP Number matches 1.. run function skill:calc/act/damage/convert/physical/cold
#Fire
execute if score #PhConvFiP Number matches 1.. run function skill:calc/act/damage/convert/physical/fire
#Chaos
execute if score #PhConvChP Number matches 1.. run function skill:calc/act/damage/convert/physical/chaos
