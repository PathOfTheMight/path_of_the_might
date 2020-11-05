execute store result score #MinValue2 Number run data get storage affix: Affix.MinValue2
execute store result score #MaxValue2 Number run data get storage affix: Affix.MaxValue2

scoreboard players operation #RandMod Number = #MaxValue2 Number
scoreboard players operation #RandMod Number -= #MinValue2 Number
scoreboard players add #RandMod Number 1
function main:rand
scoreboard players operation #RandMod Number += #MinValue2 Number

execute store result storage affix: Affix.Value2 int 1 run scoreboard players get #RandMod Number
