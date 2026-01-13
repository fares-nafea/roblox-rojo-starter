local MarketplaceService = game:GetService("MarketplaceService")
local TouchInputService = game:GetService("TouchInputService")

local Products = {}

Products[3511119685] = function(player)
    if player then
        if player.Character then
            player.Character.Humanoid.WalkSpeed = 50

            task.delay(20, function()
                player.Character.Humanoid.WalkSpeed = 16
            end)
        end
        
        return true
    else
        return false
    end
end

MarketplaceService.ProcessReceipt = function(receiptInfo)
	-- userId
	-- developer product Id
	print(receiptInfo)

	local playerId = receiptInfo.PlayerId
	local productId = receiptInfo.ProductId

	local Player = game.Players:GetPlayerByUserId(playerId)

	if Products[productId] then
        local result = Products[productId](Player)

        if result then
            return Enum.ProductPurchaseDecision.PurchaseGranted
        else
            return Enum.ProductPurchaseDecision.NotProcessedYet
        end
    end
end
