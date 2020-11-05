execute store result score #MinValue1 Number run data get storage affix: Affix.MinValue1
execute store result score #MaxValue1 Number run data get storage affix: Affix.MaxValue1

scoreboard players operation #RandMod Number = #MaxValue1 Number
scoreboard players operation #RandMod Number -= #MinValue1 Number
scoreboard players add #RandMod Number 1
function main:rand
scoreboard players operation #RandMod Number += #MinValue1 Number

execute store result storage affix: Affix.Value1 int 1 run scoreboard players get #RandMod Number
