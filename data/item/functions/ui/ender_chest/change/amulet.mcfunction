execute if entity @s[nbt={EnderItems:[{Slot:1b}]}] store result entity @s EnderItems[0].tag.Amulet byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:1b}]}] run replaceitem entity @s enderchest.1 cod{CustomModelData:7,NoHold:1b,EnderChest:1b,Amulet:1b,display:{Name:'{"text":"<首>","italic":false,"bold":true,"color":"white"}'}}
