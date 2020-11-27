data modify storage items: Items set value [{id:"minecraft:cod",Count:1b,Slot:23b,tag:{NoHold:1b}}]
data modify storage items: Items append from entity @s EnderItems[]

function item:ui/ender_chest/playsound/reset

#インベントリ切り替え
execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:23b}] set from storage items: Items[{Slot:23b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/skill/show_inventory

data modify block 2 3 2 Items set from storage items: Items
loot replace entity @s enderchest.0 mine 2 3 2 debug_stick

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItems set from entity @s EnderItems
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld set from entity @s EnderItems

clear @s #main:all{NoHold:1b}
function item:ui/ender_chest/playsound/playsound
