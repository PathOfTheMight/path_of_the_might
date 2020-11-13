execute store result score #Temp Number run data get storage item: Item.tag.Prefix[{ID:"AddPhysicalLocalDamage"}].Value1
scoreboard players operation #PhDMin Number += #Temp Number
execute store result score #Temp Number run data get storage item: Item.tag.Prefix[{ID:"AddPhysicalLocalDamage"}].Value2
scoreboard players operation #PhDMax Number += #Temp Number
