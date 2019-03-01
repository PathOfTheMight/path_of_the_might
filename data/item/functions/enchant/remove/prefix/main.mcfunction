#Annul
execute if score #PRemove Number matches 1 run function item:enchant/remove/prefix/one
#Alt,Chaos
execute if score #PRemove Number matches 3 run function item:enchant/remove/prefix/all
#add用に再計算
function item:enchant/calc/count_prefix
