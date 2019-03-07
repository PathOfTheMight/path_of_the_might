#プレイヤーからダミーに
function status:aec/dummy
#ダミーからAECに
execute positioned -40896 1 -40960 as @e[tag=StatusAEC,distance=..1] if score @s Number = #Slot Number if score @s ID = #ID Number run kill @s
execute if data @s EnderItems

execute positioned -40896 1 -40960 as @e[tag=StatusAEC,distance=..1] if score @s Number = #Slot Number if score @s ID = #ID Number run function status:aec/aec
