BuyItem = game.ReplicatedStorage:GetChildren("BuyItem")

local itemCost = 500

game.ReplicatedStorage.BuyItem.OnServerEvent:Connect(function(player)
    if player.leaderstats.Cash.Value >= itemCost then
        print("Giving the Item to"..player.Name.."!")
    end
end)