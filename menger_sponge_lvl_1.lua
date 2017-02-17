


--[[	--------------------------------------------------------------------

				Menger Sponge Lvl -1

	--------------------------------------------------------------------	--]]



minetest.register_node("menger_sponge:lvl_1", {
	description = "Menger lvl -1",
	
	paramtype = "light",
	
	
	
	
--	tiles = {"menger_sponge_lvl-1--inventory__16x16.png"},
	
	
--	tiles = {"menger_sponge_lvl-1__16x16.png"},
	
	tiles = {"01-y2.png", "01-y1.png", "01-xz.png", "01-xz.png", "01-xz.png^[transformFx", "01-xz.png^[transformFx"},
-- 	tiles = {"y.png", "y.png", "x.png", "x.png", "z.png", "z.png"}, 
-- 	tiles = {"02-1.png", "02-2.png^[transformR180", "02-1.png", "02-2.png", "02-1.png^[transformFx", "02-2.png^[transformFx"},
	
	inventory_image = minetest.inventorycube("menger_sponge_lvl-1--inventory__16x16.png"),		--	équivalent à 	inventory_image = "[inventorycube{img1.png{img2.png{img3.png"
	
	
	-- Création des blocs en menger de level 0
	
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			
			-- barres selon (x) avec y = [-0.5 ; -0.1667]
			
			{-0.5, -0.5, -0.5, 		0.5, -0.1667, -0.1667},
			{-0.5, -0.5, 0.1667, 		0.5, -0.1667, 0.5},
			
			-- barres sur (x) avec y = [0.1667, 0.5]
			
			{-0.5, 0.1667, -0.5, 		0.5, 0.5, -0.1667},
			{-0.5, 0.1667, 0.1667, 		0.5, 0.5, 0.5},
			
			
			-- cubes sur (x) avec z =[-0.1667 ; 0.1667] et y = [-0.5 ; -0.1667]
			
			{-0.5, -0.5, -0.1667, 		-0.1667, -0.1667, 0.1667},
			{0.1667, -0.5, -0.1667, 	0.5, -0.1667, 0.1667},
			
			-- cubes sur (x) avec z =[-0.1667 ; 0.1667] et y = [0.1667 ; 0.5]
			
			{-0.5, 0.1667, -0.1667, 		-0.1667, 0.5, 0.1667},
			{0.1667, 0.1667, -0.1667, 		0.5, 0.5, 0.1667},
			
			-- cubes sur (y) avec y = [-0.1667 ; 0.1667]
			
			{-0.5, -0.1667, -0.5, 		-0.1667, 0.1667, -0.1667},
			{0.1667, -0.1667, 0.1667, 	0.5, 0.1667, 0.5},
			
			{-0.5, -0.1667, 0.1667, 	-0.1667, 0.1667, 0.5},
			{0.1667, -0.1667, -0.5, 	0.5, 0.1667, -0.1667}
			
		},
	},
	
	-- remets la sélection du node en "normale" (au lieu d'avoir des "trous" suivant la construction)
	
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 	0.5, 0.5, 0.5},
	},
	
--]]
	
	
	groups = {cracky = 3, oddly_breakable_by_hand=3, menger_sponge=1},
	
	sounds = default.node_sound_stone_defaults(),
	
}) 



-- pour le crafter :

minetest.register_craft({
	output = "menger_sponge:lvl_1 8",
	recipe = {
		{"menger_sponge:stone", "menger_sponge:stone", "menger_sponge:stone"},
		{"menger_sponge:stone", 	   ""		   , "menger_sponge:stone"},
		{"menger_sponge:stone", "menger_sponge:stone", "menger_sponge:stone"},
	}
})


-- pour le faire cuire :

minetest.register_craft({
	type = "cooking",
	output = "menger_sponge:stone",
	recipe = "menger_sponge:lvl_1",
	cooktime = 1,
})





























