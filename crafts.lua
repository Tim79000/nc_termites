nodecore.register_craft({
		label = "mix termite soil and sand",
		action = "stackapply",
		indexkeys = {"nc_terrain:sand"},
		wield = {name = "nc_termites:soil"},
		consumewield = 1,
		nodes = {
			{match = "nc_terrain:sand", replace = "nc_termites:soil_and_sand_mix"},
		}
	})