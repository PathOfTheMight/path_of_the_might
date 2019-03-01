#単体HIT 全体で1回のみ
execute if entity @s[scores={Pier=0..}] as @e[scores={AoE_count_add=2},limit=1] run function skill:calc/hit1_atk
scoreboard players operation #Number Number = @s Number
execute as @e[tag=weapon_effect] if score @s Number = #Number Number run scoreboard players remove @s[scores={Pier=0..}] Pier 1
execute if entity @s[scores={Pier=0..}] if entity @e[scores={AoE_count_add=2},limit=1] run function skill:act/normal_atk/normal_atk_hit0
