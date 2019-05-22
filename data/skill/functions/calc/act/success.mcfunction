execute as @e[tag=StatusAEC,x=-40696,y=1,z=-40696,distance=..1] if score @s Number = #Equipment Number if score @s ID = #ID Number run function skill:calc/act/gem/main

#WaitTimeH
scoreboard players operation @s WaitTimeH = #Temp WaitTimeH
