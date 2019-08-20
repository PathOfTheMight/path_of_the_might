execute if entity @s[nbt={EnderItems:[{Slot:9b}]}] store result entity @s EnderItems[0].tag.Ring1 byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:9b}]}] run replaceitem entity @s enderchest.9 cod{CustomModelData:8,NoHold:1b,EnderChest:1b,Ring1:1b,display:{Name:'{"text":"<指>","italic":false,"bold":true,"color":"white"}'}}
