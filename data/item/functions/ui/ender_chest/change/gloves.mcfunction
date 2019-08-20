execute if entity @s[nbt={EnderItems:[{Slot:10b}]}] store result entity @s EnderItems[0].tag.Gloves byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:10b}]}] run replaceitem entity @s enderchest.10 cod{CustomModelData:5,NoHold:1b,EnderChest:1b,Gloves:1b,display:{Name:'{"text":"<手>","italic":false,"bold":true,"color":"white"}'}}
