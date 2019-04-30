#maxHealth書き換え
scoreboard players operation @s HpRatio = #Hp Number
execute store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}].Amount int 1 run scoreboard players get #Hp Number
