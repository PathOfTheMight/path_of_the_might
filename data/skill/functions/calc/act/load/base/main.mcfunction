#基本をロード
###Atk
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Attack run function skill:calc/act/load/base/attack
###Spl
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Spell run function skill:calc/act/load/base/spell
###Proj
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Projectile run function skill:calc/act/load/base/projectile
###Area
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Area run function skill:calc/act/load/base/area
###Dur
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Duration run function skill:calc/act/load/base/duration
#ActiveGemを加算
function skill:calc/act/gem/main
