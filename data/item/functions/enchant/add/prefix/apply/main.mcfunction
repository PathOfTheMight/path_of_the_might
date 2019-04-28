scoreboard players remove #PAdd Number 1
#temp   
execute if score #P0 Number matches 0 run function item:enchant/add/prefix/apply/p1
execute if score #P0 Number matches 1 if score #P1 Number matches 0 run function item:enchant/add/prefix/apply/p2
execute if score #P0 Number matches 1 if score #P1 Number matches 1 run function item:enchant/add/prefix/apply/p3
