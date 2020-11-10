function oh_my_dat:please
execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItems set from entity @s EnderItems
execute if score #Success Number matches 1 run function item:ui/ender_chest/update
