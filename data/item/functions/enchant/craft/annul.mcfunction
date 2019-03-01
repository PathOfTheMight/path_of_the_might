scoreboard players set #RandMod Number 2
function main:rand

##Pあり:-P Sあり:-S PSあり:1/2:-P 1/2:-S
execute if score #PTotal Number matches 1.. if score #STotal Number matches 0 run scoreboard players set #PRemove Number 1
execute if score #PTotal Number matches 0 if score #STotal Number matches 1.. run scoreboard players set #SRemove Number 1
execute if score #PTotal Number matches 1.. if score #STotal Number matches 1.. if score #RandMod Number matches 0 run scoreboard players set #PRemove Number 1
execute if score #PTotal Number matches 1.. if score #STotal Number matches 1.. if score #RandMod Number matches 1.. run scoreboard players set #SRemove Number 1
#個数計算
scoreboard players operation #PTotalTemp Number = #PTotal Number
scoreboard players operation #PTotalTemp Number -= #PRemove Number
scoreboard players operation #STotalTemp Number = #STotal Number
scoreboard players operation #STotalTemp Number -= #SRemove Number
#Rarity適用
execute unless score #PTotalTemp Number matches 0 unless score #PTotalTemp Number matches 0..1 run data modify block ~ ~ ~ Items[0].tag.Rarity set value "Rare"
execute if score #PTotalTemp Number matches 0..1 if score #PTotalTemp Number matches 0..1 run data modify block ~ ~ ~ Items[0].tag.Rarity set value "Magic"
execute if score #PTotalTemp Number matches 0 if score #PTotalTemp Number matches 0 run data modify block ~ ~ ~ Items[0].tag.Rarity set value "Normal"

scoreboard players set #Success Number 1
