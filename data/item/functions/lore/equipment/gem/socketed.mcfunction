execute store result score #Exp Number run data get storage gem: Gem.tag.Exp 100
execute store result score #MaxExp Number run data get storage gem: Gem.tag.MaxExp 1
scoreboard players operation #Exp Number /= #MaxExp Number

function status:display/exp/exp_stars

execute if data storage gem: {Gem:{Socket:"Red"}} run data modify block 2 4 2 Text1 set value '[{"text":"⬤ ","color":"red","italic":false},{"translate":"%s %s/%s %s","color":"white","italic":false,"with":[{"nbt":"Gem.tag.Name","storage":"gem:","bold":true},{"nbt":"Gem.tag.BaseLevel","storage":"gem:"},{"nbt":"Gem.tag.BaseQuality","storage":"gem:"},{"nbt":"Lore","storage":"exp:","interpret":true}]}]'
execute if data storage gem: {Gem:{Socket:"Green"}} run data modify block 2 4 2 Text1 set value '[{"text":"⬤ ","color":"green","italic":false},{"translate":"%s %s/%s %s","color":"white","italic":false,"with":[{"nbt":"Gem.tag.Name","storage":"gem:","bold":true},{"nbt":"Gem.tag.BaseLevel","storage":"gem:"},{"nbt":"Gem.tag.BaseQuality","storage":"gem:"},{"nbt":"Lore","storage":"exp:","interpret":true}]}]'
execute if data storage gem: {Gem:{Socket:"Blue"}} run data modify block 2 4 2 Text1 set value '[{"text":"⬤ ","color":"blue","italic":false},{"translate":"%s %s/%s %s","color":"white","italic":false,"with":[{"nbt":"Gem.tag.Name","storage":"gem:","bold":true},{"nbt":"Gem.tag.BaseLevel","storage":"gem:"},{"nbt":"Gem.tag.BaseQuality","storage":"gem:"},{"nbt":"Lore","storage":"exp:","interpret":true}]}]'
execute if data storage gem: {Gem:{Socket:"White"}} run data modify block 2 4 2 Text1 set value '[{"text":"⬤ ","color":"white","italic":false},{"translate":"%s %s/%s %s","color":"white","italic":false,"with":[{"nbt":"Gem.tag.Name","storage":"gem:","bold":true},{"nbt":"Gem.tag.BaseLevel","storage":"gem:"},{"nbt":"Gem.tag.BaseQuality","storage":"gem:"},{"nbt":"Lore","storage":"exp:","interpret":true}]}]'
data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
