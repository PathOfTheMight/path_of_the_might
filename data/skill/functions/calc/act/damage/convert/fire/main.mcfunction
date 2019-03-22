#スコア保存
scoreboard players operation #BaseFiD Number = #CurD Number
scoreboard players operation #BaseFiDIncP Number = #CurDIncP Number
scoreboard players operation #BaseFiDIncP Number += #FiDIncP Number
#Conv上限補正
execute if score #FiConvP Number matches 101.. run function skill:calc/act/damage/convert/fire/upper_limit
#Extra加算
scoreboard players operation #FiConvChP Number += #FiExtraChP Number
#Fire
execute unless score #FiConvFiP Number matches 100.. run function skill:calc/act/damage/convert/fire/fire
#Chaos
execute if score #FiConvChP Number matches 1.. run function skill:calc/act/damage/convert/fire/chaos
