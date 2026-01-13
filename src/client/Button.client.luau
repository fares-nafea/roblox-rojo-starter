local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui"):WaitForChild("On / Off Button")
local button = gui:WaitForChild("TextButton")

local lightPart = game.Workspace:WaitForChild("Light")

button:SetAttribute("Toggle", false)

local function updateUI(state)
	if state then
		button.Text = "On"
		button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
		button.TextColor3 = Color3.fromRGB(0, 0, 0)
		lightPart.BrickColor = BrickColor.new("White")
	else
		button.Text = "Off"
		button.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		button.TextColor3 = Color3.fromRGB(0, 0, 0)
		lightPart.BrickColor = BrickColor.new("Black")
	end
end

updateUI(false)

button.MouseButton1Click:Connect(function()
	local newState = not button:GetAttribute("Toggle")
	button:SetAttribute("Toggle", newState)
	updateUI(newState)
end)
