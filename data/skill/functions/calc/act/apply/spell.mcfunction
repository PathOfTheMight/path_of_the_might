#Add
execute if score #DmgVer Number matches 1 run function skill:calc/act/apply/damage/normal
execute if score #DmgVer Number matches 2 run function skill:calc/act/apply/damage/min
execute if score #DmgVer Number matches 3 run function skill:calc/act/apply/damage/max

#Pene
scoreboard players operation @s FiPene = #Temp FiPene
scoreboard players operation @s CoPene = #Temp CoPene
scoreboard players operation @s LnPene = #Temp LnPene
