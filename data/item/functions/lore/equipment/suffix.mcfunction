#Suffix
function item:enchant/calc/count_suffix
execute if score #SCount Number matches 1.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Suffix[0].Lore1
execute if score #SCount Number matches 1.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Suffix[0].Lore2

execute if score #SCount Number matches 2.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Suffix[1].Lore1
execute if score #SCount Number matches 2.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Suffix[1].Lore2

execute if score #SCount Number matches 3.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Suffix[2].Lore1
execute if score #SCount Number matches 3.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Suffix[2].Lore2
