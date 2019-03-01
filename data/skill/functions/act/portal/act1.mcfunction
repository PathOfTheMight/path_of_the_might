#ポータルにはワープ先のmapid,座標を保存
execute store result score #X1 Number run data get entity @s Pos[0]
execute store result score #Y1 Number run data get entity @s Pos[1]
execute store result score #Z1 Number run data get entity @s Pos[2]
scoreboard players operation #Map Number = @s map
scoreboard players operation #portal_id Number = @s portal_id
scoreboard players operation #ID Number = @s ID

playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1

#古いportal削除
execute as @e[tag=Portal] if score @s ID = #ID Number run kill @s

#portal召喚
summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Tags:[portal,field_portal,rotate,rotate3,New],Duration:2100000000}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Tags:[portal,town_portal,rotate,rotate3,New],Duration:2100000000}

execute as @e[tag=Portal,tag=New] run function skill:act/portal/act2
