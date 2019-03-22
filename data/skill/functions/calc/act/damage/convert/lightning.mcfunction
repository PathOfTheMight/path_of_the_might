#スコア保存
scoreboard players operation #BasePhD Number = #CurD Number
scoreboard players operation #BasePhDIncP Number = #CurDIncP Number
scoreboard players operation #BasePhDIncP Number += #PhDIncP Number
#Conv上限補正
execute if score #PhConvP Number matches 101.. run 
    scoreboard players operation #PhConvLnP Number *= #100 Number
    scoreboard players operation #PhConvLnP Number /= #PhConvP Number
    scoreboard players operation #PhConvCoP Number *= #100 Number
    scoreboard players operation #PhConvCoP Number /= #PhConvP Number
    scoreboard players operation #PhConvFiP Number *= #100 Number
    scoreboard players operation #PhConvFiP Number /= #PhConvP Number
    scoreboard players operation #PhConvChP Number *= #100 Number
    scoreboard players operation #PhConvChP Number /= #PhConvP Number
    scoreboard players set #PhConvP Number 100
#Extra加算
scoreboard players operation #PhConvLnP Number += #PhExtraLnP Number
scoreboard players operation #PhConvCoP Number += #PhExtraCoP Number
scoreboard players operation #PhConvFiP Number += #PhExtraFiP Number
scoreboard players operation #PhConvChP Number += #PhExtraChP Number
#Phys
execute unless score #PhConvP Number matches 100.. run
    #scoreboard players operation #CurD Number = #BasePhD Number
    #scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
    #Conv
    scoreboard players operation #CurConvP Number = #PhConvP Number
    scoreboard players operation #CurConvP Number *= #-1 Number
    scoreboard players add #CurConvP Number 100
    function skill:calc/act/damage/convert/main
    #Inc
    function skill:calc/act/damage/increase/main
    scoreboard players operation #PhD Number += #CurD Number
#Light
execute if score #PhConvLnP Number matches 1.. run
    scoreboard players operation #CurD Number = #BasePhD Number
    scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
    scoreboard players operation #CurDIncP Number += #LnDIncP Number
    #Conv
    scoreboard players operation #CurConvP Number = #PhConvLnP Number
    function skill:calc/act/damage/convert/main
    execute if score #LnConvP Number matches 1.. run function skill:calc/act/damage/convert/lightning
    execute unless score #LnConvP Number matches 1.. run 
        #Inc
        function skill:calc/act/damage/increase/main
        scoreboard players operation #LnD Number += #CurD Number
#Cold
execute if score #PhConvCoP Number matches 1.. run
    scoreboard players operation #CurD Number = #BasePhD Number
    scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
    #Conv
    scoreboard players operation #CurConvP Number = #PhConvCoP Number
    function skill:calc/act/damage/convert/main
    execute if score #CoConvP Number matches 1.. run function skill:calc/act/damage/convert/cold
    execute unless score #CoConvP Number matches 1.. run 
        #Inc
        scoreboard players operation #CurDIncP Number += #CoDIncP Number
        function skill:calc/act/damage/increase/main
        scoreboard players operation #CoD Number += #CurD Number
#Fire
execute if score #PhConvFiP Number matches 1.. run
    scoreboard players operation #CurD Number = #BasePhD Number
    scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
    scoreboard players operation #CurDIncP Number += #FiDIncP Number
    #Conv
    scoreboard players operation #CurConvP Number = #PhConvFiP Number
    function skill:calc/act/damage/convert/main
    execute if score #FiConvP Number matches 1.. run function skill:calc/act/damage/convert/fire
    execute unless score #FiConvP Number matches 1.. run 
        #Inc
        function skill:calc/act/damage/increase/main
        scoreboard players operation #FiD Number += #CurD Number
#Chaos
execute if score #PhConvChP Number matches 1.. run
    scoreboard players operation #CurD Number = #BasePhD Number
    scoreboard players operation #CurDIncP Number = #BasePhDIncP Number
    scoreboard players operation #CurDIncP Number += #ChDIncP Number
    #Conv
    scoreboard players operation #CurConvP Number = #PhConvChP Number
    function skill:calc/act/damage/convert/main
    execute if score #ChConvP Number matches 1.. run function skill:calc/act/damage/convert/chaos
    execute unless score #ChConvP Number matches 1.. run 
        #Inc
        function skill:calc/act/damage/increase/main
        scoreboard players operation #ChD Number += #CurD Number
