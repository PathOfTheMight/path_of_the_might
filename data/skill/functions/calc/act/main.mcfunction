#triggerでEnderItem or SelectedItemのtagのSlotを#Slotに取得
#actメイン
#0-5:Mainhand 10-12:Offhand 20-23:Helmet 30-35:Chestplate 40-43:Gloves 50-53:Boots 60:Amulet 70:Ring1 80:Ring2 90:Belt

scoreboard players operation #ActiveSlot Number = #Slot Number
scoreboard players operation #ActiveSlot Number %= #10 Number
#装備スロット リストを0-0に
scoreboard players operation #Slot Number /= #10 Number
execute if score #Slot Number matches 0 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 1 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 2 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 3 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 4 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 5 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 6 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 7 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 8 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 9 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems

#発動Gemスロット 6:Granted Skill 発動Gemを0-0に
execute if score #ActiveSlot Number matches 0 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[0]
execute if score #ActiveSlot Number matches 1 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[1]
execute if score #ActiveSlot Number matches 2 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[2]
execute if score #ActiveSlot Number matches 3 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[3]
execute if score #ActiveSlot Number matches 4 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[4]
execute if score #ActiveSlot Number matches 5 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[5]
execute if score #ActiveSlot Number matches 6 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[6]

scoreboard players operation #ID Number = @s ID
execute positioned -40896 1 -40960 as @e[tag=StatusAEC,distance=..1] if score @s Number = #Slot Number if score @s ID = #ID Number run function skill:calc/act/aec/main

###ActiveGem
function skill:calc/act/gem/active/main

###Buff

###Dmg Rand
execute if score #PhDMin Number matches 1.. run function skill:calc/act/damage_roll/physical
execute if score #FiDMin Number matches 1.. run function skill:calc/act/damage_roll/fire
execute if score #CoDMin Number matches 1.. run function skill:calc/act/damage_roll/cold
execute if score #LnDMin Number matches 1.. run function skill:calc/act/damage_roll/lightning
execute if score #ChDMin Number matches 1.. run function skill:calc/act/damage_roll/chaos
