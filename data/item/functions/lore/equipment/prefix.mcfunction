#Prefix
function item:enchant/calc/count_prefix
execute if score #PCount Number matches 1.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Prefix[0].Lore1
execute if score #PCount Number matches 1.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Prefix[0].Lore2

execute if score #PCount Number matches 2.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Prefix[1].Lore1
execute if score #PCount Number matches 2.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Prefix[1].Lore2

execute if score #PCount Number matches 3.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Prefix[2].Lore1
execute if score #PCount Number matches 3.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Prefix[2].Lore2
