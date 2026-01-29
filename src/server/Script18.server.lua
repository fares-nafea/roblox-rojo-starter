local MarketplaceService = game:GetService("MarketplaceService")

game.Players.PlayerAdded:Connect(function(player)
    local playerOwnsVIP = MarketplaceService:UserOwnsGamePassAsync(player.UserId, 1690879373)

    if playerOwnsVIP then
        print(player.Name .. " owns VIP")
    end

    player.CharacterAdded:Connect(function(cher)
        if playerOwnsVIP then
            cher.Humanoid.WalkSpeed = 100
        end
    end)
end)
