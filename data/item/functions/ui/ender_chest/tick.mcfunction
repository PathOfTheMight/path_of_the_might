execute store result score #EnderChest Number run clear @s #main:all{EnderChest:1b} 0
execute if score #EnderChest Number matches 0 if entity @s[tag=EnderChest] run function status:equipments/fork_equipment

tag @s remove EnderChest
execute if score #EnderChest Number matches 1.. run tag @s add EnderChest

execute store result entity @s EnderItems[{}].tag.EnderChest byte 1 run scoreboard players get #1 Number
execute store result entity @s Inventory[{tag:{EnderChest:1b}}].tag.EnderChest byte 1 run scoreboard players get #0 Number

execute unless entity @s[nbt={EnderItems:[{Slot:0b,tag:{Weapon1:1b}}]}] run function item:ui/ender_chest/change/weapon1
execute unless entity @s[nbt={EnderItems:[{Slot:1b,tag:{Amulet:1b}}]}] run function item:ui/ender_chest/change/amulet
execute unless entity @s[nbt={EnderItems:[{Slot:2b,tag:{Helmet:1b}}]}] run function item:ui/ender_chest/change/helmet
execute unless entity @s[nbt={EnderItems:[{Slot:3b,tag:{Weapon2:1b}}]}] run function item:ui/ender_chest/change/weapon2
execute unless entity @s[nbt={EnderItems:[{Slot:9b,tag:{Ring1:1b}}]}] run function item:ui/ender_chest/change/ring1
execute unless entity @s[nbt={EnderItems:[{Slot:10b,tag:{Gloves:1b}}]}] run function item:ui/ender_chest/change/gloves
execute unless entity @s[nbt={EnderItems:[{Slot:11b,tag:{Chestplate:1b}}]}] run function item:ui/ender_chest/change/chestplate
execute unless entity @s[nbt={EnderItems:[{Slot:12b,tag:{Ring2:1b}}]}] run function item:ui/ender_chest/change/ring2
execute unless entity @s[nbt={EnderItems:[{Slot:19b,tag:{Belt:1b}}]}] run function item:ui/ender_chest/change/belt
execute unless entity @s[nbt={EnderItems:[{Slot:20b,tag:{Boots:1b}}]}] run function item:ui/ender_chest/change/boots

execute store result entity @s Inventory[{Slot:100b}].tag.Display int 1 run time query gametime
