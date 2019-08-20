execute if entity @s[nbt={EnderItems:[{Slot:3b}]}] store result entity @s EnderItems[0].tag.Weapon2 byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:3b}]}] run replaceitem entity @s enderchest.3 cod{CustomModelData:2,NoHold:1b,EnderChest:1b,Weapon2:1b,display:{Name:'{"text":"<オフハンド>","italic":false,"bold":true,"color":"white"}'}}
