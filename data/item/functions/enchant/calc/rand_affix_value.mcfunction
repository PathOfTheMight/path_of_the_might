execute store result score #AffixValue Number run data get block -40691 1 -40700 RecordItem.tag.Affix.Min 1
execute store result score #RandMod Number run data get block -40691 1 -40700 RecordItem.tag.Affix.Max 1
scoreboard players operation #RandMod Number -= #AffixValue Number
scoreboard players add #RandMod Number 1
function main:rand
scoreboard players operation #AffixValue Number += #RandMod Number
