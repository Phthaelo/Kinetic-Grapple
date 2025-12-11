#Attach Player UUID to Fishing Bobber

tag @s add kinetic_grapple.init

#Smithed Compatibility Tags
tag @s add smithed.entity
tag @s add smithed.strict

#Store Player UUID
execute as @p[scores={kinetic_grapple.fishing_rod=1..}] run function kinetic_grapple:uuid_store_player
scoreboard players reset * kinetic_grapple.fishing_rod

#Copy Player UUID to Bobber
function kinetic_grapple:uuid_copy_player