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
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Attack run
#Add
scoreboard players operation #PhDMin Number = @s PhAtkDMin
scoreboard players operation #PhDMax Number = @s PhAtkDMax
scoreboard players operation #FiDMin Number = @s FiAtkDMin
scoreboard players operation #FiDMax Number = @s FiAtkDMax
scoreboard players operation #CoDMin Number = @s CoAtkDMin
scoreboard players operation #CoDMax Number = @s CoAtkDMax
scoreboard players operation #LnDMin Number = @s LnAtkDMin
scoreboard players operation #LnDMax Number = @s LnAtkDMax
scoreboard players operation #ChDMin Number = @s ChAtkDMin
scoreboard players operation #ChDMax Number = @s ChAtkDMax
#Inc
scoreboard players operation #PhDIncP Number = @s PhAtkDIncP
scoreboard players operation #FiDIncP Number = @s FiDIncP
scoreboard players operation #CoDIncP Number = @s CoDIncP
scoreboard players operation #LnDIncP Number = @s LnDIncP
scoreboard players operation #ChDIncP Number = @s ChDIncP
scoreboard players set #OthDIncP Number 0
#Pene
scoreboard players operation #FiPene Number = @s FiAtkPene
scoreboard players operation #CoPene Number = @s CoAtkPene
scoreboard players operation #LnPene Number = @s LnAtkPene
#Crit
scoreboard players operation #CritP Number = @s EAtkCriP
scoreboard players operation #CritIncP Number = @s AtkCritIncP
scoreboard players operation #CritMultP Number = @s AtkCritMultP

###Spl
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Spell run
#Add
scoreboard players operation #PhDMin Number = @s PhSplDMin
scoreboard players operation #PhDMax Number = @s PhSplDMax
scoreboard players operation #FiDMin Number = @s FiSplDMin
scoreboard players operation #FiDMax Number = @s FiSplDMax
scoreboard players operation #CoDMin Number = @s CoSplDMin
scoreboard players operation #CoDMax Number = @s CoSplDMax
scoreboard players operation #LnDMin Number = @s LnSplDMin
scoreboard players operation #LnDMax Number = @s LnSplDMax
scoreboard players operation #ChDMin Number = @s ChSplDMin
scoreboard players operation #ChDMax Number = @s ChSplDMax
#Inc
scoreboard players operation #PhDIncP Number = @s PhSplDIncP
scoreboard players operation #FiDIncP Number = @s FiDIncP
scoreboard players operation #CoDIncP Number = @s CoDIncP
scoreboard players operation #LnDIncP Number = @s LnDIncP
scoreboard players operation #ChDIncP Number = @s ChDIncP
scoreboard players set #OthDIncP Number 0
#Pene
scoreboard players operation #FiPene Number = @s FiSplPene
scoreboard players operation #CoPene Number = @s CoSplPene
scoreboard players operation #LnPene Number = @s LnSplPene
#Crit
scoreboard players operation #CritIncP Number = @s SplCritIncP
scoreboard players operation #CritMultP Number = @s SplCritMultP

###Dmg Rand
#Phys
execute if score #PhDMin Number matches 1.. run function
scoreboard players operation #RandMod Number = #PhDMax Number
scoreboard players operation #RandMod Number -= #PhDMin Number
function main:RandMod
scoreboard players operation #PhD Number = #RandMod Number
#Fire
execute if score #FiDMin Number matches 1.. run function
scoreboard players operation #RandMod Number = #FiDMax Number
scoreboard players operation #RandMod Number -= #FiDMin Number
function main:RandMod
scoreboard players operation #FiD Number = #RandMod Number
#Cold
execute if score #CoDMin Number matches 1.. run function
scoreboard players operation #RandMod Number = #CoDMax Number
scoreboard players operation #RandMod Number -= #CoDMin Number
function main:RandMod
scoreboard players operation #CoD Number = #RandMod Number
#Light (範囲>2147につき特殊)
execute if score #LnDMin Number matches 1.. run function
scoreboard players set #RandMod Number 2000
function main:RandMod
scoreboard players operation #LnDMax Number -= #LnDMin Number
scoreboard players operation #LnDMax Number *= #RandMod Number
scoreboard players operation #LnDMax Number /= #2000 Number
scoreboard players operation #LnDMin Number += #LnDMax Number
#Chaos
execute if score #ChDMin Number matches 1.. run function
scoreboard players operation #RandMod Number = #ChDMax Number
scoreboard players operation #RandMod Number -= #ChDMin Number
function main:RandMod
scoreboard players operation #ChD Number = #RandMod Number

###Proj
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Projectile run
scoreboard players operation #OthDIncP Number += @s ProjDIncP
scoreboard players operation #ProjSpdIncP Number += @s ProjSpdIncP
scoreboard players operation #Pier Number = @s Pier
scoreboard players operation #Fork Number = @s Fork
scoreboard players operation #Chai Number = @s Chai

###Area
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Area run
scoreboard players operation #OthDIncP Number += @s AreaDIncP
scoreboard players operation #RngIncP Number += @s RngIncP

###Dur
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.CurrentGem.Tags.Duration run
scoreboard players operation #SklDurIncP Number = @s SklDurIncP

###SupportGem
execute 

