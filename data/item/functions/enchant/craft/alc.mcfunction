scoreboard players set #RandMod Number 6
function main:rand

#1/3:PPSS 1/6:PPPSS 1/6:PPSSS 1/3:PPPSSS
scoreboard players set #PAdd Number 2
scoreboard players set #SAdd Number 2
execute if score #RandMod Number matches 1..3 run scoreboard players add #PAdd Number 1
execute if score #RandMod Number matches 2..4 run scoreboard players add #SAdd Number 1

data modify block ~ ~ ~ Items[0].tag.Rarity set value "Rare"
function item:enchant/calc/random_name/main

scoreboard players set #Success Number 1
