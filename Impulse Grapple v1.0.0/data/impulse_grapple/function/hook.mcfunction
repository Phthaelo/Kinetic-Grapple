#Hooks Bobber to Slime Block Item so pull can be detected via Advancement

summon item ~ ~ ~ {Tags:["impulse_grapple.hook","smithed.entity","smithed.strict"],Invulnerable:1b,PickupDelay:32767,Item:{id:"minecraft:slime_block",count:1}}

#Copy UUID scores to Hook
scoreboard players operation @n[type=item,tag=impulse_grapple.hook] impulse_grapple.UUID0 = @s impulse_grapple.UUID0
scoreboard players operation @n[type=item,tag=impulse_grapple.hook] impulse_grapple.UUID1 = @s impulse_grapple.UUID1
scoreboard players operation @n[type=item,tag=impulse_grapple.hook] impulse_grapple.UUID2 = @s impulse_grapple.UUID2
scoreboard players operation @n[type=item,tag=impulse_grapple.hook] impulse_grapple.UUID3 = @s impulse_grapple.UUID3

ride @s mount @n[type=item,tag=impulse_grapple.hook]
tp ~ ~.6 ~

tag @s add impulse_grapple.hooked