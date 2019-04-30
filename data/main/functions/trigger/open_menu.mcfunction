clear @s minecraft:leather_helmet{Head:1b}
replaceitem entity @s armor.head minecraft:leather_helmet{Head:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"head"}]} 1
execute store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}].Amount int 1 run scoreboard players get @s HpRatio
execute store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"generic.armor"}].Amount int 1 run scoreboard players get @s EsRatio
