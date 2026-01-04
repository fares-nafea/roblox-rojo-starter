-- Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- GUI
local gui = playerGui:WaitForChild("Progress Bar")
local main = gui:WaitForChild("Main")
local inset = main:WaitForChild("Inset")

-- Leaderstats
local leaderstats = player:WaitForChild("leaderstats")
local cashValue = leaderstats:WaitForChild("Cash")

-- Achievement target
local Achievement = 1000

-- Function
local function updateProgressBar(number)
	number = math.clamp(number, 0, 1)
	inset.Size = UDim2.fromScale(number, 1)
end

-- Initial update (مهم)
updateProgressBar(cashValue.Value / Achievement)

-- Listen for changes
cashValue:GetPropertyChangedSignal("Value"):Connect(function()
	updateProgressBar(cashValue.Value / Achievement)
end)
