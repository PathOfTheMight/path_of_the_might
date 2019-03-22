#スコア保存
scoreboard players operation #BaseLnD Number = #CurD Number
scoreboard players operation #BaseLnDIncP Number = #CurDIncP Number
scoreboard players operation #BaseLnDIncP Number += #LnDIncP Number
#Conv上限補正
execute if score #LnConvP Number matches 101.. run function skill:calc/act/damage/convert/lightning/upper_limit
#Extra加算
scoreboard players operation #LnConvCoP Number += #LnExtraCoP Number
scoreboard players operation #LnConvFiP Number += #LnExtraFiP Number
scoreboard players operation #LnConvChP Number += #LnExtraChP Number
#Light
execute unless score #LnConvLnP Number matches 100.. run function skill:calc/act/damage/convert/lightning/lightning
#Cold
execute if score #LnConvCoP Number matches 1.. run function skill:calc/act/damage/convert/lightning/cold
#Fire
execute if score #LnConvFiP Number matches 1.. run function skill:calc/act/damage/convert/lightning/fire
#Chaos
execute if score #LnConvChP Number matches 1.. run function skill:calc/act/damage/convert/lightning/chaos
