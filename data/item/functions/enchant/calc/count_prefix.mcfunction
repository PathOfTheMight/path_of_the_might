#Prefix
data modify block -40896 1 -40960 Text1 set from block ~ ~ ~ Items[0].tag.Prefix[0].Name
execute store success score #P0 Number unless block -40896 1 -40960 oak_sign{Text1:'{"text":"None"}'}
data modify block -40896 1 -40960 Text1 set from block ~ ~ ~ Items[0].tag.Prefix[1].Name
execute store success score #P1 Number unless block -40896 1 -40960 oak_sign{Text1:'{"text":"None"}'}
data modify block -40896 1 -40960 Text1 set from block ~ ~ ~ Items[0].tag.Prefix[2].Name
execute store success score #P2 Number unless block -40896 1 -40960 oak_sign{Text1:'{"text":"None"}'}

scoreboard players set #PTotal Number 0
scoreboard players operation #PTotal Number += #P0 Number
scoreboard players operation #PTotal Number += #P1 Number
scoreboard players operation #PTotal Number += #P2 Number
