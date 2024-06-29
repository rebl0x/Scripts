--[[
Enjoy celery api :)

Credits:

_t38, Programming
ihave, Databasing and partial rewrite
woody, original execution and injection

]]

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundTransparency =0
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.326067209, 0, 0.0139968898, 0)
Frame.Size = UDim2.new(0, 450, 0, 58)

UICorner.Parent = Frame

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0293040294, 0, 0.0599999987, 0)
ImageLabel.Size = UDim2.new(0, 57, 0, 53)
ImageLabel.Image = "http://www.roblox.com/asset/?id=18265998315"

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.258638161, 0, 0.301379293, 0)
TextLabel.Size = UDim2.new(0, 278, 0, 23)
TextLabel.Text = "Celery api injected."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000


local function CDFB_fake_script() 
	local script = Instance.new('LocalScript', Frame)

	local function fe()
		for i = 1, 0, -0.02 do
			wait(0.02)
			script.Parent.Parent.Frame.Transparency = i
			script.Parent.ImageLabel.ImageTransparency = i
			script.Parent.ImageLabel.BackgroundTransparency = i
			script.Parent.TextLabel.TextTransparency = i
		end
		script.Parent.Parent.Frame.Transparency = 0
		script.Parent.ImageLabel.ImageTransparency = 0
		script.Parent.ImageLabel.BackgroundTransparency = 0
		script.Parent.TextLabel.TextTransparency = 0
	end
	local function fa()
		for i = 0, 1, 0.02 do
			wait(0.02)
			script.Parent.Parent.Frame.Transparency = i
			script.Parent.ImageLabel.ImageTransparency = i
			script.Parent.ImageLabel.BackgroundTransparency = i
			script.Parent.TextLabel.TextTransparency = i
		end
		script.Parent.Parent.Frame.Transparency = 1
		script.Parent.ImageLabel.ImageTransparency = 1
		script.Parent.ImageLabel.BackgroundTransparency = 1
		script.Parent.TextLabel.TextTransparency = 1
	end
	fe()
	wait(1)
	fa()
	ScreenGui:Destroy()
end
coroutine.wrap(CDFB_fake_script)()
