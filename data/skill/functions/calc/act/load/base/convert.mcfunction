#追加ロード
scoreboard players operation #Temp PhConvLnP += @s PhConvLnP
scoreboard players operation #Temp PhConvCoP += @s PhConvCoP
scoreboard players operation #Temp PhConvFiP += @s PhConvFiP
scoreboard players operation #Temp PhConvChP += @s PhConvChP
scoreboard players operation #Temp PhConvP += #Temp PhConvLnP
scoreboard players operation #Temp PhConvP += #Temp PhConvCoP
scoreboard players operation #Temp PhConvP += #Temp PhConvFiP
scoreboard players operation #Temp PhConvP += #Temp PhConvChP
scoreboard players operation #Temp PhExtraLnP += #Temp PhConvLnP
scoreboard players operation #Temp PhExtraCoP += #Temp PhConvCoP
scoreboard players operation #Temp PhExtraFiP += #Temp PhConvFiP
scoreboard players operation #Temp PhExtraChP += #Temp PhConvChP
scoreboard players operation #Temp PhExtraLnP += @s PhExtraLnP
scoreboard players operation #Temp PhExtraCoP += @s PhExtraCoP
scoreboard players operation #Temp PhExtraFiP += @s PhExtraFiP
scoreboard players operation #Temp PhExtraChP += @s PhExtraChP
execute if score #Temp PhExtraLnP matches 0 if score #Temp PhExtraCoP matches 0 if score #Temp PhExtraFiP matches 0 if score #Temp PhExtraChP matches 0 run scoreboard players set #Temp PhConvFlag -1

scoreboard players operation #Temp LnConvCoP += @s LnConvCoP
scoreboard players operation #Temp LnConvFiP += @s LnConvFiP
scoreboard players operation #Temp LnConvChP += @s LnConvChP
scoreboard players operation #Temp LnConvP += #Temp LnConvCoP
scoreboard players operation #Temp LnConvP += #Temp LnConvFiP
scoreboard players operation #Temp LnConvP += #Temp LnConvChP
scoreboard players operation #Temp LnExtraCoP += #Temp LnConvCoP
scoreboard players operation #Temp LnExtraFiP += #Temp LnConvFiP
scoreboard players operation #Temp LnExtraChP += #Temp LnConvChP
scoreboard players operation #Temp LnExtraCoP += @s LnExtraCoP
scoreboard players operation #Temp LnExtraFiP += @s LnExtraFiP
scoreboard players operation #Temp LnExtraChP += @s LnExtraChP
execute if score #Temp LnExtraCoP matches 0 if score #Temp LnExtraFiP matches 0 if score #Temp LnExtraChP matches 0 run scoreboard players set #Temp LnConvFlag -1

scoreboard players operation #Temp CoConvFiP += @s CoConvFiP
scoreboard players operation #Temp CoConvChP += @s CoConvChP
scoreboard players operation #Temp CoConvP += #Temp CoConvFiP
scoreboard players operation #Temp CoConvP += #Temp CoConvChP
scoreboard players operation #Temp CoExtraFiP += #Temp CoConvFiP
scoreboard players operation #Temp CoExtraChP += #Temp CoConvChP
scoreboard players operation #Temp CoExtraFiP += @s CoExtraFiP
scoreboard players operation #Temp CoExtraChP += @s CoExtraChP
execute if score #Temp CoExtraFiP matches 0 if score #Temp CoExtraChP matches 0 run scoreboard players set #Temp CoConvFlag -1

scoreboard players operation #Temp FiConvChP += @s FiConvChP
scoreboard players operation #Temp FiConvP += #Temp FiConvChP
scoreboard players operation #Temp FiExtraChP += #Temp FiConvChP
scoreboard players operation #Temp FiExtraChP += @s FiExtraChP
execute if score #Temp FiExtraChP matches 0 run scoreboard players set #Temp FiConvFlag -1
