#Suffix
data modify block -40896 1 -40960 Text1 set from block ~ ~ ~ Items[0].tag.Suffix[0].Name
execute store success score #S0 Number unless block -40896 1 -40960 oak_sign{Text1:'{"text":"None"}'}
data modify block -40896 1 -40960 Text1 set from block ~ ~ ~ Items[0].tag.Suffix[1].Name
execute store success score #S1 Number unless block -40896 1 -40960 oak_sign{Text1:'{"text":"None"}'}
data modify block -40896 1 -40960 Text1 set from block ~ ~ ~ Items[0].tag.Suffix[2].Name
execute store success score #S2 Number unless block -40896 1 -40960 oak_sign{Text1:'{"text":"None"}'}

scoreboard players set #STotal Number 0
scoreboard players operation #STotal Number += #S0 Number
scoreboard players operation #STotal Number += #S1 Number
scoreboard players operation #STotal Number += #S2 Number
