#Ticking Function for impulse Grapple

execute as @e[type=fishing_bobber,tag=!impulse_grapple.init] at @s positioned ~ ~-1.62 ~ run function impulse_grapple:uuid_bobber
execute as @e[type=fishing_bobber,tag=!impulse_grapple.hooked] at @s if predicate impulse_grapple:on_ground run function impulse_grapple:hook
execute as @e[type=item,tag=impulse_grapple.hook] run function impulse_grapple:match_check