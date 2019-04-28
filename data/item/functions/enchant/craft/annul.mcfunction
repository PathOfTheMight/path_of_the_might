scoreboard players set #RandMod Number 2
function main:rand

##Pあり:-P Sあり:-S PSあり:1/2:-P 1/2:-S
execute if score #PTotal Number matches 1.. if score #STotal Number matches 0 run scoreboard players set #PRemove Number 1
execute if score #PTotal Number matches 0 if score #STotal Number matches 1.. run scoreboard players set #SRemove Number 1
execute if score #PTotal Number matches 1.. if score #STotal Number matches 1.. if score #RandMod Number matches 0 run scoreboard players set #PRemove Number 1
execute if score #PTotal Number matches 1.. if score #STotal Number matches 1.. if score #RandMod Number matches 1 run scoreboard players set #SRemove Number 1
#個数計算
scoreboard players operation #PTotal Number -= #PRemove Number
scoreboard players operation #STotal Number -= #SRemove Number
#Rarity適用
execute if score #PTotal Number matches 0 if score #STotal Number matches 0 run data modify block ~ ~ ~ Items[0].tag.Rarity set value "Normal"
execute if score #PTotal Number matches 0 if score #STotal Number matches 0 run data remove block ~ ~ ~ Items[0].tag.UniqueName

scoreboard players set #Success Number 1
