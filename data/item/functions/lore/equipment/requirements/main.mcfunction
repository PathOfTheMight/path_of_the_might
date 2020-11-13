#Requirements
#Equipment
execute store result score #BaseLevel Number store result score #Level Number run data get storage item: Item.tag.Requirements.Level.Base
execute store result score #BaseStr Number store result score #Str Number run data get storage item: Item.tag.Requirements.Str.Base
execute store result score #BaseDex Number store result score #Dex Number run data get storage item: Item.tag.Requirements.Dex.Base
execute store result score #BaseInt Number store result score #Int Number run data get storage item: Item.tag.Requirements.Int.Base
#Gems
function item:lore/equipment/requirements/socket
#ReducedRequirements適用
execute if data storage item: Item.tag.Suffix[{AffixName:"AttributeRequirements"}] run function item:lore/equipment/requirements/reduced
#Value保存
execute store result storage item: Item.tag.Requirements.Level.Total int 1 run scoreboard players get #Level Number
execute store result storage item: Item.tag.Requirements.Str.Total int 1 run scoreboard players get #Str Number
execute store result storage item: Item.tag.Requirements.Dex.Total int 1 run scoreboard players get #Dex Number
execute store result storage item: Item.tag.Requirements.Int.Total int 1 run scoreboard players get #Int Number

data remove storage requirements_lore: RequirementsLore
#Gem > Base
execute if score #Level Number matches 2.. unless score #BaseLevel Number = #Level Number run data modify storage requirements_lore: RequirementsLore.Level set value '[{"text":"Lv","color":"gold","italic":false},{"translate":": %s(%s) ","color":"gray","with":[{"score":{"name":"#Level","objective":"Number"},"color":"aqua"},{"score":{"name":"#BaseLevel","objective":"Number"},"color":"white"}]}]'
execute if score #Str Number matches 1.. unless score #BaseStr Number = #Str Number run data modify storage requirements_lore: RequirementsLore.Str set value '[{"text":"STR","color":"red","italic":false},{"translate":": %s(%s) ","color":"gray","with":[{"score":{"name":"#Str","objective":"Number"},"color":"aqua"},{"score":{"name":"#BaseStr","objective":"Number"},"color":"white"}]}]'
execute if score #Dex Number matches 1.. unless score #BaseDex Number = #Dex Number run data modify storage requirements_lore: RequirementsLore.Dex set value '[{"text":"DEX","color":"green","italic":false},{"translate":": %s(%s) ","color":"gray","with":[{"score":{"name":"#Dex","objective":"Number"},"color":"aqua"},{"score":{"name":"#BaseDex","objective":"Number"},"color":"white"}]}]'
execute if score #Int Number matches 1.. unless score #BaseInt Number = #Int Number run data modify storage requirements_lore: RequirementsLore.Int set value '[{"text":"INT","color":"blue","italic":false},{"translate":": %s(%s) ","color":"gray","with":[{"score":{"name":"#Int","objective":"Number"},"color":"aqua"},{"score":{"name":"#BaseInt","objective":"Number"},"color":"white"}]}]'
#Gem <= Base
execute if score #Level Number matches 2.. if score #BaseLevel Number = #Level Number run data modify storage requirements_lore: RequirementsLore.Level set value '[{"text":"Lv","color":"gold","italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#BaseLevel","objective":"Number"},"color":"white"}]}]'
execute if score #Str Number matches 1.. if score #BaseStr Number = #Str Number run data modify storage requirements_lore: RequirementsLore.Str set value '[{"text":"STR","color":"red","italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#BaseStr","objective":"Number"},"color":"white"}]}]'
execute if score #Dex Number matches 1.. if score #BaseDex Number = #Dex Number run data modify storage requirements_lore: RequirementsLore.Dex set value '[{"text":"DEX","color":"green","italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#BaseDex","objective":"Number"},"color":"white"}]}]'
execute if score #Int Number matches 1.. if score #BaseInt Number = #Int Number run data modify storage requirements_lore: RequirementsLore.Int set value '[{"text":"INT","color":"blue","italic":false},{"translate":": %s ","color":"gray","with":[{"score":{"name":"#BaseInt","objective":"Number"},"color":"white"}]}]'

data modify block 2 4 2 Text1 set value '[{"text":""},{"text":"要求","color":"gray","bold":true,"italic":false},{"nbt":"RequirementsLore.Level","storage":"requirements_lore:","interpret":true},{"nbt":"RequirementsLore.Str","storage":"requirements_lore:","interpret":true},{"nbt":"RequirementsLore.Dex","storage":"requirements_lore:","interpret":true},{"nbt":"RequirementsLore.Int","storage":"requirements_lore:","interpret":true}]'

data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
