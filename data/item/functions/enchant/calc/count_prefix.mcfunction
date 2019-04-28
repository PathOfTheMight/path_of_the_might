#Prefix
execute unless data block ~ ~ ~ Items[0].tag.Prefix run data modify block ~ ~ ~ Items[0].tag.Prefix set value [{Slot:0b},{Slot:1b},{Slot:2b}]
execute store success score #P0 Number if data block ~ ~ ~ Items[0].tag.Prefix[{Slot:0b}].Name
execute store success score #P1 Number if data block ~ ~ ~ Items[0].tag.Prefix[{Slot:1b}].Name
execute store success score #P2 Number if data block ~ ~ ~ Items[0].tag.Prefix[{Slot:2b}].Name

scoreboard players operation #PTotal Number = #P0 Number
scoreboard players operation #PTotal Number += #P1 Number
scoreboard players operation #PTotal Number += #P2 Number
