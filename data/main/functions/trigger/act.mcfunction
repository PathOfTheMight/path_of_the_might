execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"Fireball"}}}]} run function skill:act/fireball/act0
execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"IceSpear"}}}]} run function skill:act/ice_spear/act0
execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"StormCall"}}}]} anchored eyes run function skill:act/storm_call/act0
execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"Arc"}}}]} anchored eyes run function skill:act/arc/act0
execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"NormalAttack"}}}]} rotated ~ ~-10 run function skill:act/normal_atk/normal_atk0
execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"FireNova"}}}]} anchored eyes run function skill:act/fire_nova/act0
execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"IceNova"}}}]} anchored eyes run function skill:act/ice_nova/act0
execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"ShockNova"}}}]} anchored eyes run function skill:act/shock_nova/act0

execute if data entity 00000000-0000-0000-0000-000000000000 {ArmorItems:[{tag:{Gem:{Name:"Portal"}}}]} run function skill:act/portal/portal0

tag @s remove Drop
tag @s remove Swap
