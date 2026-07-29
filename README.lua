local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

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
menu.Size = UDim2.new(0,190,0,240)
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
title.Text = "Banana Hub"
title.TextColor3 = yellow
title.TextSize = 18
title.Font = Enum.Font.SourceSansBold



-- LINE

local line = Instance.new("Frame")
line.Parent = menu
line.Size = UDim2.new(0,150,0,2)
line.Position = UDim2.new(0.5,-75,0,34)
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
		loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))()
	end,

	[2] = function()
		loadstring(game:HttpGet("LINK SCRIPT 2"))()
	end,

	[3] = function()
		loadstring(game:HttpGet("LINK SCRIPT 3"))()
	end,

	[4] = function()
		loadstring(game:HttpGet("LINK SCRIPT 4"))()
	end,

	[5] = function()
		loadstring(game:HttpGet("LINK SCRIPT 5"))()
	end

}
-- BUTTONS

for i = 1,5 do

	local id = i
	local running = false

	local btn = Instance.new("TextButton")
	btn.Parent = menu
	btn.Size = UDim2.new(0,160,0,28)
	btn.Position = UDim2.new(0.5,-80,0,45+(i-1)*34)

	btn.BackgroundColor3 = black
	btn.BorderSizePixel = 0
    btn.Text = ScriptNames[id]
	btn.TextColor3 = yellow
	btn.TextSize = 14
	btn.Font = Enum.Font.SourceSansBold
	btn.AutoButtonColor = false


	local corner = Instance.new("UICorner")
	corner.Parent = btn
	corner.CornerRadius = UDim.new(0,7)


	local stroke = Instance.new("UIStroke")
	stroke.Parent = btn
	stroke.Color = yellow
	stroke.Thickness = 2
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border


	btn.MouseButton1Click:Connect(function()

	    if running then return end
	    running = true

	    btn.BackgroundColor3 = yellow
	    btn.TextColor3 = black

	    for i = 1,3 do

		    btn.Text = "Đang chạy."
		    task.wait(0.4)

		    btn.Text = "Đang chạy.."
		    task.wait(0.4)

		    btn.Text = "Đang chạy..."
		    task.wait(0.4)

	    end

	    btn.Text = "Xong✔"
	    task.wait(0.5)

	    btn.BackgroundColor3 = black
	    btn.TextColor3 = yellow
	    btn.Text = ScriptNames[id]

	    running = false

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
