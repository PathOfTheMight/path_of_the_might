#死亡時
execute if entity @s[scores={Hp=..0}] at @s run playsound minecraft:entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.5

kill @s[type=!minecraft:player,scores={Hp=..0}]
#被ダメージ演出
effect give @s[type=!minecraft:player] minecraft:instant_health 1 29 true
effect give @s minecraft:instant_damage 1 29 true
tag @s[tag=Damaged] remove Damaged
