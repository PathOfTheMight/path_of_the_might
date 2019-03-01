#チャンクのロードを確認
execute store success score #chunk_load1 Number run summon minecraft:area_effect_cloud ~-32 ~ ~-32
execute store success score #chunk_load2 Number run summon minecraft:area_effect_cloud ~-32 ~ ~16
execute store success score #chunk_load3 Number run summon minecraft:area_effect_cloud ~16 ~ ~-32
execute store success score #chunk_load4 Number run summon minecraft:area_effect_cloud ~16 ~ ~16

execute if score #chunk_load1 Number matches 1 if score #chunk_load2 Number matches 1 if score #chunk_load3 Number matches 1 if score #chunk_load4 Number matches 1 run function map:load/transfer/tick
