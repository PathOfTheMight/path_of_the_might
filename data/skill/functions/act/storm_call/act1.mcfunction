#Flagが0になるまで前方に進み敵探索
scoreboard players remove #Flag Number 1
execute at @s if block ^ ^ ^1 air run tp @s ^ ^ ^1
execute at @s if entity @e[tag=Enemy,distance=..1,sort=nearest,limit=1] run scoreboard players set @s flag 0
execute at @s unless block ^ ^ ^1 air run scoreboard players set #Flag Number 0
execute if score #Flag Number matches 0 run summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,StormCall,StormCall1,Physics,Rotate,Rotate3,New],NoGravity:1b,Invisible:1b,Silent:1b,Small:1b,Marker:1b}
execute if score #Flag Number matches 0 as @e[tag=StormCall1,tag=New,distance=..1,limit=1] run function skill:act/storm_call/act2
execute if score #Flag Number matches 0 run kill @s
execute at @s if score #Flag Number matches 1.. run function skill:act/storm_call/act1
