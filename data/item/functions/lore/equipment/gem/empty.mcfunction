#看板に書き込み
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"Red"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤","color":"red","italic":false}]'
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"Green"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤","color":"green","italic":false}]'
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"Blue"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤","color":"blue","italic":false}]'
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"White"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤","color":"white","italic":false}]'
#Loreに追加
data modify block -40691 2 -40700 RecordItem.tag.display.Lore append from block -40692 1 -40700 Text1
