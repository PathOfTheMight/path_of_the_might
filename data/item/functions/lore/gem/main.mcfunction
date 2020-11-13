#Gem情報取得
execute store result score #GemID Number run data get storage gem: Gem.tag.GemID
execute store result score #GemLevel Number run data get storage gem: Gem.tag.Level
scoreboard players reset #Temp
execute as 0-0-0-0-0 as @s run scoreboard players reset @s
execute as 0-0-0-0-0 run function status:equipments/gem/init
execute as 0-0-0-0-0 run function item:gem/allocate/main
#Lore初期化
data modify storage gem: Gem.tag.display.Lore set value []
#ManageID
scoreboard players add #GlobalID Number 1
execute store result storage gem: Gem.tag.ManageID int 1 run scoreboard players get #GlobalID Number
#Tags
data modify storage gem: Gem.tag.display.Lore append from storage gem: Gem.tag.TagsLore
#Level Exp
execute store result score #Exp Number run data get storage gem: Gem.tag.Exp 100
scoreboard players operation #Exp Number /= #Temp Exp
function status:display/exp/exp_stars
data modify block 2 4 2 Text1 set value '[{"translate":"Lv: %s ","color":"gold","italic":false,"with":[{"nbt":"Gem.tag.Level","storage":"gem:","color":"white","italic":false}]},{"nbt":"Lore","storage":"exp:","interpret":true}]'
data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
#Quality
execute store result score #Quality Number run data get storage gem: Gem.tag.BaseQuality
execute if score #Quality Number matches 1.. run data modify block 2 4 2 Text1 set value '[{"text":"品質: ","color":"gray","bold":true,"italic":false},{"translate":": %s%%","color":"white","bold":false,"italic":false,"with":[{"score":{"name":"#Quality","objective":"Number"}}]}]'
execute if score #Quality Number matches 1.. run data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
#Cost
#scoreboard players operation #Temp Cost /= #100 Number
execute if score #Temp Cost matches 1.. run data modify block 2 4 2 Text1 set value '[{"text":"消費","color":"gray","bold":true,"italic":false},{"translate":"MP: %s","color":"gray","bold":false,"italic":false,"with":[{"score":{"name":"#Temp","objective":"Cost"},"color":"white"}]}]'
execute if score #Temp Cost matches 1.. run data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
#CostMoreP
execute if score #Temp CostMoreP matches 1.. run data modify block 2 4 2 Text1 set value '[{"text":"消費","color":"gray","bold":true,"italic":false},{"text":"MP: ","color":"gray","bold":false,"italic":false},{"translate":"×%s%%","color":"gold","bold":false,"italic":false,"with":[{"score":{"name":"#Temp","objective":"CostMoreP"},"color":"gold","bold":false,"italic":false}]}]'
execute if score #Temp CostMoreP matches 1.. run data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
#攻撃速度
execute if score #Temp AtkSpdMoreP matches 1.. run data modify block 2 4 2 Text1 set value '[{"text":"攻撃速度: ","color":"gray","bold":true,"italic":false},{"text":"×","color":"gold","bold":false,"italic":false},{"score":{"name":"#Temp","objective":"AtkSpdMoreP"},"color":"gold","bold":false,"italic":false},{"text":"%","color":"gold","bold":false,"italic":false}]'
execute if score #Temp AtkSpdMoreP matches 1.. run data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
#詠唱速度
execute if score #Temp WaitTimeH matches 1.. run scoreboard players operation #Temp WaitTimeH /= #2 Number
execute if score #Temp WaitTimeH matches 1.. run data modify block 2 4 2 Text1 set value '[{"text":"詠唱時間: ","color":"gray","bold":true,"italic":false},{"translate":"0.%s","color":"white","bold":false,"italic":false,"with":[{"score":{"name":"#Temp","objective":"WaitTimeH"}}]},{"text":"秒","color":"white","bold":true,"italic":false}]'
execute if score #Temp WaitTimeH matches 1.. run data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
#Critical
execute if score #Temp CriP matches 1.. run function item:lore/gem/critical
#Effectiveness
execute if score #Temp Effectiveness matches 1.. run data modify block 2 4 2 Text1 set value '[{"text":"ダメージ倍率: ","color":"gray","bold":true,"italic":false},{"translate":"%s%%","color":"white","bold":false,"italic":false,"with":[{"score":{"name":"#Temp","objective":"Effectiveness"}}]}]'
execute if score #Temp Effectiveness matches 1.. run data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
#Requirements 
function item:lore/gem/requirements
#NextRequirements
execute if score #Exp Number matches 100.. run function item:lore/gem/next_requirements
#Description
data modify storage description: Description set from storage gem: Gem.tag.Description
function item:lore/gem/description
