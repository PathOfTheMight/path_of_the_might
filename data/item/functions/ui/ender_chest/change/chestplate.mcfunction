execute if entity @s[nbt={EnderItems:[{Slot:11b}]}] store result entity @s EnderItems[0].tag.Chestplate byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:11b}]}] run replaceitem entity @s enderchest.11 cod{CustomModelData:4,NoHold:1b,EnderChest:1b,Chestplate:1b,display:{Name:'{"text":"<胴体>","italic":false,"bold":true,"color":"white"}'}}
