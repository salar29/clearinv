function Clear(args)
	if string.lower(args.text) == "/clear" then
		if table.count(args.player:GetInventory()) == 0 then
			Chat:Send(args.player, "You aren't carrying any weapons", Color.Red)
		else
			args.player:ClearInventory()
			Chat:Send(args.player, "Your inventory has been cleared", Color.Lime)
		end
		return false
	end
end

Events:Subscribe("PlayerChat", Clear)