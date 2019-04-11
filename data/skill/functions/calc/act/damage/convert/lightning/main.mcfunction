#スコア保存
scoreboard players operation #BaseLnD Number = #CurD Number
scoreboard players operation #BaseLnDIncP Number = #CurDIncP Number
#Conv上限補正
execute if score #Temp LnConvP matches 101.. run function skill:calc/act/damage/convert/lightning/upper_limit
#Extra加算
scoreboard players operation #Temp LnConvCoP += #Temp LnExtraCoP
scoreboard players operation #Temp LnConvFiP += #Temp LnExtraFiP
scoreboard players operation #Temp LnConvChP += #Temp LnExtraChP
#Cold
execute if score #Temp LnConvCoP matches 1.. run function skill:calc/act/damage/convert/lightning/cold
#Fire
execute if score #Temp LnConvFiP matches 1.. run function skill:calc/act/damage/convert/lightning/fire
#Chaos
execute if score #Temp LnConvChP matches 1.. run function skill:calc/act/damage/convert/lightning/chaos
#Light
execute unless score #Temp LnConvP matches 100.. run function skill:calc/act/damage/convert/lightning/lightning
