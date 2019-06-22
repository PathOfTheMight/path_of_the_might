#ブロックに当たると消える tag=unslide
tag @s[tag=Unslide] add Kill
#ブロックに当たるとくっつく tag=sticky
data merge entity @s[tag=Sticky] {NoGravity:1b}
tag @s[tag=Sticky] remove Move
#ブロックに当たると反射 tag=Reflect
execute if entity @s[tag=Reflect] run function main:physics/move/reflect
tag @s[tag=Block] remove Block
