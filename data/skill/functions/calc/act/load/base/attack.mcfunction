#Add
scoreboard players operation #Temp PhDMin += @s PhAtkDMin
scoreboard players operation #Temp PhDMax += @s PhAtkDMax
scoreboard players operation #Temp FiDMin += @s FiAtkDMin
scoreboard players operation #Temp FiDMax += @s FiAtkDMax
scoreboard players operation #Temp CoDMin += @s CoAtkDMin
scoreboard players operation #Temp CoDMax += @s CoAtkDMax
scoreboard players operation #Temp LnDMin += @s LnAtkDMin
scoreboard players operation #Temp LnDMax += @s LnAtkDMax
scoreboard players operation #Temp ChDMin += @s ChAtkDMin
scoreboard players operation #Temp ChDMax += @s ChAtkDMax
#Inc
scoreboard players operation #Temp PhDIncP += @s PhAtkDIncP
scoreboard players operation #Temp FiDIncP += @s FiDIncP
scoreboard players operation #Temp CoDIncP += @s CoDIncP
scoreboard players operation #Temp LnDIncP += @s LnDIncP
scoreboard players operation #Temp ChDIncP += @s ChDIncP
#Pene
scoreboard players operation #Temp FiPene += @s FiAtkPene
scoreboard players operation #Temp CoPene += @s CoAtkPene
scoreboard players operation #Temp LnPene += @s LnAtkPene
#Crit
scoreboard players operation #Temp CritP += @s EAtkCriP
scoreboard players operation #Temp CritIncP += @s AtkCritIncP
scoreboard players operation #Temp CritMultP += @s AtkCritMultP
#Spd
scoreboard players operation #Temp AtkSpdIncP += @s AtkSpdIncP
function skill:calc/act/increase/attack_speed
#Acc
scoreboard players operation #Temp Acc += @s Acc
#Convert
function skill:calc/act/load/base/convert
