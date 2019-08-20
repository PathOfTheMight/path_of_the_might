#スコア保存
scoreboard players operation #BasePhD Number = #CurD Number
scoreboard players operation #BasePhDIncP Number = #CurDIncP Number
#Conv上限補正
execute if score #Temp PhConvP matches 101.. run function skill:calc/act/damage/convert/physical/upper_limit
#Light
execute if score #Temp PhConvLnP matches 1.. run function skill:calc/act/damage/convert/physical/lightning
#Cold
execute if score #Temp PhConvCoP matches 1.. run function skill:calc/act/damage/convert/physical/cold
#Fire
execute if score #Temp PhConvFiP matches 1.. run function skill:calc/act/damage/convert/physical/fire
#Chaos
execute if score #Temp PhConvChP matches 1.. run function skill:calc/act/damage/convert/physical/chaos
#Phys
execute unless score #Temp PhConvP matches 100.. run function skill:calc/act/damage/convert/physical/physical
