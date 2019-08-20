execute if entity @s[nbt={EnderItems:[{Slot:19b}]}] store result entity @s EnderItems[0].tag.Belt byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:19b}]}] run replaceitem entity @s enderchest.19 cod{CustomModelData:9,NoHold:1b,EnderChest:1b,Belt:1b,display:{Name:'{"text":"<腰>","italic":false,"bold":true,"color":"white"}'}}
