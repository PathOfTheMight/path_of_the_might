#RandomName

#PrefixName
scoreboard players set #RandMod Number 361
function main:rand

execute if score #RandMod Number matches 0..24 run function item:enchant/calc/random_name/prefix/0_24
execute if score #RandMod Number matches 25..49 run function item:enchant/calc/random_name/prefix/25_49
execute if score #RandMod Number matches 50..74 run function item:enchant/calc/random_name/prefix/50_74
execute if score #RandMod Number matches 75..99 run function item:enchant/calc/random_name/prefix/75_99
execute if score #RandMod Number matches 100..124 run function item:enchant/calc/random_name/prefix/100_124
execute if score #RandMod Number matches 125..149 run function item:enchant/calc/random_name/prefix/125_149
execute if score #RandMod Number matches 150..174 run function item:enchant/calc/random_name/prefix/150_174
execute if score #RandMod Number matches 175..199 run function item:enchant/calc/random_name/prefix/175_199
execute if score #RandMod Number matches 200..224 run function item:enchant/calc/random_name/prefix/200_224
execute if score #RandMod Number matches 225..249 run function item:enchant/calc/random_name/prefix/225_249
execute if score #RandMod Number matches 250..274 run function item:enchant/calc/random_name/prefix/250_274
execute if score #RandMod Number matches 275..299 run function item:enchant/calc/random_name/prefix/275_299
execute if score #RandMod Number matches 300..324 run function item:enchant/calc/random_name/prefix/300_324
execute if score #RandMod Number matches 325..349 run function item:enchant/calc/random_name/prefix/325_349
execute if score #RandMod Number matches 350..374 run function item:enchant/calc/random_name/prefix/350_374

#SuffixName
scoreboard players set #RandMod Number 361
function main:rand

execute if score #RandMod Number matches 0..24 run function item:enchant/calc/random_name/suffix/0_24
execute if score #RandMod Number matches 25..49 run function item:enchant/calc/random_name/suffix/25_49
execute if score #RandMod Number matches 50..74 run function item:enchant/calc/random_name/suffix/50_74
execute if score #RandMod Number matches 75..99 run function item:enchant/calc/random_name/suffix/75_99
execute if score #RandMod Number matches 100..124 run function item:enchant/calc/random_name/suffix/100_124
execute if score #RandMod Number matches 125..149 run function item:enchant/calc/random_name/suffix/125_149
execute if score #RandMod Number matches 150..174 run function item:enchant/calc/random_name/suffix/150_174
execute if score #RandMod Number matches 175..199 run function item:enchant/calc/random_name/suffix/175_199
execute if score #RandMod Number matches 200..224 run function item:enchant/calc/random_name/suffix/200_224
execute if score #RandMod Number matches 225..249 run function item:enchant/calc/random_name/suffix/225_249
execute if score #RandMod Number matches 250..274 run function item:enchant/calc/random_name/suffix/250_274
execute if score #RandMod Number matches 275..299 run function item:enchant/calc/random_name/suffix/275_299
execute if score #RandMod Number matches 300..324 run function item:enchant/calc/random_name/suffix/300_324
execute if score #RandMod Number matches 325..349 run function item:enchant/calc/random_name/suffix/325_349
execute if score #RandMod Number matches 350..374 run function item:enchant/calc/random_name/suffix/350_374

data modify block -40692 1 -40700 Text1 set value '[{"text":"<< ","color":"yellow","italic":false},{"nbt":"RecordItem.tag.PrefixName","block":"-40691 1 -40700","color":"gold","bold":true,"italic":false},{"nbt":"RecordItem.tag.SuffixName","block":"-40691 1 -40700","color":"gold","bold":true,"italic":false},{"text":" >>","color":"yellow","italic":false}]'
data modify block ~ ~ ~ Items[0].tag.UniqueName set from block -40692 1 -40700 Text1

scoreboard players set #Success Number 1
