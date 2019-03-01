#safety
execute if score @s map matches 0..20 run tellraw @s {"text":"ここでポータルを開く必要はない。"}

#inhibited
execute if score @s map matches 360..400 run tellraw @s {"text":"大いなる力によってポータルはかき消された……"}

execute if score @s map matches 21..359 run function skill:act/portal/act1
