execute store result score #Temp Number run data get storage item Item.tag.Prefix[{ID:"AddLocalEvasion_AddLocalEnergyShield"}].Value1
scoreboard players operation #Evasion Number += #Temp Number
execute store result score #Temp Number run data get storage item Item.tag.Prefix[{ID:"AddLocalEvasion_AddLocalEnergyShield"}].Value2
scoreboard players operation #EnergyShield Number += #Temp Number
