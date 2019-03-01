#if DodSplP(%) < rand(0~100) then function block
scoreboard players set #RandMod Number 100
function main:rand
execute if score @s DodSplP >= #RandMod Number run playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 1 2
#execute if score @s DodSplP >= #RandMod Number run say 攻撃を見切った!
execute if score @s DodSplP < #RandMod Number run function skill:calc/block/spell/check
