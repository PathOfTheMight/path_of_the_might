execute if entity @s[nbt={EnderItems:[{Slot:12b}]}] store result entity @s EnderItems[0].tag.Ring2 byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:12b}]}] run replaceitem entity @s enderchest.12 cod{CustomModelData:8,NoHold:1b,EnderChest:1b,Ring2:1b,display:{Name:'{"text":"<指>","italic":false,"bold":true,"color":"white"}'}}
