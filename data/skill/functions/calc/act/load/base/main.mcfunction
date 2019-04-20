#基本をロード
###Atk
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Attack]}}}]} run function skill:calc/act/load/base/attack
###Spl
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Spell]}}}]} run function skill:calc/act/load/base/spell
###Proj
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Projectile]}}}]} run function skill:calc/act/load/base/projectile
###Area
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Area]}}}]} run function skill:calc/act/load/base/range
###Dur
execute if data entity 00000000-0000-0000-0000-0000000000 {ArmorItems:[{tag:{Gem:{Tags:[Duration]}}}]} run function skill:calc/act/load/base/duration

###RngExp
execute if score #Temp Mult matches 1.. run function skill:calc/range/set_exp/act
execute unless score #Temp Mult matches 1.. run scoreboard players set #Temp RngExp -1
