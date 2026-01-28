local MarketplaceService = game:GetService("MarketplaceService")

local Products = {}

Products[3511119685] = function(player)
	if not player then return false end

	local leaderstats = player:FindFirstChild("leaderstats")
	if not leaderstats then return false end

	local cash = leaderstats:FindFirstChild("Cash")
	if not cash then return false end

	cash.Value += 100
	return true
end

MarketplaceService.ProcessReceipt = function(receiptInfo)
	local player = game.Players:GetPlayerByUserId(receiptInfo.PlayerId)
	local productId = receiptInfo.ProductId

	if Products[productId] then
		local success = Products[productId](player)

		if success then
			return Enum.ProductPurchaseDecision.PurchaseGranted
		else
			return Enum.ProductPurchaseDecision.NotProcessedYet
		end
	end
end
