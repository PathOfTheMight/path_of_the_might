#Prefix
execute unless data block -40691 2 -40700 RecordItem.tag.Prefix run data modify block -40691 2 -40700 RecordItem.tag.Prefix set value [{Slot:0b},{Slot:1b},{Slot:2b}]
execute store success score #P0 Number if data block -40691 2 -40700 RecordItem.tag.Prefix[{Slot:0b}].Name
execute store success score #P1 Number if data block -40691 2 -40700 RecordItem.tag.Prefix[{Slot:1b}].Name
execute store success score #P2 Number if data block -40691 2 -40700 RecordItem.tag.Prefix[{Slot:2b}].Name

scoreboard players operation #PTotal Number = #P0 Number
scoreboard players operation #PTotal Number += #P1 Number
scoreboard players operation #PTotal Number += #P2 Number
