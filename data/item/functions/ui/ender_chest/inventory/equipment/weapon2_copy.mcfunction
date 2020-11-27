#2Hコピー
data modify storage item: Item set from storage items: Items[{Slot:0b}]
data modify storage item: Item.Slot set value 3b
data modify storage item: Item.tag.NoHold set value 1b
data modify storage item: Item.tag.CopiedWeapon set value 1b
data modify storage item: Item.tag.display.Lore append value '{"text":" (両手武器のコピー)","bold":true,"color":"green","italic":false}'
data modify storage items: Items append from storage item: Item
