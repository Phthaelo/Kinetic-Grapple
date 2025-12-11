#Calculate distance between Player and Hook for Grapple Strength (impulse_grapple score), and rotate Player to face Hook (advancement triggered, @s is Player)

advancement revoke @s only impulse_grapple:pull

#Tag Hook Item with matching UUID scores "this"
function impulse_grapple:uuid_cache_nbt
execute as @e[type=item,tag=impulse_grapple.hook] if score @s impulse_grapple.UUID0 = .Cache impulse_grapple.UUID0 if score @s impulse_grapple.UUID1 = .Cache impulse_grapple.UUID1 if score @s impulse_grapple.UUID2 = .Cache impulse_grapple.UUID2 if score @s impulse_grapple.UUID3 = .Cache impulse_grapple.UUID3 run tag @s add impulse_grapple.this

#Set Grapple Strength from Distance between Player and This Hook
execute unless entity @e[type=item,tag=impulse_grapple.this] run return fail
execute if entity @n[type=item,tag=impulse_grapple.this,distance=0..7] run scoreboard players set @s impulse_grapple 1
execute if entity @n[type=item,tag=impulse_grapple.this,distance=7..8] run scoreboard players set @s impulse_grapple 2
execute if entity @n[type=item,tag=impulse_grapple.this,distance=8..9] run scoreboard players set @s impulse_grapple 3
execute if entity @n[type=item,tag=impulse_grapple.this,distance=9..10] run scoreboard players set @s impulse_grapple 4
execute if entity @n[type=item,tag=impulse_grapple.this,distance=10..11] run scoreboard players set @s impulse_grapple 5
execute if entity @n[type=item,tag=impulse_grapple.this,distance=11..12] run scoreboard players set @s impulse_grapple 6
execute if entity @n[type=item,tag=impulse_grapple.this,distance=12..13] run scoreboard players set @s impulse_grapple 7
execute if entity @n[type=item,tag=impulse_grapple.this,distance=13..14] run scoreboard players set @s impulse_grapple 8
execute if entity @n[type=item,tag=impulse_grapple.this,distance=14..15] run scoreboard players set @s impulse_grapple 9
execute if entity @n[type=item,tag=impulse_grapple.this,distance=15..16] run scoreboard players set @s impulse_grapple 10
execute if entity @n[type=item,tag=impulse_grapple.this,distance=16..] run scoreboard players set @s impulse_grapple 11

#Rotate Player to face This Hook
rotate @s facing entity @n[type=item,tag=impulse_grapple.this] eyes

#Cleanup This
kill @e[type=item,tag=impulse_grapple.this]

#Tag and Schedule
tag @s add impulse_grapple.grappling
schedule function impulse_grapple:wait 2t append