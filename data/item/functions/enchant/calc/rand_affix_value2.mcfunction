execute store result score #AffixValue2 Number run data get block -40691 1 -40700 RecordItem.tag.Affix.Min2 1
execute store result score #RandMod Number run data get block -40691 1 -40700 RecordItem.tag.Affix.Max2 1
scoreboard players operation #RandMod Number -= #AffixValue2 Number
scoreboard players add #RandMod Number 1
function main:rand
scoreboard players operation #AffixValue2 Number += #RandMod Number