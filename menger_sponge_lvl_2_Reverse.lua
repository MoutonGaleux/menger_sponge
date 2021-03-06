


--[[	--------------------------------------------------------------------

				Menger Sponge Lvl -2 Inversé

	--------------------------------------------------------------------	--]]



minetest.register_node("menger_sponge:lvl_2_Reverse", {
	description = "Menger lvl -2 Inversé",
	
	paramtype = "light",
	
	
	
	tiles = {"menger_sponge_lvl-2_Reverse__16x16.png"},
	
	
	-- Création des blocs en menger de level 0 inversé
	
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			
			-- barres sur (x)
			
				-- y = [-0.1667 ; 0.1667]
			{-0.5, -0.1667, -0.1667, 	0.5, 0.1667, 0.1667},
			
				-- y = [-0.3889 ; -0.2778]
			{-0.5, -0.3889, -0.3889, 	0.5, -0.2778, -0.2778},
			{-0.5, -0.3889, -0.0556, 	0.5, -0.2778, 0.0556},
			{-0.5, -0.3889, 0.2778, 	0.5, -0.2778, 0.3889},
			
				-- y = [-0.0556 ; 0.0556]
			{-0.5, -0.0556, -0.3889, 	0.5, 0.0556, -0.2778},
			{-0.5, -0.0556, 0.2778, 	0.5, 0.0556, 0.3889},
			
				-- y = [0.2778 ; 0.3889]
			{-0.5, 0.2778, -0.3889, 	0.5, 0.3889, -0.2778},
			{-0.5, 0.2778, -0.0556, 	0.5, 0.3889, 0.0556},
			{-0.5, 0.2778, 0.2778, 		0.5, 0.3889, 0.3889},
			
			-- barres sur (y)
			
			{-0.1667, -0.5, -0.1667, 	0.1667, 0.5, 0.1667},
			
				-- z = [-0.3889 ; -0.2778]
			{-0.3889, -0.5, -0.3889, 	-0.2778, 0.5, -0.2778},
			{-0.0556, -0.5, -0.3889, 	0.0556, 0.5, -0.2778},
			{ 0.2778, -0.5, -0.3889,	0.3889, 0.5, -0.2778},
			
				-- z = [-0.0556 ; 0.0556]
			{-0.3889,-0.5, -0.0556,  	-0.2778, 0.5, 0.0556},
			{0.2778, -0.5, -0.0556, 	0.3889, 0.5, 0.0556},
			
				-- z = [0.2778 ; 0.3889]
			{-0.3889, -0.5, 0.2778, 	-0.2778, 0.5, 0.3889},
			{-0.0556, -0.5, 0.2778,  	0.0556, 0.5, 0.3889},
			{0.2778, -0.5, 0.2778, 		0.3889, 0.5, 0.3889},
			
			
			-- barres sur (z)
			
			{-0.1667, -0.1667, -0.5, 	0.1667, 0.1667, 0.5},
			
				-- x = [-0.3889 ; -0.2778]
			{-0.3889, -0.3889, -0.5, 	-0.2778, -0.2778, 0.5},
			{-0.3889, -0.0556, -0.5, 	-0.2778, 0.0556, 0.5},
			{-0.3889, 0.2778, -0.5, 	-0.2778, 0.3889, 0.5},
			
				-- x = [-0.0556 ; 0.0556]
			{-0.0556, -0.3889, -0.5, 	0.0556, -0.2778, 0.5},
			{-0.0556, 0.2778, -0.5, 	0.0556, 0.3889, 0.5},
			
				-- x = [0.2778 ; 0.3889]
			{0.2778, -0.3889, -0.5, 	0.3889, -0.2778, 0.5},
			{0.2778, -0.0556, -0.5, 	0.3889, 0.0556, 0.5},
			{0.2778, 0.2778, -0.5, 		0.3889, 0.3889, 0.5},
			
		},
	},
	
--]]
	
	
	groups = {cracky = 3, oddly_breakable_by_hand=3, menger_sponge_reverse=1},
	
	sounds = default.node_sound_stone_defaults(),
	
}) 



-- pour le crafter :

minetest.register_craft({
	output = "menger_sponge:lvl_2_Reverse 5",
	recipe = {
		{		  ""			 , "menger_sponge:lvl_1_Reverse" , 			 ""		     },
		{"menger_sponge:lvl_1_Reverse" , "menger_sponge:lvl_1_Reverse" ,  "menger_sponge:lvl_1_Reverse"},
		{		  ""			 , "menger_sponge:lvl_1_Reverse" , 			 ""		     },
	}
})


-- pour le faire cuire :

minetest.register_craft({
	type = "cooking",
	output = "menger_sponge:lvl_1_Reverse",
	recipe = "menger_sponge:lvl_2_Reverse",
	cooktime = 1,
})


































