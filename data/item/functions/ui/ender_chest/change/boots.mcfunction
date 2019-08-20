execute if entity @s[nbt={EnderItems:[{Slot:20b}]}] store result entity @s EnderItems[0].tag.Boots byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:20b}]}] run replaceitem entity @s enderchest.20 cod{CustomModelData:6,NoHold:1b,EnderChest:1b,Boots:1b,display:{Name:'{"text":"<足>","italic":false,"bold":true,"color":"white"}'}}
