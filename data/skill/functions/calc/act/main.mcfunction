#triggerでEnderItem or SelectedItemのtagのSlotを#Slotに取得
#actメイン
#0-5:Mainhand 10-12:Offhand 20-23:Helmet 30-35:Chestplate 40-43:Gloves 50-53:Boots 60:Amulet 70:Ring1 80:Ring2 90:Belt
execute if score #Slot Number matches 0..9 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 10..19 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 20..29 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 30..39 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 40..49 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 50..59 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 60..69 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 70..79 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 80..89 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
execute if score #Slot Number matches 90..99 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems @s EnderItems[0].tag.Gems
#act中のスキル取得 6:Granted Skill
scoreboard players operation #Slot Number %= #10 Number
execute if score #Slot Number matches 0 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[0]
execute if score #Slot Number matches 1 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[1]
execute if score #Slot Number matches 2 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[2]
execute if score #Slot Number matches 3 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[3]
execute if score #Slot Number matches 4 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[4]
execute if score #Slot Number matches 5 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[5]
execute if score #Slot Number matches 6 run data modify entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gems[6]

###Atk
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Attack run function skill:calc/act/player/attack
###Spl
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Spell run function skill:calc/act/player/spell
###Proj
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Projectile run function skill:calc/act/player/projectile
###Area
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Area run function skill:calc/act/player/area
###Dur
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Duration run function skill:calc/act/player/duration

###ActiveGem
function skill:calc/act/gem/active/main

###SupportGem

###Buff

###Dmg Rand
execute if score #PhDMin Number matches 1.. run function skill:calc/act/damage_roll/physical
execute if score #FiDMin Number matches 1.. run function skill:calc/act/damage_roll/fire
execute if score #CoDMin Number matches 1.. run function skill:calc/act/damage_roll/cold
execute if score #LnDMin Number matches 1.. run function skill:calc/act/damage_roll/lightning
execute if score #ChDMin Number matches 1.. run function skill:calc/act/damage_roll/chaos
