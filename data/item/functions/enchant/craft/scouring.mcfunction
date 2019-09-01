scoreboard players set #PRemove Number 3
scoreboard players set #SRemove Number 3

data modify block -40691 2 -40700 RecordItem.tag.Rarity set value "Normal"
data remove block -40691 2 -40700 RecordItem.tag.UniqueName

scoreboard players set #Success Number 1
