


--[[	--------------------------------------------------------------------

				Menger Sponge Lvl -2

	--------------------------------------------------------------------	--]]



minetest.register_node("menger_sponge:lvl_2", {
	description = "Menger lvl -2",	
	
	paramtype = "light",
	
		
--	tiles = {"menger_sponge_lvl-2--inventory__32x32.png"},	-- image pour block standard
	
	
--	
	
	tiles = {"menger_sponge_lvl-2__32x32.png"},
	
	inventory_image = minetest.inventorycube("menger_sponge_lvl-2--inventory__32x32.png", "menger_sponge_lvl-2--inventory__32x32.png", "menger_sponge_lvl-2--inventory__32x32.png"),
	
	-- Création des blocs en menger de level -1
	
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			
			
		-- barres selon x = [-0.5 ; 0.5]
		
				-- carré y,z = [-0.5 ; -0.1667]

			{-0.5, -0.5, -0.5, 		0.5, -0.3889, -0.3889},
			{-0.5, -0.2778, -0.5, 		0.5, -0.1667, -0.3889},
			{-0.5, -0.5, -0.2778, 		0.5, -0.3889, -0.1667},
			{-0.5, -0.2778, -0.2778, 	0.5, -0.1667, -0.1667},
			
				-- carré y,z = [0.1667 ; 0.5]

			{-0.5, 0.1667, 0.1667, 		0.5, 0.2778, 0.2778},
			{-0.5, 0.1667, 0.3889, 		0.5, 0.2778, 0.5},
			{-0.5, 0.3889, 0.1667, 		0.5, 0.5, 0.2778},
			{-0.5, 0.3889, 0.3889, 		0.5, 0.5, 0.5},
		
				-- carré y = [-0.5 ; -0.1667] ; z = [0.1667 ; 0.5]

			{-0.5, -0.5, 0.1667, 		0.5, -0.3889, 0.2778},
			{-0.5, -0.2778, 0.3889, 	0.5, -0.1667, 0.5},
			{-0.5, -0.2778, 0.1667, 	0.5, -0.1667, 0.2778},
			{-0.5, -0.5, 0.3889, 		0.5, -0.3889, 0.5},
			
				-- carré y = [0.1667 ; 0.5] ; z = [-0.5 ; -0.1667]

			{-0.5, 0.1667, -0.5, 		0.5, 0.2778, -0.3889},
			{-0.5, 0.3889, -0.5, 		0.5, 0.5, -0.3889},
			{-0.5, 0.1667, -0.2778, 	0.5, 0.2778, -0.1667},
			{-0.5, 0.3889, -0.2778, 	0.5, 0.5, -0.1667},
			

		-- barres selon x = [-0.5 ; -0.1667]
		
				--- carré y = [-0.5 ; -0.1667] ; z = [-0.1667 ; 0.1667]

			{-0.5, -0.5, -0.1667, 		-0.1667, -0.3889, -0.0556},
			{-0.5, -0.2778, -0.1667, 	-0.1667, -0.1667, -0.0556},
			{-0.5, -0.5, 0.0556, 		-0.1667, -0.3889, 0.1667},
			{-0.5, -0.2778, 0.0556, 	-0.1667, -0.1667, 0.1667},
		
				--- carré y = [0.1667 ; 0.5] ; z = [-0.1667 ; 0.1667]

			{-0.5, 0.1667, -0.1667, 	-0.1667, 0.2778, -0.0556},
			{-0.5, 0.3889, -0.1667, 	-0.1667, 0.5, -0.0556},
			{-0.5, 0.1667, 0.0556, 		-0.1667, 0.2778, 0.1667},
			{-0.5, 0.3889, 0.0556, 		-0.1667, 0.5, 0.1667},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [-0.5 ; -0.1667]

			{-0.5, -0.1667, -0.5, 		-0.1667, -0.0556, -0.3889},
			{-0.5, -0.1667, -0.2778, 	-0.1667, -0.0556, -0.1667},
			{-0.5, 0.0556, -0.5, 		-0.1667, 0.1667, -0.3889},
			{-0.5, 0.0556, -0.2778, 	-0.1667, 0.1667, -0.1667},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [0.1667 ; 0.5]

			{-0.5, -0.1667, 0.1667, 	-0.1667, -0.0556, 0.2778},
			{-0.5, -0.1667, 0.3889, 	-0.1667, -0.0556, 0.5},
			{-0.5, 0.0556, 0.1667, 		-0.1667, 0.1667, 0.2778},
			{-0.5, 0.0556, 0.3889, 		-0.1667, 0.1667, 0.5},
			
			
			
		-- barres selon x = [0.1667 ; 0.5]
		
				--- carré y = [-0.5 ; -0.1667] ; z = [-0.1667 ; 0.1667]

			{0.1667, -0.5, -0.1667, 	0.5, -0.3889, -0.0556},
			{0.1667, -0.2778, -0.1667, 	0.5, -0.1667, -0.0556},
			{0.1667, -0.5, 0.0556, 		0.5, -0.3889, 0.1667},
			{0.1667, -0.2778, 0.0556, 	0.5, -0.1667, 0.1667},
		
				--- carré y = [0.1667 ; 0.5] ; z = [-0.1667 ; 0.1667]

			{0.1667, 0.1667, -0.1667, 	0.5, 0.2778, -0.0556},
			{0.1667, 0.3889, -0.1667, 	0.5, 0.5, -0.0556},
			{0.1667, 0.1667, 0.0556, 	0.5, 0.2778, 0.1667},
			{0.1667, 0.3889, 0.0556, 	0.5, 0.5, 0.1667},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [-0.5 ; -0.1667]

			{0.1667, -0.1667, -0.5, 	0.5, -0.0556, -0.3889},
			{0.1667, -0.1667, -0.2778, 	0.5, -0.0556, -0.1667},
			{0.1667, 0.0556, -0.5, 		0.5, 0.1667, -0.3889},
			{0.1667, 0.0556, -0.2778, 	0.5, 0.1667, -0.1667},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [0.1667 ; 0.5]

			{0.1667, -0.1667, 0.1667, 	0.5, -0.0556, 0.2778},
			{0.1667, -0.1667, 0.3889, 	0.5, -0.0556, 0.5},
			{0.1667, 0.0556, 0.1667, 	0.5, 0.1667, 0.2778},
			{0.1667, 0.0556, 0.3889, 	0.5, 0.1667, 0.5},
			

		-- barres selon x = [-0.2778 ; -0.0556]
		
				-- carré y,z = [-0.5 ; -0.1667]

			{-0.2778, -0.5, -0.3889, 	-0.0556, -0.3889, -0.2778},
			{-0.2778, -0.2778, -0.3889, 	-0.0556, -0.1667, -0.2778},
			{-0.2778, -0.3889, -0.5, 	-0.0556, -0.2778, -0.3889},
			{-0.2778, -0.3889, -0.2778, 	-0.0556, -0.2778, -0.1667},
			
				-- carré y,z = [0.1667 ; 0.5]

			{-0.2778, 0.3889, 0.2778, 	-0.0556, 0.5, 0.3889},
			{-0.2778, 0.1667, 0.2778, 	-0.0556, 0.2778, 0.3889},
			{-0.2778, 0.2778, 0.3889, 	-0.0556, 0.3889, 0.5},
			{-0.2778, 0.2778, 0.1667, 	-0.0556, 0.3889, 0.2778},
		
				-- carré y = [-0.5 ; -0.1667] ; z = [0.1667 ; 0.5]

			{-0.2778, -0.5, 0.2778, 	-0.0556, -0.3889, 0.3889},
			{-0.2778, -0.2778, 0.2778, 	-0.0556, -0.1667, 0.3889},
			{-0.2778, -0.3889, 0.3889, 	-0.0556, -0.2778, 0.5},
			{-0.2778, -0.3889, 0.1667, 	-0.0556, -0.2778, 0.2778},
			
				-- carré y = [0.1667 ; 0.5] ; z = [-0.5 ; -0.1667]

			{-0.2778, 0.3889, -0.3889, 	-0.0556, 0.5, -0.2778},
			{-0.2778, 0.1667, -0.3889, 	-0.0556, 0.2778, -0.2778},
			{-0.2778, 0.2778, -0.5, 	-0.0556, 0.3889, -0.3889},
			{-0.2778, 0.2778, -0.2778, 	-0.0556, 0.3889, -0.1667},
			
			
		-- barres selon x = [0.0556 ; 0.2778]
		
				-- carré y,z = [-0.5 ; -0.1667]

			{0.0556, -0.5, -0.3889, 	0.2778, -0.3889, -0.2778},
			{0.0556, -0.2778, -0.3889, 	0.2778, -0.1667, -0.2778},
			{0.0556, -0.3889, -0.5, 	0.2778, -0.2778, -0.3889},
			{0.0556, -0.3889, -0.2778, 	0.2778, -0.2778, -0.1667},
			
				-- carré y,z = [0.1667 ; 0.5]

			{0.0556, 0.3889, 0.2778, 	0.2778, 0.5, 0.3889},
			{0.0556, 0.1667, 0.2778, 	0.2778, 0.2778, 0.3889},
			{0.0556, 0.2778, 0.3889, 	0.2778, 0.3889, 0.5},
			{0.0556, 0.2778, 0.1667, 	0.2778, 0.3889, 0.2778},
		
				-- carré y = [-0.5 ; -0.1667] ; z = [0.1667 ; 0.5]

			{0.0556, -0.5, 0.2778, 		0.2778, -0.3889, 0.3889},
			{0.0556, -0.2778, 0.2778, 	0.2778, -0.1667, 0.3889},
			{0.0556, -0.3889, 0.3889, 	0.2778, -0.2778, 0.5},
			{0.0556, -0.3889, 0.1667, 	0.2778, -0.2778, 0.2778},
			
				-- carré y = [0.1667 ; 0.5] ; z = [-0.5 ; -0.1667]

			{0.0556, 0.3889, -0.3889, 	0.2778, 0.5, -0.2778},
			{0.0556, 0.1667, -0.3889, 	0.2778, 0.2778, -0.2778},
			{0.0556, 0.2778, -0.5, 		0.2778, 0.3889, -0.3889},
			{0.0556, 0.2778, -0.2778, 	0.2778, 0.3889, -0.1667},
			

		-- cubes sur x = [-0.5 ; -0.3889]
		
				-- carré y,z = [-0.5 ; -0.1667]

			{-0.5, -0.5, -0.3889, 		-0.3889, -0.3889, -0.2778},
			{-0.5, -0.3889, -0.5, 		-0.3889, -0.2778, -0.3889},
			
				--- carré y = [-0.5 ; -0.1667] ; z = [-0.1667 ; 0.1667]

			{-0.5, -0.5, -0.0556, 		-0.3889, -0.3889, 0.0556},
			{-0.5, -0.2778, -0.0556, 	-0.3889, -0.1667, 0.0556},
			
				--- carré y = [-0.1667 ; 0.1667] ; z = [0.1667 ; 0.5]

			{-0.5, -0.0556, 0.1667, 	-0.3889, 0.0556, 0.2778},
			{-0.5, -0.0556, 0.3889, 	-0.3889, 0.0556, 0.5},
			
				-- carré y = [-0.5 ; -0.1667] ; z = [0.1667 ; 0.5]

			{-0.5, -0.5, 0.2778, 		-0.3889, -0.3889, 0.3889},
			{-0.5, -0.3889, 0.3889, 	-0.3889, -0.2778, 0.5},
			
				-- carré y,z = [0.1667 ; 0.5]

			{-0.5, 0.3889, 0.2778, 		-0.3889, 0.5, 0.3889},
			{-0.5, 0.2778, 0.3889, 		-0.3889, 0.3889, 0.5},
		
				--- carré y = [0.1667 ; 0.5] ; z = [-0.1667 ; 0.1667]

			{-0.5, 0.1667, -0.0556, 	-0.3889, 0.2778, 0.0556},
			{-0.5, 0.3889, -0.0556, 	-0.3889, 0.5, 0.0556},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [-0.5 ; -0.1667]

			{-0.5, -0.0556, -0.5, 		-0.3889, 0.0556, -0.3889},
			{-0.5, -0.0556, -0.2778, 	-0.3889, 0.0556, -0.1667},			
			
				-- carré y = [0.1667 ; 0.5] ; z = [-0.5 ; -0.1667]

			{-0.5, 0.3889, -0.3889, 	-0.3889, 0.5, -0.2778},
			{-0.5, 0.2778, -0.5, 		-0.3889, 0.3889, -0.3889},
			
				
				-- barres de liaison 1x2/2x1
			
			{-0.5, -0.3889, -0.2778, 	-0.3889, -0.2778, -0.0556},
			{-0.5, -0.3889, 0.0556, 	-0.3889, -0.2778, 0.2778},
			{-0.5, -0.2778, 0.2778, 	-0.3889, -0.0556, 0.3889},
			{-0.5, 0.0556, 0.2778, 		-0.3889, 0.2778, 0.3889},
			{-0.5, 0.2778, 0.0556, 		-0.3889, 0.3889, 0.2778},
			{-0.5, 0.2778, -0.2778, 	-0.3889, 0.3889, -0.0556},
			{-0.5, 0.0556, -0.3889, 	-0.3889, 0.2778, -0.2778},
			{-0.5, -0.2778, -0.3889, 	-0.3889, -0.0556, -0.2778},
			
		-- cubes sur x = [0.3889 ; 0.5]
		
				-- carré y,z = [-0.5 ; -0.1667]

			{0.3889, -0.5, -0.3889, 	0.5, -0.3889, -0.2778},
			{0.3889, -0.3889, -0.5, 	0.5, -0.2778, -0.3889},
			
				--- carré y = [-0.5 ; -0.1667] ; z = [-0.1667 ; 0.1667]

			{0.3889, -0.5, -0.0556, 	0.5, -0.3889, 0.0556},
			{0.3889, -0.2778, -0.0556, 	0.5, -0.1667, 0.0556},
			
				--- carré y = [-0.1667 ; 0.1667] ; z = [0.1667 ; 0.5]

			{0.3889, -0.0556, 0.1667, 	0.5, 0.0556, 0.2778},
			{0.3889, -0.0556, 0.3889, 	0.5, 0.0556, 0.5},
			
				-- carré y = [-0.5 ; -0.1667] ; z = [0.1667 ; 0.5]

			{0.3889, -0.5, 0.2778, 		0.5, -0.3889, 0.3889},
			{0.3889, -0.3889, 0.3889, 	0.5, -0.2778, 0.5},
			
				-- carré y,z = [0.1667 ; 0.5]

			{0.3889, 0.3889, 0.2778, 	0.5, 0.5, 0.3889},
			{0.3889, 0.2778, 0.3889, 	0.5, 0.3889, 0.5},
		
				--- carré y = [0.1667 ; 0.5] ; z = [-0.1667 ; 0.1667]

			{0.3889, 0.1667, -0.0556, 	0.5, 0.2778, 0.0556},
			{0.3889, 0.3889, -0.0556, 	0.5, 0.5, 0.0556},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [-0.5 ; -0.1667]

			{0.3889, -0.0556, -0.5, 	0.5, 0.0556, -0.3889},
			{0.3889, -0.0556, -0.2778, 	0.5, 0.0556, -0.1667},			
			
				-- carré y = [0.1667 ; 0.5] ; z = [-0.5 ; -0.1667]

			{0.3889, 0.3889, -0.3889, 	0.5, 0.5, -0.2778},
			{0.3889, 0.2778, -0.5, 		0.5, 0.3889, -0.3889},
			
				
				-- barres de liaison 1x2/2x1
			
			{0.3889, -0.3889, -0.2778, 	0.5, -0.2778, -0.0556},
			{0.3889, -0.3889, 0.0556, 	0.5, -0.2778, 0.2778},
			{0.3889, -0.2778, 0.2778, 	0.5, -0.0556, 0.3889},
			{0.3889, 0.0556, 0.2778, 	0.5, 0.2778, 0.3889},
			{0.3889, 0.2778, 0.0556, 	0.5, 0.3889, 0.2778},
			{0.3889, 0.2778, -0.2778, 	0.5, 0.3889, -0.0556},
			{0.3889, 0.0556, -0.3889, 	0.5, 0.2778, -0.2778},
			{0.3889, -0.2778, -0.3889, 	0.5, -0.0556, -0.2778},
			
			
		-- cubes sur x = [-0.2778 ; -0.1667]
		
				--- carré y = [-0.5 ; -0.1667] ; z = [-0.1667 ; 0.1667]

			{-0.2778, -0.5, -0.0556, 	-0.1667, -0.3889, 0.0556},
			{-0.2778, -0.2778, -0.0556, 	-0.1667, -0.1667, 0.0556},
			{-0.2778, -0.3889, -0.1667, 	-0.1667, -0.2778, -0.0556},
			{-0.2778, -0.3889, 0.0556, 	-0.1667, -0.2778, 0.1667},
		
				--- carré y = [0.1667 ; 0.5] ; z = [-0.1667 ; 0.1667]

			{-0.2778, 0.1667, -0.0556, 	-0.1667, 0.2778, 0.0556},
			{-0.2778, 0.2778, -0.1667, 	-0.1667, 0.3889, -0.0556},
			{-0.2778, 0.2778, 0.0556, 	-0.1667, 0.3889, 0.1667},
			{-0.2778, 0.3889, -0.0556, 	-0.1667, 0.5, 0.0556},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [-0.5 ; -0.1667]

			{-0.2778, -0.0556, -0.5, 	-0.1667, 0.0556, -0.3889},
			{-0.2778, -0.1667, -0.3889, 	-0.1667, -0.0556, -0.2778},
			{-0.2778, 0.0556, -0.3889, 	-0.1667, 0.1667, -0.2778},
			{-0.2778, -0.0556, -0.2778, 	-0.1667, 0.0556, -0.1667},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [0.1667 ; 0.5]

			{-0.2778, -0.0556, 0.1667, 	-0.1667, 0.0556, 0.2778},
			{-0.2778, -0.1667, 0.2778, 	-0.1667, -0.0556, 0.3889},
			{-0.2778, 0.0556, 0.2778, 	-0.1667, 0.1667, 0.3889},
			{-0.2778, -0.0556, 0.3889, 	-0.1667, 0.0556, 0.5},
			
			
		-- cubes sur x = [0.1667 ; 0.2778]
		
				--- carré y = [-0.5 ; -0.1667] ; z = [-0.1667 ; 0.1667]

			{0.1667, -0.5, -0.0556, 	0.2778, -0.3889, 0.0556},
			{0.1667, -0.2778, -0.0556, 	0.2778, -0.1667, 0.0556},
			{0.1667, -0.3889, -0.1667, 	0.2778, -0.2778, -0.0556},
			{0.1667, -0.3889, 0.0556, 	0.2778, -0.2778, 0.1667},
		
				--- carré y = [0.1667 ; 0.5] ; z = [-0.1667 ; 0.1667]

			{0.1667, 0.1667, -0.0556, 	0.2778, 0.2778, 0.0556},
			{0.1667, 0.2778, -0.1667, 	0.2778, 0.3889, -0.0556},
			{0.1667, 0.2778, 0.0556, 	0.2778, 0.3889, 0.1667},
			{0.1667, 0.3889, -0.0556, 	0.2778, 0.5, 0.0556},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [-0.5 ; -0.1667]

			{0.1667, -0.0556, -0.5, 	0.2778, 0.0556, -0.3889},
			{0.1667, -0.1667, -0.3889, 	0.2778, -0.0556, -0.2778},
			{0.1667, 0.0556, -0.3889, 	0.2778, 0.1667, -0.2778},
			{0.1667, -0.0556, -0.2778, 	0.2778, 0.0556, -0.1667},
		
				--- carré y = [-0.1667 ; 0.1667] ; z = [0.1667 ; 0.5]

			{0.1667, -0.0556, 0.1667, 	0.2778, 0.0556, 0.2778},
			{0.1667, -0.1667, 0.2778, 	0.2778, -0.0556, 0.3889},
			{0.1667, 0.0556, 0.2778, 	0.2778, 0.1667, 0.3889},
			{0.1667, -0.0556, 0.3889, 	0.2778, 0.0556, 0.5},			
			
			
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
	output = "menger_sponge:lvl_2 8",
	recipe = {
		{"menger_sponge:lvl_1", "menger_sponge:lvl_1", "menger_sponge:lvl_1"},
		{"menger_sponge:lvl_1", 	   ""		   , "menger_sponge:lvl_1"},
		{"menger_sponge:lvl_1", "menger_sponge:lvl_1", "menger_sponge:lvl_1"}
	}
})


-- pour le faire cuire :

minetest.register_craft({
	type = "cooking",
	output = "menger_sponge:lvl_1",
	recipe = "menger_sponge:lvl_2",
	cooktime = 1,
})


































