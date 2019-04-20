###Atk
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Attack]}}}]} run function skill:calc/act/apply/attack
###Spl
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Spell]}}}]} run function skill:calc/act/apply/spell
###Proj
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Projectile]}}}]} run function skill:calc/act/apply/projectile
###Area
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Area]}}}]} run function skill:calc/act/apply/range
###Dur
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Duration]}}}]} run function skill:calc/act/apply/duration

###RngExp
scoreboard players operation @s RngExp = #Temp RngExp
