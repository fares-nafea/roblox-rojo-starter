local player = game.Players.LocalPlayer
local screenGui = player:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
local button = screenGui:WaitForChild("OpenButton")
local frame = screenGui:WaitForChild("Frame") -- الأفضل تكون lowercase للمتغير

button.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
    button.Text = frame.Visible and "Close" or "Open"
end)
