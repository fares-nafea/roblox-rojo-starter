local MarketplaceService = game:GetService("MarketplaceService")

script.Parent.MouseButton1Click:Connect(function()
MarketplaceService:PromptProductPurchase(game.players.LocalPlayer, 3511119685)
end)