execute if entity @s[nbt={EnderItems:[{Slot:0b}]}] store result entity @s EnderItems[0].tag.Weapon1 byte 1 run scoreboard players get #1 Number
execute unless entity @s[nbt={EnderItems:[{Slot:0b}]}] run replaceitem entity @s enderchest.0 cod{CustomModelData:1,NoHold:1b,EnderChest:1b,Weapon1:1b,display:{Name:'{"text":"<メインハンド>","italic":false,"bold":true,"color":"white"}'}}
