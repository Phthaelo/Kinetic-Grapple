#Calculate distance between Player and Hook for Grapple Strength (kinetic_grapple score), and rotate Player to face Hook (advancement triggered)

advancement revoke @s only kinetic_grapple:pull

#Tag Hook Item with matching UUID scores "this"
function kinetic_grapple:uuid_store_player
execute as @n[type=item,tag=kinetic_grapple.hook] if score @s kinetic_grapple.UUID0 = Player kinetic_grapple.UUID0 if score @s kinetic_grapple.UUID1 = Player kinetic_grapple.UUID1 if score @s kinetic_grapple.UUID2 = Player kinetic_grapple.UUID2 if score @s kinetic_grapple.UUID3 = Player kinetic_grapple.UUID3 run tag @s add kinetic_grapple.this

#Set Grapple Strength from Distance between Player and This Hook
execute unless entity @n[type=item,tag=kinetic_grapple.this] run return fail
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=0..7] run scoreboard players set @s kinetic_grapple 1
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=7..8] run scoreboard players set @s kinetic_grapple 2
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=8..9] run scoreboard players set @s kinetic_grapple 3
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=9..10] run scoreboard players set @s kinetic_grapple 4
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=10..11] run scoreboard players set @s kinetic_grapple 5
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=11..12] run scoreboard players set @s kinetic_grapple 6
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=12..13] run scoreboard players set @s kinetic_grapple 7
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=13..14] run scoreboard players set @s kinetic_grapple 8
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=14..15] run scoreboard players set @s kinetic_grapple 9
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=15..16] run scoreboard players set @s kinetic_grapple 10
execute if entity @n[type=item,tag=kinetic_grapple.this,distance=16..] run scoreboard players set @s kinetic_grapple 11

#Rotate Player to face This Hook
rotate @s facing entity @n[type=item,tag=kinetic_grapple.this] eyes

#Cleanup This
kill @e[type=item,tag=kinetic_grapple.this]

#Tag and Schedule
tag @s add kinetic_grapple.grappling
schedule function kinetic_grapple:wait 2t append