function OnPlayerChat(args)
	local inventory = args.player:GetInventory()
		if args.text == "/clear" then
			if table.count(inventory) == 0 then
				Chat:Send(args.player, "You aren't carrying any weapons", Color.Red)
			else
				args.player:ClearInventory()
				Chat:Send(args.player, "Your inventory has been cleared", Color.Lime)
			end	
		end
end

Events:Subscribe("PlayerChat", OnPlayerChat)
