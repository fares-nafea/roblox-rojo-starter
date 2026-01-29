game.Players.PlayerAdded:Connect(function(pl)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = pl
	
	local Cash = Instance.new("IntValue")
	Cash.Name = "Cash"
	Cash.Value = 500
	Cash.Parent = leaderstats
end)