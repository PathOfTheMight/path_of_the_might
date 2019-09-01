#⬤ ファイアボール 20/20 |★★★★★★‐‐‐‐|
#ExpBar オーバーフロー注意
execute store result score #Exp Number run data get block -40691 1 -40700 RecordItem.tag.tag.Exp 100
execute store result score #MaxExp Number run data get block -40691 1 -40700 RecordItem.tag.tag.MaxExp 1
scoreboard players operation #Exp Number /= #MaxExp Number

execute if score #Exp Number matches 0..9 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value ""
execute if score #Exp Number matches 10..19 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★"
execute if score #Exp Number matches 20..29 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★"
execute if score #Exp Number matches 30..39 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★"
execute if score #Exp Number matches 40..49 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★★"
execute if score #Exp Number matches 50..59 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★★★"
execute if score #Exp Number matches 60..69 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★★★★"
execute if score #Exp Number matches 70..79 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★★★★★"
execute if score #Exp Number matches 80..89 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★★★★★★"
execute if score #Exp Number matches 90..99 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★★★★★★★"
execute if score #Exp Number matches 100 run data modify block -40691 1 -40700 RecordItem.tag.ExpStar set value "★★★★★★★★★★"

execute if score #Exp Number matches 0..9 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐‐‐‐‐‐‐‐"
execute if score #Exp Number matches 10..19 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐‐‐‐‐‐‐"
execute if score #Exp Number matches 20..29 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐‐‐‐‐‐"
execute if score #Exp Number matches 30..39 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐‐‐‐‐"
execute if score #Exp Number matches 40..49 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐‐‐‐"
execute if score #Exp Number matches 50..59 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐‐‐"
execute if score #Exp Number matches 60..69 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐‐"
execute if score #Exp Number matches 70..79 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐‐"
execute if score #Exp Number matches 80..89 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐‐"
execute if score #Exp Number matches 90..99 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value "‐"
execute if score #Exp Number matches 100 run data modify block -40691 1 -40700 RecordItem.tag.ExpBar set value ""

#看板に書き込み
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"Red"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤ ","color":"red","italic":false},{"nbt":"RecordItem.tag.tag.Name","block":"-40691 1 -40700","color":"white","bold":true,"italic":false},{"text":" "},{"nbt":"RecordItem.tag.tag.BaseLevel","block":"-40691 1 -40700","color":"white","italic":false},{"text":"/","color":"white","italic":false},{"nbt":"RecordItem.tag.tag.BaseQuality","block":"-40691 1 -40700","color":"white","italic":false},{"text":" |","color":"gray","italic":false},{"nbt":"RecordItem.tag.ExpStar","block":"-40691 1 -40700","color":"gold","italic":false},{"nbt":"RecordItem.tag.ExpBar","block":"-40691 1 -40700","color":"gray","italic":false},{"text":"|","color":"gray","italic":false}]'
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"Green"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤ ","color":"green","italic":false},{"nbt":"RecordItem.tag.tag.Name","block":"-40691 1 -40700","color":"white","bold":true,"italic":false},{"text":" "},{"nbt":"RecordItem.tag.tag.BaseLevel","block":"-40691 1 -40700","color":"white","italic":false},{"text":"/","color":"white","italic":false},{"nbt":"RecordItem.tag.tag.BaseQuality","block":"-40691 1 -40700","color":"white","italic":false},{"text":" |","color":"gray","italic":false},{"nbt":"RecordItem.tag.ExpStar","block":"-40691 1 -40700","color":"gold","italic":false},{"nbt":"RecordItem.tag.ExpBar","block":"-40691 1 -40700","color":"gray","italic":false},{"text":"|","color":"gray","italic":false}]'
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"Blue"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤ ","color":"blue","italic":false},{"nbt":"RecordItem.tag.tag.Name","block":"-40691 1 -40700","color":"white","bold":true,"italic":false},{"text":" "},{"nbt":"RecordItem.tag.tag.BaseLevel","block":"-40691 1 -40700","color":"white","italic":false},{"text":"/","color":"white","italic":false},{"nbt":"RecordItem.tag.tag.BaseQuality","block":"-40691 1 -40700","color":"white","italic":false},{"text":" |","color":"gray","italic":false},{"nbt":"RecordItem.tag.ExpStar","block":"-40691 1 -40700","color":"gold","italic":false},{"nbt":"RecordItem.tag.ExpBar","block":"-40691 1 -40700","color":"gray","italic":false},{"text":"|","color":"gray","italic":false}]'
execute if data block -40691 1 -40700 {RecordItem:{tag:{Socket:"White"}}} run data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤ ","color":"white","italic":false},{"nbt":"RecordItem.tag.tag.Name","block":"-40691 1 -40700","color":"white","bold":true,"italic":false},{"text":" "},{"nbt":"RecordItem.tag.tag.BaseLevel","block":"-40691 1 -40700","color":"white","italic":false},{"text":"/","color":"white","italic":false},{"nbt":"RecordItem.tag.tag.BaseQuality","block":"-40691 1 -40700","color":"white","italic":false},{"text":" |","color":"gray","italic":false},{"nbt":"RecordItem.tag.ExpStar","block":"-40691 1 -40700","color":"gold","italic":false},{"nbt":"RecordItem.tag.ExpBar","block":"-40691 1 -40700","color":"gray","italic":false},{"text":"|","color":"gray","italic":false}]'
#Loreに追加
data modify block -40691 2 -40700 RecordItem.tag.display.Lore append from block -40692 1 -40700 Text1
