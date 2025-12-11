#Ticking Function for Kinetic Grapple

execute as @e[type=fishing_bobber,tag=!kinetic_grapple.init] at @s positioned ~ ~-1.62 ~ run function kinetic_grapple:uuid_bobber
execute as @e[type=fishing_bobber,tag=!kinetic_grapple.hooked] at @s if predicate kinetic_grapple:on_ground run function kinetic_grapple:hook
execute as @e[type=item,tag=kinetic_grapple.hook] unless entity @e[type=fishing_bobber] run kill @s