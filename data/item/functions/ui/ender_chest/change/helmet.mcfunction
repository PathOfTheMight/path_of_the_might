execute if entity @s[nbt={EnderItems:[{Slot:2b}]}] store result entity @s EnderItems[0].tag.Helmet byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:2b}]}] run replaceitem entity @s enderchest.2 cod{CustomModelData:3,NoHold:1b,EnderChest:1b,Helmet:1b,display:{Name:'{"text":"<頭>","italic":false,"bold":true,"color":"white"}'}}
