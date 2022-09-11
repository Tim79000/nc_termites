minetest.register_abm({
	label = "make infested termite soil wet",
	nodenames = {"nc_termites:infested_soil"},
	interval = 1,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "group:water" }) then
			minetest.set_node(pos, {name = "nc_termites:wet_soil"})
		end
	end
})

minetest.register_abm({
	label = "make termite soil wet",
	nodenames = {"nc_termites:soil"},
	interval = 1,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "group:water" }) then
			minetest.set_node(pos, {name = "nc_termites:wet_soil"})
		end
	end
})

minetest.register_abm({
	label = "dry wet termite soil",
	nodenames = {"nc_termites:wet_soil"},
	interval = 5,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.find_node_near(pos, 1, { "group:water" }) == nil then
			minetest.set_node(pos, {name = "nc_termites:soil"})
		end
	end
})