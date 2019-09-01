execute if score #GlobalTier Number matches 6 run function item:enchant/roll/suffix/stun_recovery/tier6
execute if score #GlobalTier Number matches 5 run function item:enchant/roll/suffix/stun_recovery/tier5
execute if score #GlobalTier Number matches 4 run function item:enchant/roll/suffix/stun_recovery/tier4
execute if score #GlobalTier Number matches 3 run function item:enchant/roll/suffix/stun_recovery/tier3
execute if score #GlobalTier Number matches 2 run function item:enchant/roll/suffix/stun_recovery/tier2
execute if score #GlobalTier Number matches 1 run function item:enchant/roll/suffix/stun_recovery/tier1

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "StunRecovery"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" スタン回復速度","color":"gray","italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"dark_gray","italic":false}]'
