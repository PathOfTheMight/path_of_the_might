execute store result score #Temp Number run data get storage item Item.tag.Prefix[{ID:"AddLocalArmor_AddLocalEnergyShield"}].Value1
scoreboard players operation #Armor Number += #Temp Number
execute store result score #AddEnergyShield Number run data get storage item Item.tag.Prefix[{ID:"AddLocalArmor_AddLocalEnergyShield"}].Value2
scoreboard players operation #EnergyShield Number += #Temp Number
