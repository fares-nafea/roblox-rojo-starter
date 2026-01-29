local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)

    if input.KeyCode == Enum.KeyCode.B then
        print("User has pressed B!")
    end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        print("User has clicked!")
    end
    if input.UserInputType == Enum.UserInputType.Touch then
        print("User has touched!")
    end
end)