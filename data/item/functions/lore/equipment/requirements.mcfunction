#Requirements
execute store success score #Str Number if data block -40691 2 -40700 RecordItem.tag.Requirements.Str
execute store success score #Dex Number if data block -40691 2 -40700 RecordItem.tag.Requirements.Dex
execute store success score #Int Number if data block -40691 2 -40700 RecordItem.tag.Requirements.Int

execute if score #Str Number matches 1 if score #Dex Number matches 0 if score #Int Number matches 0 run data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"STR","color":"red","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Str.Total","block":"-40691 2 -40700","color":"white","italic":false}]'
execute if score #Str Number matches 0 if score #Dex Number matches 1 if score #Int Number matches 0 run data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"DEX","color":"green","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Dex.Total","block":"-40691 2 -40700","color":"white","italic":false}]'
execute if score #Str Number matches 0 if score #Dex Number matches 0 if score #Int Number matches 1 run data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"INT","color":"blue","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Int.Total","block":"-40691 2 -40700","color":"white","italic":false}]'
execute if score #Str Number matches 1 if score #Dex Number matches 1 if score #Int Number matches 0 run data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"STR","color":"red","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Str.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"DEX","color":"green","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Dex.Total","block":"-40691 2 -40700","color":"white","italic":false}]'
execute if score #Str Number matches 1 if score #Dex Number matches 0 if score #Int Number matches 1 run data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"STR","color":"red","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Str.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"INT","color":"blue","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Int.Total","block":"-40691 2 -40700","color":"white","italic":false}]'
execute if score #Str Number matches 0 if score #Dex Number matches 1 if score #Int Number matches 1 run data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"DEX","color":"green","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Dex.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"INT","color":"blue","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Int.Total","block":"-40691 2 -40700","color":"white","italic":false}]'
execute if score #Str Number matches 1 if score #Dex Number matches 1 if score #Int Number matches 1 run data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"STR","color":"red","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Str.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"DEX","color":"green","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Dex.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"text":"INT","color":"blue","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Int.Total","block":"-40691 2 -40700","color":"white","italic":false}]'
#data modify block -40692 1 -40700 Text1 set value '[{"text":"要求","color":"gray","italic":false},{"text":"Lv","color":"gold","italic":false},{"text":": ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Level","block":"-40691 2 -40700","color":"white","italic":false},{"text":", ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Str.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":" STR","color":"red","italic":false},{"text":", ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Dex.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":" DEX","color":"green","italic":false},{"text":", ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Requirements.Int.Total","block":"-40691 2 -40700","color":"white","italic":false},{"text":" INT","color":"blue","italic":false}]'

execute if data block -40691 2 -40700 RecordItem.tag.Armor run data modify block -40691 2 -40700 RecordItem.tag.display.Lore append from block -40692 1 -40700 Text1
