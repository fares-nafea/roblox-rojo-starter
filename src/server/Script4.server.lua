local TweenService = game:GetService("TweenService")

local Tween = TweenService:Create(game.Workspace.SpawnLocation, TweenInfo.new(10, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
    CFrame = CFrame.new(0, 10, 0), 
    Color = Color3.fromRGB(255, 0, 0),
    Transparency = 0.5,
    Reflectance = 0.5,
})
Tween:Play()

Tween.Completed:Connect(function()
    print("Tween is done")
end)