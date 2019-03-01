#武器種の設定
#angle1 1:-90~90 2:-90~-30 3:-90~-60 4:-30~30  真上から切るか横から切るか
#angle2 1:45 2:60 3:90 仰角何度から振り下ろすか
#weapon_effect 1:crash 2:slash
# @s weapon_type 1~9  @s hands #moves angle1 angle2 weapon_effect
#1 mace 1/2 5/6 3/2 2/3 1
#2 axe 1/2 5/6 3/2 2/3 2
#3 sword 1/2 5/7 2/2 2/2 2
#4 staves 1/2 5/6 3/1 2/3 1
#5 claw 1 5 4 2 2
#6 dagger 1 4 1 1 2
#7 rapier 1 8 1 4 2
#8 wand 1 
#9 bow 2 
#10 zombie

execute if entity @s[scores={weapon_type=1,hands=1}] run function skill:act/normal_atk/mace_1h
execute if entity @s[scores={weapon_type=1,hands=2}] run function skill:act/normal_atk/mace_2h
execute if entity @s[scores={weapon_type=2,hands=1}] run function skill:act/normal_atk/axe_1h
execute if entity @s[scores={weapon_type=2,hands=2}] run function skill:act/normal_atk/axe_2h
execute if entity @s[scores={weapon_type=3,hands=1}] run function skill:act/normal_atk/sword_1h
execute if entity @s[scores={weapon_type=3,hands=2}] run function skill:act/normal_atk/sword_2h
execute if entity @s[scores={weapon_type=4,hands=1}] run function skill:act/normal_atk/stave_1h
execute if entity @s[scores={weapon_type=4,hands=2}] run function skill:act/normal_atk/stave_2h
execute if entity @s[scores={weapon_type=5}] run function skill:act/normal_atk/claw
execute if entity @s[scores={weapon_type=6}] run function skill:act/normal_atk/dagger
execute if entity @s[scores={weapon_type=7}] run function skill:act/normal_atk/rapier
execute if entity @s[scores={weapon_type=8}] run function skill:act/normal_atk/wand
execute if entity @s[scores={weapon_type=9}] run function skill:act/normal_atk/bow
execute if entity @s[scores={weapon_type=10}] run function skill:act/normal_atk/zombie

#group
execute if entity @s[tag=Player] run scoreboard players set #group Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #group Number 2
#Pier
scoreboard players set #Pier Number 0

function main:rand

scoreboard players set #WaitTimeH Number 1000
scoreboard players operation #WaitTimeH Number /= @p TAtkSpdH
scoreboard players operation @s WaitTimeH += #WaitTimeH Number

playsound entity.player.attack.sweep master @p ~ ~ ~ 0.5 1

execute as @e[tag=weapon_effect,tag=New] run function skill:act/normal_atk/normal_atk1