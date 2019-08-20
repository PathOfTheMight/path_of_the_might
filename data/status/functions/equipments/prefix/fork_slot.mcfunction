data modify block -40691 1 -40700 RecordItem.tag.Affix set from block -40691 1 -40700 RecordItem.tag.Prefix[0]
execute if data block -40691 1 -40700 RecordItem.tag.Affix.Name run function status:equipments/prefix/store

data modify block -40691 1 -40700 RecordItem.tag.Affix set from block -40691 1 -40700 RecordItem.tag.Prefix[1]
execute if data block -40691 1 -40700 RecordItem.tag.Affix.Name run function status:equipments/prefix/store

data modify block -40691 1 -40700 RecordItem.tag.Affix set from block -40691 1 -40700 RecordItem.tag.Prefix[2]
execute if data block -40691 1 -40700 RecordItem.tag.Affix.Name run function status:equipments/prefix/store
