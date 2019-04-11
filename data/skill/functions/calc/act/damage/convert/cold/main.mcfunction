#スコア保存
scoreboard players operation #BaseCoD Number = #CurD Number
scoreboard players operation #BaseCoDIncP Number = #CurDIncP Number
#Conv上限補正
execute if score #Temp CoConvP matches 101.. run function skill:calc/act/damage/convert/cold/upper_limit
#Extra加算
scoreboard players operation #Temp CoConvFiP += #Temp CoExtraFiP
scoreboard players operation #Temp CoConvChP += #Temp CoExtraChP
#Fire
execute if score #Temp CoConvFiP matches 1.. run function skill:calc/act/damage/convert/cold/fire
#Chaos
execute if score #Temp CoConvChP matches 1.. run function skill:calc/act/damage/convert/cold/chaos
#Cold
execute unless score #Temp CoConvP matches 100.. run function skill:calc/act/damage/convert/cold/cold
