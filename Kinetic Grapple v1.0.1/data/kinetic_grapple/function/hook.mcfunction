#Hooks Bobber to Slime Block Item so pull can be detected via Advancement

summon item ~ ~ ~ {Tags:["kinetic_grapple.hook","smithed.entity","smithed.strict"],Invulnerable:1b,PickupDelay:32767,Item:{id:"minecraft:slime_block",count:1}}

#Copy UUID scores to Hook
scoreboard players operation @n[type=item,tag=kinetic_grapple.hook] kinetic_grapple.UUID0 = @s kinetic_grapple.UUID0
scoreboard players operation @n[type=item,tag=kinetic_grapple.hook] kinetic_grapple.UUID1 = @s kinetic_grapple.UUID1
scoreboard players operation @n[type=item,tag=kinetic_grapple.hook] kinetic_grapple.UUID2 = @s kinetic_grapple.UUID2
scoreboard players operation @n[type=item,tag=kinetic_grapple.hook] kinetic_grapple.UUID3 = @s kinetic_grapple.UUID3

ride @s mount @n[type=item,tag=kinetic_grapple.hook]
tp ~ ~.6 ~

tag @s add kinetic_grapple.hooked