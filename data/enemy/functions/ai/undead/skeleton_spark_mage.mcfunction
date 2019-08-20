execute if score #WaitTimeH Number matches 7000 store success score #Flag Number if entity @e[limit=1,sort=random,tag=Player,distance=..5] run function skill:act/shock_nova/act0
execute if score #Flag Number matches 0 store success score #Flag Number facing entity @e[limit=1,sort=random,tag=Player,distance=..12] feet run function skill:act/spark_spider/act0
execute if score #Flag Number matches 0 run scoreboard players set #Flag Number 2
