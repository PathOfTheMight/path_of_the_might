scoreboard players remove #SAdd Number 1
#temp   
execute if score #S0 Number matches 0 run function item:enchant/add/suffix/apply/s1
execute if score #S0 Number matches 1 if score #S1 Number matches 0 run function item:enchant/add/suffix/apply/s2
execute if score #S0 Number matches 1 if score #S1 Number matches 1 run function item:enchant/add/suffix/apply/s3
