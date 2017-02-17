


--[[	--------------------------------------------------------------------

				Menger Sponge mod Init

	--------------------------------------------------------------------	--]]







	-- fichier de définition/craft/cook de l'éponde de Menger level -1

dofile(minetest.get_modpath("menger_sponge").."/menger_sponge_lvl_1.lua")

	-- fichier de définition/craft/cook de l'éponde de Menger level -1 Inversée

dofile(minetest.get_modpath("menger_sponge").."/menger_sponge_lvl_1_Reverse.lua")


	-- fichier de définition/craft/cook de l'éponde de Menger level -2

dofile(minetest.get_modpath("menger_sponge").."/menger_sponge_lvl_2.lua")

	-- fichier de définition/craft/cook de l'éponde de Menger level -2 Inversée

dofile(minetest.get_modpath("menger_sponge").."/menger_sponge_lvl_2_Reverse.lua")



	-- fichier de définition/craft/cook/abm de la baguette magique de Menger

dofile(minetest.get_modpath("menger_sponge").."/menger_sponge_magic_wand.lua")



	-- fichier de définition/craft/cook de la Lampe éponde de Menger level -1

dofile(minetest.get_modpath("menger_sponge").."/menger_sponge_Light_1_3.lua")

	-- fichier de définition/craft/cook de la Lampe éponde de Menger level -2

dofile(minetest.get_modpath("menger_sponge").."/menger_sponge_Light_1_9.lua")




--[[	--------------------------------------------------------------------

				Menger Stone

	--------------------------------------------------------------------	--]]





minetest.register_node("menger_sponge:stone", {
	description = "Menger Stone",
	
	paramtype = "light",
	
	
	tiles = {"menger_sponge_stone__16x16.png"},
	
--[[
	-- dessine les bords de la Menger Stone que si elle n'est pas connectée à une autre Menger Stone
			-- pas mal du tout, mais comporte certains défauts, notamment le fait que les blocs "scintillent" à chaque mouvement (recalcul des connections et dessin/effaçage des bords à chaque mouvement)
	
	drawtype = "glasslike_framed",
	tiles = {"menger_sponge_stone__16x16.png", "default_stone.png"},
--]]
	
	
	groups = {menger = 1, cracky = 3, oddly_breakable_by_hand=3, menger_sponge=1, menger_sponge_reverse=1},
	
	sounds = default.node_sound_stone_defaults(),
	
}) 



-- pour le crafter :

minetest.register_craft({
	output = "menger_sponge:stone",
	recipe = {
		{"default:stone"},
	}
})


-- pour le faire cuire cuire :

minetest.register_craft({
	type = "cooking",
	output = "default:stone",
	recipe = "menger_sponge:stone",
	cooktime = 1,
})



--[[	--------------------------------------------------------------------
	--------------------------------------------------------------------	--]]






--[[

	-- pour s'en servir de combustible : (brûle "burntime" secondes)

minetest.register_craft({
	type = "fuel",
	recipe = "menger_sponge:lvl_1",
	burntime = 7,
})

--]]






--[[

	-- transforme tous les  moreblocks:wood_tile_center  en  menger_sponge:lvl1  (après 1s ; si dans la zone de dessin)

minetest.register_abm({
	nodenames = {"menger_sponge:lvl_1_light"},		-- "menger_sponge:stone" "menger_sponge:lvl_1" "menger_sponge:lvl_2"
--	interval = 1,						-- "moreblocks:circle_stone_bricks"	"default:stone"	"moreblocks:wood_tile_center"	"default:cobble" "default:mossycobble"
	chance = 1,
	action = function(pos)
--		if pos.y > 220 then
--		if pos.x >= -107 and pos.x <= -81 and pos.y >= 93 and pos.y <= 119 and pos.z >= 108 and pos.z <= 134 then
--		if pos.x > 122 and pos.x < 153 and pos.y > 22 and pos.y < 53 and pos.z > -16 and pos.z < 14 then	-- lvl 3
--		if pos.x > 165 and pos.x < 250 and pos.y > 19 and pos.y < 110 and pos.z > -16 and pos.z < 70 then	-- lvl 4
--		if pos.x > 263 and pos.x < 511 and pos.y > 20 and pos.y < 265 and pos.z > -17 and pos.z < 231 then	-- lvl 5
	
--			minetest.remove_node(pos)
			minetest.add_node(pos, {name="menger_sponge:light_1_3"})
		
--		end
		
	end,
})

--]]





