execute if score #WaitTimeH Number matches 3000 store success score #Flag Number facing entity @e[limit=1,sort=random,tag=Player,distance=..16] feet run function skill:act/fireball/projectile/act0
execute if score #WaitTimeH Number matches 1500 store success score #Flag Number facing entity @e[limit=1,sort=random,tag=Player,distance=..16] feet run function skill:act/ice_spear/act0
execute if score #WaitTimeH Number matches 5000 store success score #Flag Number facing entity @e[limit=1,sort=random,tag=Player,distance=..16] feet run function skill:act/spark_spider/act0
execute if score #WaitTimeH Number matches 6000 store success score #Flag Number run function enemy:ai/daemon/magic_book/mode_change
execute if score #WaitTimeH Number matches 2000..2001 run function enemy:ai/daemon/magic_book/charge
