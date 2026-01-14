local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = player:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
local container = screenGui:WaitForChild("Frame"):WaitForChild("Frame")

for _, object in ipairs(container:GetChildren()) do
    if object:IsA("Frame") then
        object:Destroy()
    end
end
