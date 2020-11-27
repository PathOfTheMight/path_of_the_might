execute unless data storage items: Items[{Slot:23b,tag:{ShowSkill:1b}}] run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:23b}]
execute unless data storage items: Items[{Slot:23b,tag:{ShowSkill:1b}}] run function item:ui/ender_chest/give_back
execute unless data storage items: Items[{Slot:23b,tag:{ShowSkill:1b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:23b,tag:{CustomModelData:1,NoHold:1b,display:{Name:'{"text":"<スキル表示>","italic":false,"bold":true,"color":"white"}'}}}

scoreboard players set #EnchSound Number 1

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryContainer set from storage items: Items
data modify storage items: Items set value [{id:"minecraft:cod",Count:1b,Slot:23b,tag:{CustomModelData:1,NoHold:1b,ShowSkill:1b,display:{Name:'{"text":"<インベントリ表示>","italic":false,"bold":true,"color":"white"}'}}}]
data modify storage items: Items append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillContainer[]
tag @s add SkillPage
