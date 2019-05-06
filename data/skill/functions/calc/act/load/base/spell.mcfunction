#Add
scoreboard players operation #Temp PhDMin += @s PhSplDMin
scoreboard players operation #Temp PhDMax += @s PhSplDMax
scoreboard players operation #Temp FiDMin += @s FiSplDMin
scoreboard players operation #Temp FiDMax += @s FiSplDMax
scoreboard players operation #Temp CoDMin += @s CoSplDMin
scoreboard players operation #Temp CoDMax += @s CoSplDMax
scoreboard players operation #Temp LnDMin += @s LnSplDMin
scoreboard players operation #Temp LnDMax += @s LnSplDMax
scoreboard players operation #Temp ChDMin += @s ChSplDMin
scoreboard players operation #Temp ChDMax += @s ChSplDMax
#Inc
scoreboard players operation #Temp PhDIncP += @s PhSplDIncP
scoreboard players operation #Temp FiDIncP += @s FiDIncP
scoreboard players operation #Temp CoDIncP += @s CoDIncP
scoreboard players operation #Temp LnDIncP += @s LnDIncP
scoreboard players operation #Temp ChDIncP += @s ChDIncP
#Pene
scoreboard players operation #Temp FiPene += @s FiSplPene
scoreboard players operation #Temp CoPene += @s CoSplPene
scoreboard players operation #Temp LnPene += @s LnSplPene
#Crit
scoreboard players operation #Temp CritIncP += @s SplCritIncP
scoreboard players operation #Temp CritMultP += @s SplCritMultP
#Spd
scoreboard players operation #Temp CasSpdIncP += @s CasSpdIncP
function skill:calc/act/increase/cast_speed

#Convert
function skill:calc/act/load/base/convert
