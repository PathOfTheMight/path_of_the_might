#第二形態に移行
execute if entity @s[scores={Dur=12}] run function skill:act/ice_spear/form_change
#死亡時
execute if entity @s[tag=Kill] run particle minecraft:dust 2 1 90000000 2 ~ ~ ~ 0.2 0.2 0.2 1 9 force
execute if entity @s[tag=Kill] run playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 1 0.3
#向き補正tp
tp @s[scores={Dur=17..18}] ^ ^ ^0.8 ~1 ~
tp @s[scores={Dur=13..15}] ^ ^ ^0.8 ~-1 ~
execute positioned as @s[scores={Dur=13..18}] if block ~ ~ ~ #main:solid_block run tag @s add Kill
