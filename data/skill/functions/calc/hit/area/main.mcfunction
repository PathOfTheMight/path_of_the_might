execute if entity @s[tag=UniqueHit] run function skill:calc/hit/unique

execute if entity @s[tag=Attack] as @e[scores={RngFlag=3},distance=..21] run function skill:calc/hit/apply/attack
execute if entity @s[tag=Spell] as @e[scores={RngFlag=3},distance=..21] run function skill:calc/hit/apply/spell
execute if entity @s[tag=Dot] as @e[scores={RngFlag=3},distance=..21] run function skill:calc/hit/apply/dot

