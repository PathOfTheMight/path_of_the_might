#Requirements
data remove storage requirements_lore: RequirementsLore

scoreboard players operation #Temp Lvl > #1 Number
execute store result storage gem: Gem.tag.NextRequirements.Level int 1 run scoreboard players get #Temp Lvl
execute if score #Temp Str matches 1.. store result storage gem: Gem.tag.NextRequirements.Str int 1 run scoreboard players get #Temp Str
execute if score #Temp Dex matches 1.. store result storage gem: Gem.tag.NextRequirements.Dex int 1 run scoreboard players get #Temp Dex
execute if score #Temp Int matches 1.. store result storage gem: Gem.tag.NextRequirements.Int int 1 run scoreboard players get #Temp Int

execute if score #Level Number matches 1.. run data modify storage requirements_lore: RequirementsLore.Level set value '[{"text":"Lv","color":"gold","bold":false,"italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#Level","objective":"Number"},"color":"white"}]}]'
execute if score #Str Number matches 1.. run data modify storage requirements_lore: RequirementsLore.Str set value '[{"text":"STR","color":"red","bold":false,"italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#Str","objective":"Number"},"color":"white"}]}]'
execute if score #Dex Number matches 1.. run data modify storage requirements_lore: RequirementsLore.Dex set value '[{"text":"DEX","color":"green","bold":false,"italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#Dex","objective":"Number"},"color":"white"}]}]'
execute if score #Int Number matches 1.. run data modify storage requirements_lore: RequirementsLore.Int set value '[{"text":"INT","color":"blue","bold":false,"italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#Int","objective":"Number"},"color":"white"}]}]'

data modify block 2 4 2 Text1 set value '[{"text":"次レベル要求","color":"gray","bold":true,"italic":false},{"nbt":"RequirementsLore.Level","storage":"requirements_lore:","interpret":true},{"nbt":"RequirementsLore.Str","storage":"requirements_lore:","interpret":true},{"nbt":"RequirementsLore.Dex","storage":"requirements_lore:","interpret":true},{"nbt":"RequirementsLore.Int","storage":"requirements_lore:","interpret":true}]'

data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
