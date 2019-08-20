scoreboard players operation @s MovSpdIncP = @s PMovSpdIncP
scoreboard players operation @s MovSpdIncP += @s EMovSpdIncP

execute store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"generic.movementSpeed"}].Amount double 0.001 run scoreboard players get @s MovSpdIncP
