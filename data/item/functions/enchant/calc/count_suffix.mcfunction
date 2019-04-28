#Suffix
execute unless data block ~ ~ ~ Items[0].tag.Suffix run data modify block ~ ~ ~ Items[0].tag.Suffix set value [{Slot:0b},{Slot:1b},{Slot:2b}]
execute store success score #S0 Number if data block ~ ~ ~ Items[0].tag.Suffix[{Slot:0b}].Name
execute store success score #S1 Number if data block ~ ~ ~ Items[0].tag.Suffix[{Slot:1b}].Name
execute store success score #S2 Number if data block ~ ~ ~ Items[0].tag.Suffix[{Slot:2b}].Name

scoreboard players operation #STotal Number = #S0 Number
scoreboard players operation #STotal Number += #S1 Number
scoreboard players operation #STotal Number += #S2 Number
