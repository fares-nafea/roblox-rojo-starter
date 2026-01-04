local TextChatService = game:GetService("TextChatService")

game.ReplicatedStorage.Chat.OnClientEvent:Connect(function(part, message)
	TextChatService:DisplayBubble(part, message)
end)