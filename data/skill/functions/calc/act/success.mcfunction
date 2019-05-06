execute as @e[tag=StatusAEC,x=-40896,y=1,z=-40960,distance=..1] if score @s Number = #Equipment Number if score @s ID = #ID Number run function skill:calc/act/gem/main

#WaitTimeH
scoreboard players operation @s WaitTimeH = #Temp WaitTimeH
