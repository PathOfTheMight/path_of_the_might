#if BloSplP(%) < rand(0~100) then function dmg_red
scoreboard players set #RandMod Number 100
function main:rand
execute if score @s BloSplP >= #RandMod Number run playsound minecraft:item.shield.block master @a[distance=..16] ~ ~ ~ 1 1
#execute if score @s BloSplP >= #RandMod Number run say 攻撃を弾いた!
execute if score @s BloSplP < #RandMod Number run function skill:calc/damage/reduction/main