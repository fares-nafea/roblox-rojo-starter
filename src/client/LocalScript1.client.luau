local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui"):WaitForChild("BuyButton")
local button = gui:WaitForChild("BuyButton")

button.MouseButton1Click:Connect(function()
    MarketplaceService:PromptProductPurchase(player, 3511119685)
end)
