#チャンクのロードを確認
execute store success score #ChunkLoad1 Number run summon minecraft:area_effect_cloud ~-32 ~ ~-32
execute store success score #ChunkLoad2 Number run summon minecraft:area_effect_cloud ~-32 ~ ~-16
execute store success score #ChunkLoad3 Number run summon minecraft:area_effect_cloud ~-32 ~ ~
execute store success score #ChunkLoad4 Number run summon minecraft:area_effect_cloud ~-32 ~ ~16
execute store success score #ChunkLoad5 Number run summon minecraft:area_effect_cloud ~-16 ~ ~-32
execute store success score #ChunkLoad6 Number run summon minecraft:area_effect_cloud ~-16 ~ ~-16
execute store success score #ChunkLoad7 Number run summon minecraft:area_effect_cloud ~-16 ~ ~
execute store success score #ChunkLoad8 Number run summon minecraft:area_effect_cloud ~-16 ~ ~16
execute store success score #ChunkLoad9 Number run summon minecraft:area_effect_cloud ~ ~ ~-32
execute store success score #ChunkLoad10 Number run summon minecraft:area_effect_cloud ~ ~ ~-16
#execute store success score #ChunkLoad11 Number run summon minecraft:area_effect_cloud ~ ~ ~
execute store success score #ChunkLoad11 Number run summon minecraft:area_effect_cloud ~ ~ ~16
execute store success score #ChunkLoad12 Number run summon minecraft:area_effect_cloud ~16 ~ ~-32
execute store success score #ChunkLoad13 Number run summon minecraft:area_effect_cloud ~16 ~ ~-16
execute store success score #ChunkLoad14 Number run summon minecraft:area_effect_cloud ~16 ~ ~
execute store success score #ChunkLoad15 Number run summon minecraft:area_effect_cloud ~16 ~ ~16

execute if score #ChunkLoad1 Number matches 1 if score #ChunkLoad2 Number matches 1 if score #ChunkLoad3 Number matches 1 if score #ChunkLoad4 Number matches 1 if score #ChunkLoad5 Number matches 1 if score #ChunkLoad6 Number matches 1 if score #ChunkLoad7 Number matches 1 if score #ChunkLoad8 Number matches 1 if score #ChunkLoad9 Number matches 1 if score #ChunkLoad10 Number matches 1 if score #ChunkLoad11 Number matches 1 if score #ChunkLoad12 Number matches 1 if score #ChunkLoad13 Number matches 1 if score #ChunkLoad14 Number matches 1 if score #ChunkLoad15 Number matches 1 run function map:generate/allocate/main
