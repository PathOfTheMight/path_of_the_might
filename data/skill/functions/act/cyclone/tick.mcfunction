tag @s add CycloneTemp
scoreboard players operation #ID Number = @s ID
execute as @a at @s run tp @e[tag=CycloneTemp,limit=1] ~ ~-0.7 ~
execute if entity @a[scores={WaitTimeH=..0}] run kill @e[tag=CycloneTemp,limit=1]
tag @s remove CycloneTemp
