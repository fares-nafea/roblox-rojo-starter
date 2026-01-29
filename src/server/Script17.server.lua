local HttpService = game:GetService("HttpService")

local url = "https://users.roproxy.com/v1/users/8481022369"

local success, response = pcall(function()
    return HttpService:GetAsync(url)
end)

if success then
    local decoded = HttpService:JSONDecode(response)

    local isBanned = decoded.isBanned
    local name = decoded.name

    print(decoded)
    print("Is " .. name .. " banned: " .. tostring(isBanned))
else
    warn("HTTP request failed")
end
