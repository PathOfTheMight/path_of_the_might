execute store result score #CurSocket Number run data get storage item: Item.tag.Gems
execute if score #CurSocket Number matches 0 run data modify storage item: Item.tag.Gems set value []

data modify storage gem: Gem set value {}
execute store result storage gem: Gem.Slot byte 1 run scoreboard players get #CurSocket Number
function item:enchant/roll/color/main
data modify storage item: Item.tag.Gems append from storage gem: Gem

#再帰処理
scoreboard players remove #NewSocket Number 1
execute if score #NewSocket Number matches 1.. run function item:enchant/add/socket/main
