


--[[	--------------------------------------------------------------------

				Menger Sponge Lvl -1 Inversé

	--------------------------------------------------------------------	--]]



minetest.register_node("menger_sponge:lvl_1_Reverse", {
	description = "Menger lvl -1 Inversé",
	
	paramtype = "light",
	
	
	
	tiles = {"menger_sponge_lvl-1_Reverse__16x16.png"},
	
	
	-- Création des blocs en menger de level 0 inversé
	
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			
			-- barres sur (x)
			
			{-0.5, -0.1667, -0.1667, 	0.5, 0.1667, 0.1667},
			
			-- barres sur (y)
			
			{-0.1667, -0.5, -0.1667, 	0.1667, 0.5, 0.1667},
			
			
			-- barres sur (z)
			
			{-0.1667, -0.1667, -0.5, 	0.1667, 0.1667, 0.5},
			
		},
	},
	
--]]
	
	
	groups = {cracky = 3, oddly_breakable_by_hand=3, menger_sponge_reverse=1},
	
	sounds = default.node_sound_stone_defaults(),
	
}) 



-- pour le crafter :

minetest.register_craft({
	output = "menger_sponge:lvl_1_Reverse 5",
	recipe = {
		{	    ""		, "menger_sponge:stone" , 		""		},
		{"menger_sponge:stone"  , "menger_sponge:stone"	,  "menger_sponge:stone"},
		{	    ""		, "menger_sponge:stone" , 		""		},
	}
})


-- pour le faire cuire :

minetest.register_craft({
	type = "cooking",
	output = "menger_sponge:stone",
	recipe = "menger_sponge:lvl_1_Reverse",
	cooktime = 1,
})





























