#プレイヤーからダミーに
function status:aec/dummy
#AEC召喚
execute positioned -40896 1 -40960 as @e[tag=StatusAEC,distance=..1] run kill @s
summon minecraft:area_effect_cloud -40896 1 -40960 {Tags:[StatusAEC,Player,New],Duration:2100000000}
#ダミーからAECに
execute positioned -40896 1 -40960 as @e[tag=StatusAEC,distance=..1] if score @s Number = #Slot Number if score @s ID = #ID Number run kill @s
#execute if data @s EnderItems

execute positioned -40896 1 -40960 as @e[tag=StatusAEC,tag=New,distance=..1] run function status:aec/apply
