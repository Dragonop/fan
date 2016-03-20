local ns = minetest.get_current_modname()
minetest.register_node(ns .. ":fan", {
	description = "Fan",
	drawtype = "nodebox",
	tiles = {
		"fantest_fansides.png^[transformR90", "fantest_fanbottom.png",
		"fantest_fansides.png", "fantest_fansides.png",
		{
			image = "fantest_fanblades_back.png",
			backface_culling = false, -- no idea
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = .2 --not sure here either
			}
		},
		{
			image = "fantest_fanblades_front.png",
			backface_culling = false, -- no idea
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = .2 --not sure here either
			}
		}
	},
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 1},
	--sounds = {},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0}
	}
})
