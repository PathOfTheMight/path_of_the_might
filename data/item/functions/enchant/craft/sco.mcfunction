scoreboard players set #PRemove Number 3
scoreboard players set #SRemove Number 3

data modify block ~ ~ ~ Items[0].tag.Rarity set value "Normal"
data remove block ~ ~ ~ Items[0].tag.UniqueName
#data modify block ~ ~ ~ Items[0].tag.Prefix set value [{Name:"None"},{Name:"None"},{Name:"None"}]
#data modify block ~ ~ ~ Items[0].tag.Suffix set value [{Name:"None"},{Name:"None"},{Name:"None"}]

scoreboard players set #Success Number 1
