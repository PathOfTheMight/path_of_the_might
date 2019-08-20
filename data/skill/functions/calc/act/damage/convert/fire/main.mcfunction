#スコア保存
scoreboard players operation #BaseFiD Number = #CurD Number
scoreboard players operation #BaseFiDIncP Number = #CurDIncP Number
#Conv上限補正
execute if score #Temp FiConvP matches 101.. run function skill:calc/act/damage/convert/fire/upper_limit
#Chaos
execute if score #Temp FiConvChP matches 1.. run function skill:calc/act/damage/convert/fire/chaos
#Fire
execute unless score #Temp FiConvP matches 100.. run function skill:calc/act/damage/convert/fire/fire
