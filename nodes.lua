minetest.register_node('nc_termites:infested_soil', {
    tiles = { 'nc_termites_soil.png^nc_termites_termites_overlay.png' },
    description = "Infested Termite Soil",
    groups = { damage_touch = 1, falling_repose = 3, dry_termite_soil = 1 },
    is_ground_content = false,
    sounds = nodecore.sounds("nc_terrain_crunchy")
})

minetest.register_node('nc_termites:soil', {
    tiles = { 'nc_termites_soil.png' },
    description = "Termite Soil",
    groups = { damage_touch = 1, falling_repose = 3,  dry_termite_soil = 1 },
    is_ground_content = false,
    sounds = nodecore.sounds("nc_terrain_crunchy")
})

minetest.register_node('nc_termites:wet_soil', {
    tiles = { 'nc_termites_wet_soil.png' },
    description = "Wet Termite Soil",
    groups = { crumbly = 1, falling_repose = 3 },
    is_ground_content = false,
    sounds = nodecore.sounds("nc_terrain_crunchy")
})