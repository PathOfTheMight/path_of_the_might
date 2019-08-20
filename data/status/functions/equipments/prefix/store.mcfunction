execute store result score #AffixValue Number run data get block -40691 1 -40700 RecordItem.tag.Affix.AffixValue 1
execute store result score #AffixValue2 Number run data get block -40691 1 -40700 RecordItem.tag.Affix.AffixValue2 1
data modify entity 0-0-0-0-0 Tags[0] set from block -40691 1 -40700 RecordItem.tag.Affix.Name

execute as 0-0-0-0-0 run function status:equipments/prefix/calc