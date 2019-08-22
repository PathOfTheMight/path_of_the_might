#Loopが0になるまで前方に進み敵探索

scoreboard players remove #Loop Number 1
execute if entity @e[tag=Enemy,distance=..1,sort=nearest,limit=1] run scoreboard players set #Loop Number 0
execute if block ^ ^ ^1 #main:solid_block run scoreboard players set #Loop Number 0
execute if score #Loop Number matches ..0 store success score #ReturnCalc Number run tp 0-0-1-0-0 ^ ^ ^ ~ ~
execute if score #Loop Number matches 1.. positioned ^ ^ ^1 run function main:physics/search_forward/player
