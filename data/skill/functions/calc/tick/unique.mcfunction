execute if entity @s[tag=IceSpear] run function skill:act/ice_spear/tick
execute if entity @s[tag=Arc] run function skill:act/arc/tick
#execute if entity @s[tag=StormCall] run function skill:act/storm_call/tick
execute if entity @s[tag=Fireball,tag=Kill] run function skill:act/fireball/hit
execute if entity @s[tag=FireNova] run scoreboard players operation @s Radius += @s RngIncP
execute if entity @s[tag=IceNova] run scoreboard players operation @s Radius += @s RngIncP