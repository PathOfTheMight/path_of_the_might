execute store result score #AddPhDMin Number run data get block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"AddPhysicalLocalDamage"}].AffixValue
scoreboard players operation #PhDMin Number += #AddPhDMin Number
execute store result score #AddPhDMax Number run data get block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"AddPhysicalLocalDamage"}].AffixValue2
scoreboard players operation #PhDMax Number += #AddPhDMax Number
