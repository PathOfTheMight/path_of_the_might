execute store result score #Temp Number run data get storage item Item.tag.Prefix[{ID:"AddLocalArmor_AddLocalEvasion"}].Value1
scoreboard players operation #Armor Number += #Temp Number
execute store result score #AddEvasion Number run data get storage item Item.tag.Prefix[{ID:"AddLocalArmor_AddLocalEvasion"}].Value2
scoreboard players operation #Evasion Number += #Temp Number
