execute store result score #MaxSocket Number run data get storage item: Item.tag.MaxSocket 1
execute store result score #CurSocket Number run data get storage item: Item.tag.Gems
#NewSocket = 1 ~ MaxSocket
#Socket 1,2,3,4,5,6 = 32,28,24,12,3,1 %
execute if score #MaxSocket Number matches 1 run scoreboard players set #RandMod Number 32
execute if score #MaxSocket Number matches 2 run scoreboard players set #RandMod Number 60
execute if score #MaxSocket Number matches 3 run scoreboard players set #RandMod Number 84
execute if score #MaxSocket Number matches 4 run scoreboard players set #RandMod Number 96
execute if score #MaxSocket Number matches 5 run scoreboard players set #RandMod Number 99
execute if score #MaxSocket Number matches 6 run scoreboard players set #RandMod Number 100
function main:rand
scoreboard players add #RandMod Number 1

execute if score #RandMod Number matches 1..32 run scoreboard players set #NewSocket Number 1
execute if score #RandMod Number matches 33..60 run scoreboard players set #NewSocket Number 2
execute if score #RandMod Number matches 61..84 run scoreboard players set #NewSocket Number 3
execute if score #RandMod Number matches 85..96 run scoreboard players set #NewSocket Number 4
execute if score #RandMod Number matches 97..99 run scoreboard players set #NewSocket Number 5
execute if score #RandMod Number matches 100 run scoreboard players set #NewSocket Number 6

scoreboard players operation #NewSocket Number -= #CurSocket Number
execute if score #NewSocket Number matches 1.. run function item:enchant/add/socket/main
execute if score #NewSocket Number matches ..-1 run function item:enchant/remove/socket/main

scoreboard players set #Success Number 1
