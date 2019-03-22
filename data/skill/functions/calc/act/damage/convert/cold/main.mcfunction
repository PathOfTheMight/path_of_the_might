#スコア保存
scoreboard players operation #BaseCoD Number = #CurD Number
scoreboard players operation #BaseCoDIncP Number = #CurDIncP Number
scoreboard players operation #BaseCoDIncP Number += #CoDIncP Number
#Conv上限補正
execute if score #CoConvP Number matches 101.. run function skill:calc/act/damage/convert/cold/upper_limit
#Extra加算
scoreboard players operation #CoConvFiP Number += #CoExtraFiP Number
scoreboard players operation #CoConvChP Number += #CoExtraChP Number
#Cold
execute unless score #CoConvCoP Number matches 100.. run function skill:calc/act/damage/convert/cold/cold
#Fire
execute if score #CoConvFiP Number matches 1.. run function skill:calc/act/damage/convert/cold/fire
#Chaos
execute if score #CoConvChP Number matches 1.. run function skill:calc/act/damage/convert/cold/chaos
