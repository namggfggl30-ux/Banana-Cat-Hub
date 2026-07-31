if not game:IsLoaded() then
	game.Loaded:Wait()
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
if not player then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	player = Players.LocalPlayer
end

local gui = Instance.new("ScreenGui")
gui.Name = "Banana Hub"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")


local yellow = Color3.fromRGB(255,221,0)
local black = Color3.fromRGB(0,0,0)


-- MENU

local menu = Instance.new("Frame")
menu.Parent = gui
menu.AnchorPoint = Vector2.new(0.5,0.5)
menu.Position = UDim2.new(0.5,0,0.5,0)
menu.Size = UDim2.new(0,190,0,260)
menu.BackgroundColor3 = black
menu.Visible = false


local mc = Instance.new("UICorner")
mc.Parent = menu
mc.CornerRadius = UDim.new(0,10)


local ms = Instance.new("UIStroke")
ms.Parent = menu
ms.Color = yellow
ms.Thickness = 2



-- TITLE

local title = Instance.new("TextLabel")
title.Parent = menu
title.Size = UDim2.new(1,0,0,30)
title.Position = UDim2.new(0,0,0,2)
title.BackgroundTransparency = 1
title.Text = "🍌 Banana Hub"
title.TextColor3 = yellow
title.TextSize = 18
title.Font = Enum.Font.GothamBold



-- LINE

local line = Instance.new("Frame")
line.Parent = menu
line.Size = UDim2.new(1,-16,0,2)
line.Position = UDim2.new(0,8,0,34)
line.BackgroundColor3 = yellow
line.BorderSizePixel = 0

local ScriptNames = {
	[1] = "Banana Cat Hub",
	[2] = "Banana Cat Kaitun Dungeon",
	[3] = "Banana Bounty Blox Fruit",
	[4] = "Banana Cat Kaitun BF",
	[5] = "Banana Cat Kaitun Levi"
}


local Scripts = {

	[1] = function()
		repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

		getgenv().Key = "90d02c384281ed5b2a39b480"

		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"
		))()
	end,


	[2] = function()
		repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

		getgenv().Key = "90d02c384281ed5b2a39b480"

		Config = {
			FarmRings = {""},
			WhitelistRings = {},
			WhitelistModifiers = {""},
			MinGradeToLock = 3,
			MainAccount = "",
			Alts = {},
			Difficulty = "Normal",
			AutoLoad = true,
			WebhookUrl = "",
			WebhookInterval = 300,
		}

		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/tmuseAI/bnnc/refs/heads/main/KaitunDungeon.lua"
		))()
	end,


	[3] = function()
		repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

		getgenv().Key = "90d02c384281ed5b2a39b480"

		getgenv().config = {
			team = "Pirates",
			hpTimeout = 15,
			targetTimeout = 20,
			lowHealth = 4000,
			safeHealth = 4500,
			blackScreen = false,
			useSkill = false,
			equipPaleScarf = false,
			webhookurl = "",
			webhookEnable = false,
			webhookSendMinutes = 5,
			attackSpeed = 0.001,
			mode = 1,
			sea = 3,
			region = "Singapore",
			trans = false,
			bltween = true,
			bpsit = true,
		}

		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/Bountynew.lua"
		))()
	end,


	[4] = function()
		repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

		getgenv().Key = "90d02c384281ed5b2a39b480"

		getgenv().SettingFarm = {
			["Hide UI"] = false,
			["White Screen"] = false,

			["Get Items"] = {
				["Saber"] = true,
				["Godhuman"] = true,
				["Skull Guitar"] = true,
				["Mirror Fractal"] = true,
				["Cursed Dual Katana"] = true,
				["Upgrade Race V2-V3"] = true,
				["Auto Pull Lever"] = true,
				["Shark Anchor"] = true,
			},

			["Auto Summon Rip Indra"] = true,
		}

		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaCat-kaitunBF.lua"
		))()
	end,


	[5] = function()
		repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

		getgenv().Key = "90d02c384281ed5b2a39b480"

		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunLevi.lua"
		))()
	end
	
}

-- BUTTONS

for i = 1,5 do

	local id = i
	local running = false

	local btn = Instance.new("TextButton")
	btn.Parent = menu
	btn.Size = UDim2.new(0,170,0,32)
	btn.Position = UDim2.new(0.5,-85,0,45+(i-1)*40)

	btn.BackgroundColor3 = Color3.fromRGB(15,15,15)
	btn.BorderSizePixel = 0
	btn.Text = ScriptNames[id]

-- TEXT FIX SHARP
    btn.TextColor3 = yellow
    btn.Font = Enum.Font.GothamSemibold
	btn.TextSize = 13
    btn.TextScaled = false
    btn.TextWrapped = false
	btn.ClipsDescendants = true

-- bỏ bóng chữ gây nhòe
btn.TextStrokeTransparency = 1

	btn.AutoButtonColor = false


	local corner = Instance.new("UICorner")
	corner.Parent = btn
	corner.CornerRadius = UDim.new(0,8)


	-- VIỀN VÀNG
	local stroke = Instance.new("UIStroke")
    stroke.Parent = btn
    stroke.Color = Color3.fromRGB(255,221,0)
    stroke.Thickness = 1
    stroke.Transparency = 0
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border


	btn.MouseEnter:Connect(function()
		stroke.Thickness = 3
	end)

	btn.MouseLeave:Connect(function()
		stroke.Thickness = 1.5
	end)


	btn.MouseButton1Click:Connect(function()

		if running then return end
		running = true

-- hiệu ứng click màu vàng tạm thời
btn.BackgroundColor3 = yellow
btn.TextColor3 = black

task.wait(0.5)

-- trở lại màu ban đầu
btn.BackgroundColor3 = Color3.fromRGB(15,15,15)
btn.TextColor3 = yellow

		task.spawn(function()

			if Scripts[id] then
				Scripts[id]()
			end

			btn.BackgroundColor3 = Color3.fromRGB(10,10,10)
			btn.TextColor3 = yellow
			btn.Text = ScriptNames[id]

			running = false

		end)

	end)

end



-- FOOTER

local footer = Instance.new("TextLabel")
footer.Parent = menu
footer.Size = UDim2.new(1,0,0,18)
footer.Position = UDim2.new(0,0,1,-20)
footer.BackgroundTransparency = 1
footer.Text = "★ Banana Hub - Enjoy! ★"
footer.TextColor3 = yellow
footer.TextSize = 10
footer.Font = Enum.Font.SourceSans



-- TOGGLE

local toggle = Instance.new("ImageButton")
toggle.Parent = gui
toggle.Size = UDim2.new(0,35,0,35)
toggle.Position = UDim2.new(0,30,0,75)
toggle.BackgroundColor3 = black
toggle.Image = "rbxassetid://108388084604425"
toggle.AutoButtonColor = false


local tc = Instance.new("UICorner")
tc.Parent = toggle


local ts = Instance.new("UIStroke")
ts.Parent = toggle
ts.Color = yellow
ts.Thickness = 2



-- OPEN CLOSE

local open = false
local busy = false

toggle.MouseButton1Click:Connect(function()

	if busy then return end
	busy = true

	local tween = TweenService:Create(
		toggle,
		TweenInfo.new(0.5),
		{
			Rotation = toggle.Rotation + 360
		}
	)

	tween:Play()
	tween.Completed:Wait()

	open = not open
	menu.Visible = open

	busy = false
end)
