-- Sleeping Mat
-- by David G (kestral246@gmail.com)
-- 2020-01-29

beds.register_bed("sleeping_mat:mat", {
	description = ("Grass Sleeping Mat"),
	inventory_image = "sleeping_mat_roll.png",
	wield_image = "sleeping_mat_roll.png",
	tiles = {
		bottom = {
			"sleeping_mat_top1.png",
			"sleeping_mat_top1_side.png",
		},
		top = {
			"sleeping_mat_top2.png",
			"sleeping_mat_top2_side.png",
		},
	},
	nodebox = {
		bottom = {
			{-1/2, -1/2, -1/2, 1/2, -7/16, 1/2}
		},
		top = {
			{-1/2, -1/2, -1/2, 1/2, -7/16, 1/2}
		},
	},
	selectionbox = {-1/2, -1/2, -1/2, 1/2, -7/16, 3/2},
	recipe = {  -- dummy recipe, subset of first shapeless recipe below
		{"group:grass", "group:dry_grass", "default:junglegrass"},
		{"group:grass", "group:dry_grass", "default:junglegrass"},
		{"group:grass", "group:dry_grass", "default:junglegrass"},
	},
})

minetest.register_craft({  -- without marram_grass
	output = "sleeping_mat:mat",
	type = "shapeless",
	recipe = {
		"group:grass", "group:grass", "group:grass",
		"group:dry_grass", "group:dry_grass", "group:dry_grass",
		"default:junglegrass", "default:junglegrass", "default:junglegrass"
	},
})

minetest.register_craft({  -- without junglegrass
	output = "sleeping_mat:mat",
	type = "shapeless",
	recipe = {
		"group:grass", "group:grass", "group:grass",
		"group:dry_grass", "group:dry_grass", "group:dry_grass",
		"default:marram_grass_1", "default:marram_grass_1", "default:marram_grass_1"
	},
})

minetest.register_craft({  -- without dry_grass
	output = "sleeping_mat:mat",
	type = "shapeless",
	recipe = {
		"group:grass", "group:grass", "group:grass",
		"default:junglegrass", "default:junglegrass", "default:junglegrass",
		"default:marram_grass_1", "default:marram_grass_1", "default:marram_grass_1"
	},
})

minetest.register_craft({  -- without grass
	output = "sleeping_mat:mat",
	type = "shapeless",
	recipe = {
		"group:dry_grass", "group:dry_grass", "group:dry_grass",
		"default:junglegrass", "default:junglegrass", "default:junglegrass",
		"default:marram_grass_1", "default:marram_grass_1", "default:marram_grass_1"
	},
})
