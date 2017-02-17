


--[[	--------------------------------------------------------------------

				Menger Magic Wand

	--------------------------------------------------------------------	--]]


magic_wand = {}

local pos_list0 = {
	{x=0, y=0, z=0},
	{x=1, y=0, z=0},
	{x=2, y=0, z=0},
	{x=2, y=0, z=1},
	{x=2, y=0, z=2},
	{x=1, y=0, z=2},
	{x=0, y=0, z=2},
	{x=0, y=0, z=1},
	
	{x=0, y=1, z=0},
	{x=2, y=1, z=0},
	{x=2, y=1, z=2},
	{x=0, y=1, z=2},
	
	{x=0, y=2, z=0},
	{x=1, y=2, z=0},
	{x=2, y=2, z=0},
	{x=2, y=2, z=1},
	{x=2, y=2, z=2},
	{x=1, y=2, z=2},
	{x=0, y=2, z=2},
	{x=0, y=2, z=1},
}




magic_wand.set_pos_list = function(user)

	local pos_list = {}	-- pos_list modifiée par le facedir

	
	local dir = {}
	local menger_dir = {x=0, y=0, z=0}
	
	dir = user:get_look_dir()
	
	if dir.x >= 0 then
		menger_dir.x = 1
	else
		menger_dir.x =-1
	end
	
	if dir.y <= 0 then
		menger_dir.y = 1
	else
		menger_dir.y =-1
	end
	
	if dir.z >= 0 then
		menger_dir.z = 1
	else
		menger_dir.z =-1
	end
	
	for i=1,20 do
		pos_list[i] = vector.multiply(pos_list0[i], menger_dir)
	end
	
	
	return pos_list

end


	-- message de fin de construction
magic_wand.message_end = function(user, lvl, dtimer, pos0, pos_list)

		local posf, posn
		local npow3 = 3^lvl
		
		-- récupération du vecteur unitaire x,y,z de création
		posn = vector.multiply(pos_list[17], 0.5)
		
		-- calcul de 3^n
--		for i=1,lvl do
--			npow3 = npow3 * 3
--		end
		
		-- calcul de la pos du bloc "diagonal" opposé au bloc de départ pos0
		posf = vector.multiply(posn, npow3)	-- calcul de la taille du cube : (vecteur unitaire) * 3^n
		posf = vector.subtract(posf, posn)	-- on retire 1 (car bloc d'origine != 0)
		posf = vector.add(pos0, posf)
		
		-- envoie du message de fin de construction au joueur créateur
		minetest.chat_send_player(user:get_player_name(), "Votre MegaMenger de level " ..lvl .." vient d'être créé"
											.. ", en " .. dtimer .. " secondes,"
											.. " entre  ( " .. pos0.x .. " , " .. pos0.y .. " , " .. pos0.z .. " )  et  ( " .. posf.x .. " , " .. posf.y .. " , " .. posf.z .. " )")
										--	.. " entre " .. minetest.pos_to_string(pos0) .. " et " .. minetest.pos_to_string(posf) )

end





magic_wand.build = function(itemstack, user, pointed_thing)

	if pointed_thing.type == "node" then	-- sinon bug sur pos
		
		local pos0 = pointed_thing.under
		
		local node = minetest.get_node(pos0)

		if node.name=="menger_sponge:stone" or node.name=="menger_sponge:lvl_1" or node.name=="menger_sponge:lvl_2" then

		-- choix de l'orientation du Menger en fonction de l'orientation du pointeur (vers l'avant-gauche et la l'avant-droite, et y inversée)

			local pos_list = magic_wand.set_pos_list(user)
			
			local dtimer = 0
		

		-- choix du level du menger en fonction du nombre de Baguette Menger en main
			
			local lvl = itemstack:get_count()	-- modifier le stack_max dans le register_craftitem
			
			if lvl == 1 then
				dtimer = magic_wand.build_lvl1(node, pos0, pos_list)
				
			elseif lvl ==2 then
				dtimer = magic_wand.build_lvl2(node, pos0, pos_list)
				
			elseif lvl ==3 then
				dtimer = magic_wand.build_lvl3(node, pos0, pos_list)
				
			elseif lvl ==4 then
				dtimer = magic_wand.build_lvl4(node, pos0, pos_list)
				
			elseif lvl ==5 then
				dtimer = magic_wand.build_lvl5(node, pos0, pos_list)
				
			elseif lvl ==6 then
				dtimer = magic_wand.build_lvl6(node, pos0, pos_list)
				
			else
				dtimer = magic_wand.build_lvlx(lvl, node, pos0, pos_list)
				
			end
			
		
		-- envoie d'un message à la fin de la construction
			
			minetest.after(dtimer, function()
				magic_wand.message_end(user, lvl, dtimer, pos0, pos_list)
			end)
			
		end
		
	end

end


magic_wand.build_lvl1 = function(node, pos0, pos_list)
	
	local dtimer = 0
	
	local pos
	
	for i=1,20 do
		
		minetest.after(dtimer, function()	-- envoie la fonction dans la queue avec un délai de dtimer secondes de retard de plus à chaque ittération
		
			pos = pos_list[i]
			pos = vector.add(pos0, pos)
		
			minetest.add_node(pos, node)
			
		end)
		dtimer = dtimer+1
		
	end
	
	return dtimer
	
end
	


magic_wand.build_lvl2 = function(node, pos0, pos_list)
	
	local dtimer = 0
	
	local pos, pos11
	
	for i=1,20 do
		
		for j=1,20 do
			
			minetest.after(dtimer, function()	-- envoie la fonction dans la queue avec un délai de dtimer secondes de retard de plus à chaque ittération
			
				pos1 = vector.multiply(pos_list[i], 3)
			
				pos = vector.add(pos_list[j], pos1)
				pos = vector.add(pos0, pos)
			
				minetest.add_node(pos, node)
				
			end)
			dtimer = dtimer+0.5
			
		end
		
	end
	
	return dtimer
	
end
	


magic_wand.build_lvl3 = function(node, pos0, pos_list)

	local dtimer = 0

	local pos, pos1, pos2
	
	for i=1,20 do
		
		for j=1,20 do
			
			minetest.after(dtimer, function()	-- envoie la fonction dans la queue avec un délai de dtimer secondes de retard de plus à chaque ittération
			
				for k=1,20 do
					
						pos2 = vector.multiply(pos_list[i], 9)
						pos1 = vector.multiply(pos_list[j], 3)
						
						pos1 = vector.add(pos2, pos1)
					
						pos = vector.add(pos_list[k], pos1)
						pos = vector.add(pos0, pos)
					
						minetest.add_node(pos, node)
				
				end
					
			end)
			dtimer = dtimer+1.5
			
		end
		
	end
	
	return dtimer
	
end
	


magic_wand.build_lvl4 = function(node, pos0, pos_list)

	local dtimer = 0

	local pos, pos1, pos2, pos3
	
	for i=1,20 do
		
		for j=1,20 do
			
			minetest.after(dtimer, function()	-- envoie la fonction dans la queue avec un délai de dtimer secondes de retard de plus à chaque ittération
				
				for k=1,20 do
					
					for l=1,20 do
					
						pos3 = vector.multiply(pos_list[i], 27)
						pos2 = vector.multiply(pos_list[j], 9)
						pos1 = vector.multiply(pos_list[k], 3)
						
						pos2 = vector.add(pos3, pos2)
						pos1 = vector.add(pos2, pos1)
					
						pos = vector.add(pos_list[l], pos1)
						pos = vector.add(pos0, pos)
					
						minetest.add_node(pos, node)
					
					end
				
				end
						
			end)
			dtimer = dtimer+2
			
		end
		
	end
	
	return dtimer
	
end
	


magic_wand.build_lvl5 = function(node, pos0, pos_list)

	local dtimer = 0

	local pos, pos1, pos2, pos3, pos4
	
	for i=1,20 do
		
		for j=1,20 do
			
			minetest.after(dtimer, function()	-- envoie la fonction dans la queue avec un délai de dtimer secondes de retard de plus à chaque ittération
				
				for k=1,20 do
					
					for l=1,20 do
						
						for m=1,20 do
					
							pos4 = vector.multiply(pos_list[i], 81)
							pos3 = vector.multiply(pos_list[j], 27)
							pos2 = vector.multiply(pos_list[k], 9)
							pos1 = vector.multiply(pos_list[l], 3)
							
							pos3 = vector.add(pos4, pos3)
							pos2 = vector.add(pos3, pos2)
							pos1 = vector.add(pos2, pos1)
						
							pos = vector.add(pos_list[m], pos1)
							pos = vector.add(pos0, pos)
						
							minetest.add_node(pos, node)
							
						end
					
					end
				
				end
				
			end)
			dtimer = dtimer+2.5
			
		end
		
	end
	
	return dtimer
	
end
	


magic_wand.build_lvl6 = function(node, pos0, pos_list)

	local dtimer = 0

	local pos, pos1, pos2, pos3, pos4, pos5
	
	for i=1,20 do
		
		for j=1,20 do
			
			minetest.after(dtimer, function()	-- envoie la fonction dans la queue avec un délai de dtimer secondes de retard de plus à chaque ittération
				
				for k=1,20 do
					
					for l=1,20 do
						
						for m=1,20 do
							
							for n=1,20 do
					
								pos5 = vector.multiply(pos_list[i], 243)
								pos4 = vector.multiply(pos_list[j], 81)
								pos3 = vector.multiply(pos_list[k], 27)
								pos2 = vector.multiply(pos_list[l], 9)
								pos1 = vector.multiply(pos_list[m], 3)
								
								pos4 = vector.add(pos5, pos4)
								pos3 = vector.add(pos4, pos3)
								pos2 = vector.add(pos3, pos2)
								pos1 = vector.add(pos2, pos1)
							
								pos = vector.add(pos_list[n], pos1)
								pos = vector.add(pos0, pos)
							
								minetest.add_node(pos, node)
								
							end
							
						end
					
					end
				
				end
				
			end)
			dtimer = dtimer+3
			
		end
		
	end
	
	return dtimer
	
end



magic_wand.get_pow_of_lvlx = function(lvl)

	local pow3 = {}
	local pow20 = {}
	
		-- calcul des 3^x et 20^x ; x=[0;lvl-1]
	for i=1,lvl do
		
		pow3[i] = 3^(i-1)
		pow20[i] = 20^(i-1)
		
	end
	
	
	return pow3, pow20

end


magic_wand.get_posx = function(n, lvl, pow3, pow20, pos0, pos_list)

--	local strdbg = "n=" .. n

	local pos = {x=0,y=0,z=0}
	
	local posx = {}
	local idx
	
	for i=lvl,1,-1 do	--de lvl à 1 (pas de -1)
		
		idx = math.floor( (n-1)/pow20[i] ) +1	--récupération du level du bloc "poupée russe" en cours
		
		posx[i] = vector.multiply(pos_list[idx],pow3[i])
		
--		strdbg = strdbg .. " i=" .. i .. " idx=" .. idx .. " posx[i]=" .. minetest.pos_to_string(posx[i])
		
		n = ( (n-1) % pow20[i] ) +1
		
--		strdgb = strdbg .. " n=" .. n
	
	end
	
	for i=1,lvl do
		
		pos = vector.add(posx[i],pos)
		
	end
	
	pos = vector.add(pos0,pos)
	
	
--	minetest.chat_send_all(strdbg .. "\n  ;   " .. minetest.pos_to_string(pos))
	
	return pos

end


magic_wand.build_lvlx = function(lvl, node, pos0, pos_list)

	local dtimer = 0
	local dtimer_dt = 0.1
	
	local pow3, pow20 = magic_wand.get_pow_of_lvlx(lvl)
	
	local pos
	
	local nBlocks = 20^lvl
	
	for i=1,nBlocks do
		
		minetest.after(dtimer, function()
		
			pos = magic_wand.get_posx(i, lvl, pow3, pow20, pos0, pos_list)
--			minetest.chat_send_all("  ;;  " .. minetest.pos_to_string(pos))
		
			minetest.add_node(pos, node)
--			minetest.chat_send_all("  ;;; " .. minetest.pos_to_string(pos))
			
		end)
		
		dtimer = dtimer + dtimer_dt
		
	end
	
--[[
		-- création beaucoup plus rapide, mais déstructuré (queue minetest saturée sans doute)
	local nBlocks_2 = 20^(lvl-2)
	
	for i=1,400 do
		
		minetest.after(dtimer, function()
	
			for j=1,nBlocks_2 do
			
				pos = magic_wand.get_posx((i*j), lvl, pow3, pow20, pos0, pos_list)
--				minetest.chat_send_all("  ;;  " .. minetest.pos_to_string(pos))
			
				minetest.add_node(pos, node)
--				minetest.chat_send_all("  ;;; " .. minetest.pos_to_string(pos))
			
			end
			
		end)
		
		dtimer = dtimer + dtimer_dt
		
	end
--]]


	return dtimer

end




magic_wand.info_box = function(itemstack, user, pointed_thing)

	local size = "size[12,9]"
	
	local img_build_up = "image[7.6,0.2;5,2.7;InfoBox_Menger-lvl1_from-top.png]"
	local img_build_down = "image[7.6,3.3;5,2.7;InfoBox_Menger-lvl2_from-bot.png]"
	local img_menger_view = "image[7.6,6.4;5,2.7;InfoBox_Menger-Sculpture.png]"
	
	local general_text = 	[[
						Le MegaMenger se construit
						en fonction de l'orientation de votre pointeur
						par rapport au MengerBloc visé : 
						 - vers l'avant-gauche,
						 - vers l'avant-droite,
						 - vers le haut si vous le regardez d'en haut
						   (ou vers le bas si vous le regardez d'en bas) 
						
						   
						Le niveau du MegaMenger est déterminé par
						le nombre de Baguettes Menger dans votre main :
						 - lvl 1 => 20 blocks dans un cube de coté 3
						 - lvl 2 => 400 blocks dans un cube de coté 9
						 - lvl 3 => 8.000 blocks dans un cube de coté 27
						 ...
						 - lvl n => 20^n blocks dans un cube de coté 3^n
						 
						 
						/!\\   "Tous" les blocks étants dessinés,     /!\\ 
						/!\\   les lvl élevés peuvent freezer le jeu   /!\\
					]]
				
	local general = "label[0,0;" .. general_text .. "]"
				
	local Button_Exit = "button_exit[2,8.4;2,1;close;Close]"
				
	local formspec = size .. img_build_up .. img_build_down .. img_menger_view .. general .. Button_Exit
	

	minetest.show_formspec(user:get_player_name(), "menger_sponge:magic_wand_infos", formspec)
	
end



minetest.register_craftitem("menger_sponge:magic_wand", {
	description = "Menger Magic Wand (right-click -> build a Mega Menger ; left-click -> get some information about the spells)",
	
	inventory_image = "menger_sponge_magic_wand.png",
	
	stack_max = 99,
	
	
	on_use = function(itemstack, user, pointed_thing)
		magic_wand.info_box(itemstack, user, pointed_thing)
	end,
	
	on_place = function(itemstack, user, pointed_thing)
		magic_wand.build(itemstack, user, pointed_thing)
	end,

})



-- pour le crafter :

minetest.register_craft({
	output = "menger_sponge:magic_wand",
	recipe = {
		{"group:menger_sponge"},
		{   "default:stick"   },
		{   "default:stick"   },
	}
})


-- pour le faire cuire :

minetest.register_craft({
	type = "fuel",
	recipe = "menger_sponge:magic_wand",
	burntime = 69,
})


































