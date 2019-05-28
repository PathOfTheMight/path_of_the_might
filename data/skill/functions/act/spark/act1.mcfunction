execute if entity @s[y_rotation=0..90] run summon minecraft:armor_stand ^ ^0.5 ^0.5 {Tags:[Skill,Spell,Spark,SingleTarget,KillOnFin,UniqueTick,Duration,Move,Reflect,New],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"minecraft:spider_spawn_egg",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=90.001..180] run summon minecraft:armor_stand ^ ^0.5 ^0.5 {Tags:[Skill,Spell,Spark,SingleTarget,KillOnFin,UniqueTick,Duration,Move,Reflect,New],Rotation:[135f,0f],ArmorItems:[{},{},{},{id:"minecraft:spider_spawn_egg",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-180..-90] run summon minecraft:armor_stand ^ ^0.5 ^0.5 {Tags:[Skill,Spell,Spark,SingleTarget,KillOnFin,UniqueTick,Duration,Move,Reflect,New],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"minecraft:spider_spawn_egg",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-89.999..-0.001] run summon minecraft:armor_stand ^ ^0.5 ^0.5 {Tags:[Skill,Spell,Spark,SingleTarget,KillOnFin,UniqueTick,Duration,Move,Reflect,New],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"minecraft:spider_spawn_egg",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}

scoreboard players remove #Temp Mult 1

execute if score #Temp Mult matches -1 as @e[tag=Spark,tag=New,distance=..2] run function skill:act/spark/act2
execute if score #Temp Mult matches 0.. run function skill:act/spark/act1
