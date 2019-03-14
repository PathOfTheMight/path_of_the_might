#Dur=10000のとき
summon minecraft:armor_stand ~ ~10 ~ {Tags:[Skill,Spell,Area,StormCall,StormCall2,New],NoGravity:1b,Invisible:1b,Silent:1b,Small:1b,Marker:1b}

#Team
execute if entity @s[tag=SkillP0] run scoreboard players set #Team Number 1
execute if entity @s[tag=SkillE0] run scoreboard players set #Team Number 2

execute if entity @s[tag=SkillP0] run scoreboard players set @e[tag=StormCall1,tag=SkillP0,distance=..50,scores={Dur=27..},limit=1,sort=arbitrary] duration 26
execute if entity @s[tag=SkillE0] run scoreboard players set @e[tag=StormCall1,tag=SkillE0,distance=..50,scores={Dur=27..},limit=1,sort=arbitrary] duration 26
#Rng Rng(*100block)=基礎Rng*Rng(_multi)/100 Rng(_multi)は100~200%まで設定可能
scoreboard players operation #Rng Number = @s Rng

#LnD LnD=基礎LnD*LnD_multi/100
scoreboard players operation #LnD Number = @s LnD

playsound minecraft:entity.lightning_bolt.thunder master @p ~ ~ ~ 1 2 0.5

execute as @e[tag=StormCall2,tag=New,limit=1] run function skill:act/storm_call/act4
