#Attach Player UUID to Fishing Bobber

tag @s add impulse_grapple.init

#Smithed Compatibility Tags
tag @s add smithed.entity
tag @s add smithed.strict

#Cache Player UUID
execute as @p[scores={impulse_grapple.fishing_rod=1..}] run function impulse_grapple:uuid_cache_nbt
scoreboard players reset * impulse_grapple.fishing_rod

#Copy Cached Player UUID to Bobber
function impulse_grapple:uuid_copy_cache