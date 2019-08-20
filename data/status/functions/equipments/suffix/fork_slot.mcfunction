data modify block -40691 1 -40700 RecordItem.tag.Affix set from block -40691 1 -40700 RecordItem.tag.Suffix[0]
execute if data block -40691 1 -40700 RecordItem.tag.Affix.Name run function status:equipments/suffix/store

data modify block -40691 1 -40700 RecordItem.tag.Affix set from block -40691 1 -40700 RecordItem.tag.Suffix[1]
execute if data block -40691 1 -40700 RecordItem.tag.Affix.Name run function status:equipments/suffix/store

data modify block -40691 1 -40700 RecordItem.tag.Affix set from block -40691 1 -40700 RecordItem.tag.Suffix[2]
execute if data block -40691 1 -40700 RecordItem.tag.Affix.Name run function status:equipments/suffix/store
