execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.Fireball run function skill:act/fireball/act0
execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.IceSpear run function skill:act/ice_spear/act0
execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.StormCall anchored eyes run function skill:act/storm_call/act0
execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.Arc anchored eyes run function skill:act/arc/act0
execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.NormalAttack rotated ~ ~-10 run function skill:act/normal_atk/normal_atk0
execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.FireNova anchored eyes run function skill:act/fire_nova/act0
execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.IceNova anchored eyes run function skill:act/ice_nova/act0
execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.ShockNova anchored eyes run function skill:act/shock_nova/act0

execute if data entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.Portal run function skill:act/portal/portal0
#execute if entity @s[scores={WaitTimeH=0}] anchored feet run function skill:act/portal/portal0

tag @s remove Drop
tag @s remove Swap