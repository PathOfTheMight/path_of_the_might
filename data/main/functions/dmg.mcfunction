#死亡時
execute if entity @s[scores={HpH=..0}] at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.5

kill @s[scores={HpH=..0}]
#被ダメージ演出
effect give @s[tag=Damaged] minecraft:wither 1 1 true
tag @s[tag=Damaged] remove Damaged
