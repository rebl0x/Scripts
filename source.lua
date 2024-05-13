local function rayf()
	--[[

Rayfield Interface Suite
by Sirius

shlex | Designing + Programming
iRay  | Programming

]]


	print("Celery port")
	local Release = "Beta 8"
	local NotificationDuration = 6.5
	local RayfieldFolder = "Rayfield"
	local ConfigurationFolder = RayfieldFolder.."/Configurations"
	local ConfigurationExtension = ".rfld"



	local RayfieldLibrary = {
		Flags = {},
		Theme = {
			Default = {
				TextFont = "Default", -- Default will use the various font faces used across Rayfield
				TextColor = Color3.fromRGB(240, 240, 240),

				Background = Color3.fromRGB(25, 25, 25),
				Topbar = Color3.fromRGB(34, 34, 34),
				Shadow = Color3.fromRGB(20, 20, 20),

				NotificationBackground = Color3.fromRGB(20, 20, 20),
				NotificationActionsBackground = Color3.fromRGB(230, 230, 230),

				TabBackground = Color3.fromRGB(80, 80, 80),
				TabStroke = Color3.fromRGB(85, 85, 85),
				TabBackgroundSelected = Color3.fromRGB(210, 210, 210),
				TabTextColor = Color3.fromRGB(240, 240, 240),
				SelectedTabTextColor = Color3.fromRGB(50, 50, 50),

				ElementBackground = Color3.fromRGB(35, 35, 35),
				ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
				SecondaryElementBackground = Color3.fromRGB(25, 25, 25), -- For labels and paragraphs
				ElementStroke = Color3.fromRGB(50, 50, 50),
				SecondaryElementStroke = Color3.fromRGB(40, 40, 40), -- For labels and paragraphs

				SliderBackground = Color3.fromRGB(43, 105, 159),
				SliderProgress = Color3.fromRGB(43, 105, 159),
				SliderStroke = Color3.fromRGB(48, 119, 177),

				ToggleBackground = Color3.fromRGB(30, 30, 30),
				ToggleEnabled = Color3.fromRGB(0, 146, 214),
				ToggleDisabled = Color3.fromRGB(100, 100, 100),
				ToggleEnabledStroke = Color3.fromRGB(0, 170, 255),
				ToggleDisabledStroke = Color3.fromRGB(125, 125, 125),
				ToggleEnabledOuterStroke = Color3.fromRGB(100, 100, 100),
				ToggleDisabledOuterStroke = Color3.fromRGB(65, 65, 65),

				InputBackground = Color3.fromRGB(30, 30, 30),
				InputStroke = Color3.fromRGB(65, 65, 65),
				PlaceholderColor = Color3.fromRGB(178, 178, 178)
			},
			Light = {
				TextFont = "Gotham", -- Default will use the various font faces used across Rayfield
				TextColor = Color3.fromRGB(50, 50, 50), -- i need to make all text 240, 240, 240 and base gray on transparency not color to do this

				Background = Color3.fromRGB(255, 255, 255),
				Topbar = Color3.fromRGB(217, 217, 217),
				Shadow = Color3.fromRGB(223, 223, 223),

				NotificationBackground = Color3.fromRGB(20, 20, 20),
				NotificationActionsBackground = Color3.fromRGB(230, 230, 230),

				TabBackground = Color3.fromRGB(220, 220, 220),
				TabStroke = Color3.fromRGB(112, 112, 112),
				TabBackgroundSelected = Color3.fromRGB(0, 142, 208),
				TabTextColor = Color3.fromRGB(240, 240, 240),
				SelectedTabTextColor = Color3.fromRGB(50, 50, 50),

				ElementBackground = Color3.fromRGB(198, 198, 198),
				ElementBackgroundHover = Color3.fromRGB(230, 230, 230),
				SecondaryElementBackground = Color3.fromRGB(136, 136, 136), -- For labels and paragraphs
				ElementStroke = Color3.fromRGB(180, 199, 97),
				SecondaryElementStroke = Color3.fromRGB(40, 40, 40), -- For labels and paragraphs

				SliderBackground = Color3.fromRGB(31, 159, 71),
				SliderProgress = Color3.fromRGB(31, 159, 71),
				SliderStroke = Color3.fromRGB(42, 216, 94),

				ToggleBackground = Color3.fromRGB(170, 203, 60),
				ToggleEnabled = Color3.fromRGB(32, 214, 29),
				ToggleDisabled = Color3.fromRGB(100, 22, 23),
				ToggleEnabledStroke = Color3.fromRGB(17, 255, 0),
				ToggleDisabledStroke = Color3.fromRGB(65, 8, 8),
				ToggleEnabledOuterStroke = Color3.fromRGB(0, 170, 0),
				ToggleDisabledOuterStroke = Color3.fromRGB(170, 0, 0),

				InputBackground = Color3.fromRGB(31, 159, 71),
				InputStroke = Color3.fromRGB(19, 65, 31),
				PlaceholderColor = Color3.fromRGB(178, 178, 178)
			}
		}
	}



	-- Services

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local HttpService = game:GetService("HttpService")
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	local CoreGui = game:GetService("CoreGui")

	-- Interface Management
	local Rayfield = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Shadow = Instance.new("Frame")
	local Image = Instance.new("ImageLabel")
	local Topbar = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local CornerRepair = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Hide = Instance.new("ImageButton")
	local Divider = Instance.new("Frame")
	local ChangeSize = Instance.new("ImageButton")
	local Theme = Instance.new("ImageButton")
	local Elements = Instance.new("Frame")
	local Template = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local SectionTitle = Instance.new("Frame")
	local Title_2 = Instance.new("TextLabel")
	local Button = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Title_3 = Instance.new("TextLabel")
	local ElementIndicator = Instance.new("TextLabel")
	local Interact = Instance.new("TextButton")
	local Toggle = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local Title_4 = Instance.new("TextLabel")
	local Interact_2 = Instance.new("TextButton")
	local Switch = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local Shadow_2 = Instance.new("ImageLabel")
	local UICorner_6 = Instance.new("UICorner")
	local Indicator = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local SectionSpacing = Instance.new("Frame")
	local Slider = Instance.new("Frame")
	local UICorner_8 = Instance.new("UICorner")
	local Title_5 = Instance.new("TextLabel")
	local Main_2 = Instance.new("Frame")
	local UICorner_9 = Instance.new("UICorner")
	local Progress = Instance.new("Frame")
	local UICorner_10 = Instance.new("UICorner")
	local Information = Instance.new("TextLabel")
	local Shadow_3 = Instance.new("ImageLabel")
	local UICorner_11 = Instance.new("UICorner")
	local Interact_3 = Instance.new("TextButton")
	local Input = Instance.new("Frame")
	local UICorner_12 = Instance.new("UICorner")
	local Title_6 = Instance.new("TextLabel")
	local InputFrame = Instance.new("Frame")
	local InputBox = Instance.new("TextBox")
	local UICorner_13 = Instance.new("UICorner")
	local Keybind = Instance.new("Frame")
	local UICorner_14 = Instance.new("UICorner")
	local Title_7 = Instance.new("TextLabel")
	local KeybindFrame = Instance.new("Frame")
	local KeybindBox = Instance.new("TextBox")
	local UICorner_15 = Instance.new("UICorner")
	local Dropdown = Instance.new("Frame")
	local UICorner_16 = Instance.new("UICorner")
	local Title_8 = Instance.new("TextLabel")
	local List = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Placeholder = Instance.new("Frame")
	local Template_2 = Instance.new("Frame")
	local UICorner_17 = Instance.new("UICorner")
	local Title_9 = Instance.new("TextLabel")
	local Interact_4 = Instance.new("TextButton")
	local Selected = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local Toggle_2 = Instance.new("ImageButton")
	local Interact_5 = Instance.new("TextButton")
	local Label = Instance.new("Frame")
	local UICorner_18 = Instance.new("UICorner")
	local Title_10 = Instance.new("TextLabel")
	local Paragraph = Instance.new("Frame")
	local UICorner_19 = Instance.new("UICorner")
	local Title_11 = Instance.new("TextLabel")
	local Content = Instance.new("TextLabel")
	local Color = Instance.new("Frame")
	local UICorner_20 = Instance.new("UICorner")
	local Title_12 = Instance.new("TextLabel")
	local Interact_6 = Instance.new("TextButton")
	local Main_3 = Instance.new("Frame")
	local Placeholder_2 = Instance.new("Frame")
	local ColorPicker = Instance.new("Frame")
	local UICorner_21 = Instance.new("UICorner")
	local Interact_7 = Instance.new("TextButton")
	local CPBackground = Instance.new("Frame")
	local MainCP = Instance.new("ImageButton")
	local UICorner_22 = Instance.new("UICorner")
	local MainPoint = Instance.new("ImageButton")
	local UICorner_23 = Instance.new("UICorner")
	local Display = Instance.new("Frame")
	local UICorner_24 = Instance.new("UICorner")
	local Frame = Instance.new("Frame")
	local UICorner_25 = Instance.new("UICorner")
	local HexInput = Instance.new("Frame")
	local UICorner_26 = Instance.new("UICorner")
	local InputBox_2 = Instance.new("TextBox")
	local ColorSlider = Instance.new("ImageButton")
	local UIGradient = Instance.new("UIGradient")
	local SliderPoint = Instance.new("ImageButton")
	local TintAdder = Instance.new("TextLabel")
	local UICorner_27 = Instance.new("UICorner")
	local UICorner_28 = Instance.new("UICorner")
	local Title_13 = Instance.new("TextLabel")
	local RGB = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local GInput = Instance.new("Frame")
	local UICorner_29 = Instance.new("UICorner")
	local InputBox_3 = Instance.new("TextBox")
	local RInput = Instance.new("Frame")
	local UICorner_30 = Instance.new("UICorner")
	local InputBox_4 = Instance.new("TextBox")
	local BInput = Instance.new("Frame")
	local UICorner_31 = Instance.new("UICorner")
	local InputBox_5 = Instance.new("TextBox")
	local UIPageLayout = Instance.new("UIPageLayout")
	local LoadingFrame = Instance.new("Frame")
	local Title_14 = Instance.new("TextLabel")
	local Subtitle = Instance.new("TextLabel")
	local Version = Instance.new("TextLabel")
	local TabList = Instance.new("ScrollingFrame")
	local Template_3 = Instance.new("Frame")
	local UICorner_32 = Instance.new("UICorner")
	local Title_15 = Instance.new("TextLabel")
	local Interact_8 = Instance.new("TextButton")
	local Image_2 = Instance.new("ImageLabel")
	local Shadow_4 = Instance.new("ImageLabel")
	local UICorner_33 = Instance.new("UICorner")
	local Placeholder_3 = Instance.new("Frame")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local Preview = Instance.new("Frame")
	local UICorner_34 = Instance.new("UICorner")
	local Shadow_5 = Instance.new("Frame")
	local Image_3 = Instance.new("ImageLabel")
	local Description = Instance.new("TextLabel")
	local Title_16 = Instance.new("TextLabel")
	local State = Instance.new("TextLabel")
	local PreviewImage = Instance.new("ImageLabel")
	local RecommendSettings = Instance.new("Frame")
	local Shadow_6 = Instance.new("Frame")
	local Image_4 = Instance.new("ImageLabel")
	local UICorner_35 = Instance.new("UICorner")
	local Title_17 = Instance.new("TextLabel")
	local Description_2 = Instance.new("TextLabel")
	local Load = Instance.new("TextButton")
	local UICorner_36 = Instance.new("UICorner")
	local Shadow_7 = Instance.new("ImageLabel")
	local UICorner_37 = Instance.new("UICorner")
	local Icon = Instance.new("ImageLabel")
	local Close = Instance.new("ImageButton")
	local Notifications = Instance.new("Frame")
	local UIListLayout_5 = Instance.new("UIListLayout")
	local Template_4 = Instance.new("Frame")
	local UICorner_38 = Instance.new("UICorner")
	local Title_18 = Instance.new("TextLabel")
	local Description_3 = Instance.new("TextLabel")
	local Icon_2 = Instance.new("ImageButton")
	local BlurModule = Instance.new("Frame")
	local Actions = Instance.new("ScrollingFrame")
	local Template_5 = Instance.new("TextButton")
	local UICorner_39 = Instance.new("UICorner")
	local UIListLayout_6 = Instance.new("UIListLayout")
	local Notice = Instance.new("Frame")
	local UICorner_40 = Instance.new("UICorner")
	local Title_19 = Instance.new("TextLabel")
	local List_2 = Instance.new("Frame")
	local _2 = Instance.new("Frame")
	local Title_20 = Instance.new("TextLabel")
	local Content_2 = Instance.new("TextLabel")
	local UIListLayout_7 = Instance.new("UIListLayout")
	local _1 = Instance.new("Frame")
	local Title_21 = Instance.new("TextLabel")
	local Content_3 = Instance.new("TextLabel")
	local _3 = Instance.new("Frame")
	local Title_22 = Instance.new("TextLabel")
	local Content_4 = Instance.new("TextLabel")
	local Interact_9 = Instance.new("TextButton")
	local UICorner_41 = Instance.new("UICorner")

	--Properties:

	Rayfield.Name = "Rayfield"
	Rayfield.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Rayfield.DisplayOrder = 100
	Rayfield.ResetOnSpawn = false

	Main.Name = "Main"
	Main.Parent = Rayfield
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 500, 0, 475)

	UICorner.CornerRadius = UDim.new(0, 9)
	UICorner.Parent = Main

	Shadow.Name = "Shadow"
	Shadow.Parent = Main
	Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow.BackgroundTransparency = 1.000
	Shadow.BorderSizePixel = 0
	Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow.Size = UDim2.new(1, 35, 1, 35)
	Shadow.ZIndex = 0

	Image.Name = "Image"
	Image.Parent = Shadow
	Image.AnchorPoint = Vector2.new(0.5, 0.5)
	Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image.BackgroundTransparency = 1.000
	Image.BorderSizePixel = 0
	Image.Position = UDim2.new(0.507476628, 0, 0.509803951, 0)
	Image.Size = UDim2.new(1.60000002, 0, 1.29999995, 0)
	Image.ZIndex = 0
	Image.Image = "rbxassetid://5587865193"
	Image.ImageColor3 = Color3.fromRGB(20, 20, 20)
	Image.ImageTransparency = 0.400

	Topbar.Name = "Topbar"
	Topbar.Parent = Main
	Topbar.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	Topbar.BorderSizePixel = 0
	Topbar.Size = UDim2.new(0, 500, 0, 45)
	Topbar.ZIndex = 5

	UICorner_2.CornerRadius = UDim.new(0, 9)
	UICorner_2.Parent = Topbar

	CornerRepair.Name = "CornerRepair"
	CornerRepair.Parent = Topbar
	CornerRepair.AnchorPoint = Vector2.new(0.5, 0.5)
	CornerRepair.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	CornerRepair.BorderSizePixel = 0
	CornerRepair.Position = UDim2.new(0.5, 0, 0.838888884, 0)
	CornerRepair.Size = UDim2.new(1, 0, 0.322222233, 0)
	CornerRepair.ZIndex = 4

	Title.Name = "Title"
	Title.Parent = Topbar
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.373843759, 0, 0.5, 0)
	Title.Size = UDim2.new(0, 338, 0, 16)
	Title.ZIndex = 5
	Title.Font = Enum.Font.GothamMedium
	Title.Text = "Rayfield Interface Suite"
	Title.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Hide.Name = "Hide"
	Hide.Parent = Topbar
	Hide.AnchorPoint = Vector2.new(0.5, 0.5)
	Hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hide.BackgroundTransparency = 1.000
	Hide.BorderSizePixel = 0
	Hide.Position = UDim2.new(0.949999988, 0, 0.5, 0)
	Hide.Size = UDim2.new(0, 24, 0, 24)
	Hide.ZIndex = 5
	Hide.Image = "http://www.roblox.com/asset/?id=10137832201"
	Hide.ImageColor3 = Color3.fromRGB(240, 240, 240)
	Hide.ImageTransparency = 0.800
	Hide.ScaleType = Enum.ScaleType.Fit

	Divider.Name = "Divider"
	Divider.Parent = Topbar
	Divider.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	Divider.BorderSizePixel = 0
	Divider.Position = UDim2.new(0, 0, 1, 0)
	Divider.Size = UDim2.new(1, 0, 0, 1)

	ChangeSize.Name = "ChangeSize"
	ChangeSize.Parent = Topbar
	ChangeSize.AnchorPoint = Vector2.new(0.5, 0.5)
	ChangeSize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChangeSize.BackgroundTransparency = 1.000
	ChangeSize.BorderSizePixel = 0
	ChangeSize.Position = UDim2.new(0.889999986, 0, 0.5, 0)
	ChangeSize.Size = UDim2.new(0, 24, 0, 24)
	ChangeSize.ZIndex = 5
	ChangeSize.Image = "rbxassetid://10137941941"
	ChangeSize.ImageColor3 = Color3.fromRGB(240, 240, 240)
	ChangeSize.ImageTransparency = 0.800
	ChangeSize.ScaleType = Enum.ScaleType.Fit

	Theme.Name = "Theme"
	Theme.Parent = Topbar
	Theme.AnchorPoint = Vector2.new(0.5, 0.5)
	Theme.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Theme.BackgroundTransparency = 1.000
	Theme.BorderSizePixel = 0
	Theme.Position = UDim2.new(0.829999983, 0, 0.5, 0)
	Theme.Size = UDim2.new(0, 24, 0, 24)
	Theme.Visible = false
	Theme.ZIndex = 5
	Theme.Image = "rbxassetid://3926307971"
	Theme.ImageColor3 = Color3.fromRGB(240, 240, 240)
	Theme.ImageRectOffset = Vector2.new(804, 4)
	Theme.ImageRectSize = Vector2.new(36, 36)
	Theme.ImageTransparency = 0.800
	Theme.ScaleType = Enum.ScaleType.Fit

	Elements.Name = "Elements"
	Elements.Parent = Main
	Elements.AnchorPoint = Vector2.new(0.5, 0.5)
	Elements.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Elements.BackgroundTransparency = 1.000
	Elements.BorderSizePixel = 0
	Elements.ClipsDescendants = true
	Elements.Position = UDim2.new(0.5, 0, 0.601052701, 0)
	Elements.Size = UDim2.new(0, 475, 0, 366)

	Template.Name = "Template"
	Template.Parent = Elements
	Template.Active = true
	Template.AnchorPoint = Vector2.new(0.5, 0.5)
	Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Template.BackgroundTransparency = 1.000
	Template.BorderSizePixel = 0
	Template.Position = UDim2.new(0.5, 0, 0.5, 0)
	Template.Size = UDim2.new(1, 0, 1, 0)
	Template.CanvasSize = UDim2.new(0, 0, 0, 0)
	Template.ScrollBarThickness = 0

	UIListLayout.Parent = Template
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)

	SectionTitle.Name = "SectionTitle"
	SectionTitle.Parent = Template
	SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SectionTitle.BackgroundTransparency = 1.000
	SectionTitle.BorderSizePixel = 0
	SectionTitle.Size = UDim2.new(1, 0, 0, 15)

	Title_2.Name = "Title"
	Title_2.Parent = SectionTitle
	Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.BackgroundTransparency = 1.000
	Title_2.BorderSizePixel = 0
	Title_2.Position = UDim2.new(0.0109999999, 0, 0.100000001, 0)
	Title_2.Size = UDim2.new(0.874736845, 0, 0, 13)
	Title_2.Font = Enum.Font.GothamMedium
	Title_2.Text = "Aimbot"
	Title_2.TextColor3 = Color3.fromRGB(175, 175, 175)
	Title_2.TextScaled = true
	Title_2.TextSize = 14.000
	Title_2.TextWrapped = true
	Title_2.TextXAlignment = Enum.TextXAlignment.Left

	Button.Name = "Button"
	Button.Parent = Template
	Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Button.BorderSizePixel = 0
	Button.Size = UDim2.new(1, -10, 0, 35)

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = Button

	Title_3.Name = "Title"
	Title_3.Parent = Button
	Title_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_3.BackgroundTransparency = 1.000
	Title_3.BorderSizePixel = 0
	Title_3.Position = UDim2.new(0.373655915, 0, 0.5, 0)
	Title_3.Size = UDim2.new(0, 315, 0, 14)
	Title_3.Font = Enum.Font.GothamMedium
	Title_3.Text = "Reset Aimbot System"
	Title_3.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_3.TextScaled = true
	Title_3.TextSize = 14.000
	Title_3.TextWrapped = true
	Title_3.TextXAlignment = Enum.TextXAlignment.Left

	ElementIndicator.Name = "ElementIndicator"
	ElementIndicator.Parent = Button
	ElementIndicator.AnchorPoint = Vector2.new(0.5, 0.5)
	ElementIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ElementIndicator.BackgroundTransparency = 1.000
	ElementIndicator.BorderSizePixel = 0
	ElementIndicator.Position = UDim2.new(0.862903237, 0, 0.5, 0)
	ElementIndicator.Size = UDim2.new(0, 108, 0, 13)
	ElementIndicator.Font = Enum.Font.GothamMedium
	ElementIndicator.Text = "button"
	ElementIndicator.TextColor3 = Color3.fromRGB(240, 240, 240)
	ElementIndicator.TextScaled = true
	ElementIndicator.TextSize = 14.000
	ElementIndicator.TextTransparency = 0.900
	ElementIndicator.TextWrapped = true
	ElementIndicator.TextXAlignment = Enum.TextXAlignment.Right

	Interact.Name = "Interact"
	Interact.Parent = Button
	Interact.AnchorPoint = Vector2.new(0.5, 0.5)
	Interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact.BackgroundTransparency = 1.000
	Interact.BorderSizePixel = 0
	Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
	Interact.Size = UDim2.new(1, 0, 1, 0)
	Interact.ZIndex = 5
	Interact.Font = Enum.Font.SourceSans
	Interact.Text = ""
	Interact.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact.TextSize = 14.000
	Interact.TextTransparency = 1.000

	Toggle.Name = "Toggle"
	Toggle.Parent = Template
	Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Toggle.BorderSizePixel = 0
	Toggle.Size = UDim2.new(1, -10, 0, 40)

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = Toggle

	Title_4.Name = "Title"
	Title_4.Parent = Toggle
	Title_4.AnchorPoint = Vector2.new(1, 0.5)
	Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_4.BackgroundTransparency = 1.000
	Title_4.BorderSizePixel = 0
	Title_4.Position = UDim2.new(1, -63, 0, 20)
	Title_4.Size = UDim2.new(0, 385, 0, 14)
	Title_4.Font = Enum.Font.GothamMedium
	Title_4.Text = "Enable Tracers"
	Title_4.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_4.TextScaled = true
	Title_4.TextSize = 14.000
	Title_4.TextWrapped = true
	Title_4.TextXAlignment = Enum.TextXAlignment.Left

	Interact_2.Name = "Interact"
	Interact_2.Parent = Toggle
	Interact_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Interact_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact_2.BackgroundTransparency = 1.000
	Interact_2.BorderSizePixel = 0
	Interact_2.Position = UDim2.new(0.815322578, 0, 0.5, 0)
	Interact_2.Size = UDim2.new(0.369354695, 0, 1, 0)
	Interact_2.ZIndex = 5
	Interact_2.Font = Enum.Font.SourceSans
	Interact_2.Text = ""
	Interact_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_2.TextSize = 14.000
	Interact_2.TextTransparency = 1.000

	Switch.Name = "Switch"
	Switch.Parent = Toggle
	Switch.AnchorPoint = Vector2.new(1, 0.5)
	Switch.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Switch.BorderSizePixel = 0
	Switch.Position = UDim2.new(1, -10, 0, 20)
	Switch.Size = UDim2.new(0, 43, 0, 21)

	UICorner_5.CornerRadius = UDim.new(0, 15)
	UICorner_5.Parent = Switch

	Shadow_2.Name = "Shadow"
	Shadow_2.Parent = Switch
	Shadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_2.BackgroundTransparency = 1.000
	Shadow_2.BorderSizePixel = 0
	Shadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow_2.Size = UDim2.new(1, 2, 1, 2)
	Shadow_2.ZIndex = 3
	Shadow_2.Image = "rbxassetid://3602733521"
	Shadow_2.ImageColor3 = Color3.fromRGB(20, 20, 20)
	Shadow_2.ImageTransparency = 0.600

	UICorner_6.CornerRadius = UDim.new(0, 15)
	UICorner_6.Parent = Shadow_2

	Indicator.Name = "Indicator"
	Indicator.Parent = Switch
	Indicator.AnchorPoint = Vector2.new(0, 0.5)
	Indicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	Indicator.BorderSizePixel = 0
	Indicator.Position = UDim2.new(1, -40, 0.5, 0)
	Indicator.Size = UDim2.new(0, 17, 0, 17)

	UICorner_7.CornerRadius = UDim.new(1, 0)
	UICorner_7.Parent = Indicator

	SectionSpacing.Name = "SectionSpacing"
	SectionSpacing.Parent = Template
	SectionSpacing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SectionSpacing.BackgroundTransparency = 1.000
	SectionSpacing.BorderSizePixel = 0
	SectionSpacing.Position = UDim2.new(0, 0, 0.480916023, 0)
	SectionSpacing.Size = UDim2.new(1, 0, 0, 8)
	SectionSpacing.Visible = false

	Slider.Name = "Slider"
	Slider.Parent = Template
	Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0.0105263162, 0, 0.450381666, 0)
	Slider.Size = UDim2.new(1, -10, 0.0279898215, 35)

	UICorner_8.CornerRadius = UDim.new(0, 4)
	UICorner_8.Parent = Slider

	Title_5.Name = "Title"
	Title_5.Parent = Slider
	Title_5.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_5.BackgroundTransparency = 1.000
	Title_5.BorderSizePixel = 0
	Title_5.Position = UDim2.new(0.25, 0, 0.5, 0)
	Title_5.Size = UDim2.new(0, 200, 0, 14)
	Title_5.Font = Enum.Font.GothamMedium
	Title_5.Text = "ESP Range"
	Title_5.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_5.TextScaled = true
	Title_5.TextSize = 14.000
	Title_5.TextWrapped = true
	Title_5.TextXAlignment = Enum.TextXAlignment.Left

	Main_2.Name = "Main"
	Main_2.Parent = Slider
	Main_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Main_2.BackgroundColor3 = Color3.fromRGB(43, 105, 159)
	Main_2.BackgroundTransparency = 0.800
	Main_2.BorderSizePixel = 0
	Main_2.Position = UDim2.new(0.739000022, 0, 0.5, 0)
	Main_2.Size = UDim2.new(0, 222, 0, 30)

	UICorner_9.CornerRadius = UDim.new(0, 6)
	UICorner_9.Parent = Main_2

	Progress.Name = "Progress"
	Progress.Parent = Main_2
	Progress.BackgroundColor3 = Color3.fromRGB(43, 105, 159)
	Progress.BorderSizePixel = 0
	Progress.Size = UDim2.new(0.800968468, 0, 1, 0)

	UICorner_10.CornerRadius = UDim.new(0, 6)
	UICorner_10.Parent = Progress

	Information.Name = "Information"
	Information.Parent = Main_2
	Information.AnchorPoint = Vector2.new(0.5, 0.5)
	Information.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Information.BackgroundTransparency = 1.000
	Information.BorderSizePixel = 0
	Information.Position = UDim2.new(0.453598171, 0, 0.5, 0)
	Information.Size = UDim2.new(0, 168, 0, 15)
	Information.ZIndex = 5
	Information.Font = Enum.Font.GothamMedium
	Information.Text = "750 studs"
	Information.TextColor3 = Color3.fromRGB(240, 240, 240)
	Information.TextScaled = true
	Information.TextSize = 14.000
	Information.TextTransparency = 0.400
	Information.TextWrapped = true
	Information.TextXAlignment = Enum.TextXAlignment.Left

	Shadow_3.Name = "Shadow"
	Shadow_3.Parent = Main_2
	Shadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_3.BackgroundTransparency = 1.000
	Shadow_3.BorderSizePixel = 0
	Shadow_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow_3.Size = UDim2.new(0.999999642, 0, 1.00000012, 0)
	Shadow_3.ZIndex = 3
	Shadow_3.Image = "rbxassetid://3602733521"
	Shadow_3.ImageColor3 = Color3.fromRGB(20, 20, 20)
	Shadow_3.ImageTransparency = 0.700

	UICorner_11.CornerRadius = UDim.new(0, 6)
	UICorner_11.Parent = Shadow_3

	Interact_3.Name = "Interact"
	Interact_3.Parent = Main_2
	Interact_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact_3.BackgroundTransparency = 1.000
	Interact_3.BorderSizePixel = 0
	Interact_3.Size = UDim2.new(1, 0, 1, 0)
	Interact_3.ZIndex = 10
	Interact_3.Font = Enum.Font.SourceSans
	Interact_3.Text = ""
	Interact_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_3.TextSize = 14.000

	Input.Name = "Input"
	Input.Parent = Template
	Input.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Input.BorderSizePixel = 0
	Input.Position = UDim2.new(0.0105263162, 0, 0.669211209, 0)
	Input.Size = UDim2.new(1, -10, 0, 40)

	UICorner_12.CornerRadius = UDim.new(0, 4)
	UICorner_12.Parent = Input

	Title_6.Name = "Title"
	Title_6.Parent = Input
	Title_6.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_6.BackgroundTransparency = 1.000
	Title_6.BorderSizePixel = 0
	Title_6.Position = UDim2.new(0.25, 0, 0.5, 0)
	Title_6.Size = UDim2.new(0, 200, 0, 14)
	Title_6.Font = Enum.Font.GothamMedium
	Title_6.Text = "Target Player"
	Title_6.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_6.TextScaled = true
	Title_6.TextSize = 14.000
	Title_6.TextWrapped = true
	Title_6.TextXAlignment = Enum.TextXAlignment.Left

	InputFrame.Name = "InputFrame"
	InputFrame.Parent = Input
	InputFrame.AnchorPoint = Vector2.new(1, 0.5)
	InputFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	InputFrame.BorderSizePixel = 0
	InputFrame.Position = UDim2.new(1, -7, 0, 20)
	InputFrame.Size = UDim2.new(0, 120, 0, 30)

	InputBox.Name = "InputBox"
	InputBox.Parent = InputFrame
	InputBox.AnchorPoint = Vector2.new(0.5, 0.5)
	InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InputBox.BackgroundTransparency = 1.000
	InputBox.BorderSizePixel = 0
	InputBox.Position = UDim2.new(0.5, 0, 0.5, 0)
	InputBox.Size = UDim2.new(1, -15, 0, 14)
	InputBox.ClearTextOnFocus = false
	InputBox.Font = Enum.Font.GothamMedium
	InputBox.PlaceholderText = "Dynamic Input"
	InputBox.Text = ""
	InputBox.TextColor3 = Color3.fromRGB(240, 240, 240)
	InputBox.TextSize = 14.000

	UICorner_13.CornerRadius = UDim.new(0, 5)
	UICorner_13.Parent = InputFrame

	Keybind.Name = "Keybind"
	Keybind.Parent = Template
	Keybind.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Keybind.BorderSizePixel = 0
	Keybind.Position = UDim2.new(0.0105263162, 0, 0.669211209, 0)
	Keybind.Size = UDim2.new(1, -10, 0, 40)

	UICorner_14.CornerRadius = UDim.new(0, 4)
	UICorner_14.Parent = Keybind

	Title_7.Name = "Title"
	Title_7.Parent = Keybind
	Title_7.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_7.BackgroundTransparency = 1.000
	Title_7.BorderSizePixel = 0
	Title_7.Position = UDim2.new(0.25, 0, 0.5, 0)
	Title_7.Size = UDim2.new(0, 200, 0, 14)
	Title_7.Font = Enum.Font.GothamMedium
	Title_7.Text = "Target Keybind"
	Title_7.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_7.TextScaled = true
	Title_7.TextSize = 14.000
	Title_7.TextWrapped = true
	Title_7.TextXAlignment = Enum.TextXAlignment.Left

	KeybindFrame.Name = "KeybindFrame"
	KeybindFrame.Parent = Keybind
	KeybindFrame.AnchorPoint = Vector2.new(1, 0.5)
	KeybindFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	KeybindFrame.BorderSizePixel = 0
	KeybindFrame.Position = UDim2.new(1, -7, 0, 20)
	KeybindFrame.Size = UDim2.new(0, 34, 0, 30)

	KeybindBox.Name = "KeybindBox"
	KeybindBox.Parent = KeybindFrame
	KeybindBox.AnchorPoint = Vector2.new(0.5, 0.5)
	KeybindBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeybindBox.BackgroundTransparency = 1.000
	KeybindBox.BorderSizePixel = 0
	KeybindBox.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeybindBox.Size = UDim2.new(1, -15, 0, 14)
	KeybindBox.ClearTextOnFocus = false
	KeybindBox.Font = Enum.Font.GothamMedium
	KeybindBox.PlaceholderText = "Keybind"
	KeybindBox.Text = "Q"
	KeybindBox.TextColor3 = Color3.fromRGB(240, 240, 240)
	KeybindBox.TextSize = 14.000

	UICorner_15.CornerRadius = UDim.new(0, 5)
	UICorner_15.Parent = KeybindFrame

	Dropdown.Name = "Dropdown"
	Dropdown.Parent = Template
	Dropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Dropdown.BorderSizePixel = 0
	Dropdown.Position = UDim2.new(-0.00631578872, 0, 0.39556998, 0)
	Dropdown.Size = UDim2.new(1, -10, 0, 180)

	UICorner_16.CornerRadius = UDim.new(0, 4)
	UICorner_16.Parent = Dropdown

	Title_8.Name = "Title"
	Title_8.Parent = Dropdown
	Title_8.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_8.BackgroundTransparency = 1.000
	Title_8.BorderSizePixel = 0
	Title_8.Position = UDim2.new(0, 135, 0, 21)
	Title_8.Size = UDim2.new(0, 237, 0, 14)
	Title_8.ZIndex = 3
	Title_8.Font = Enum.Font.GothamMedium
	Title_8.Text = "Dropdown"
	Title_8.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_8.TextScaled = true
	Title_8.TextSize = 14.000
	Title_8.TextWrapped = true
	Title_8.TextXAlignment = Enum.TextXAlignment.Left

	List.Name = "List"
	List.Parent = Dropdown
	List.Active = true
	List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	List.BackgroundTransparency = 1.000
	List.BorderSizePixel = 0
	List.Position = UDim2.new(0, 0, 0, 38)
	List.Size = UDim2.new(0, 465, 0, 126)
	List.ScrollBarThickness = 3

	UIListLayout_2.Parent = List
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 5)

	Placeholder.Name = "Placeholder"
	Placeholder.Parent = List
	Placeholder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Placeholder.BorderSizePixel = 0
	Placeholder.LayoutOrder = -100
	Placeholder.Position = UDim2.new(0.392473131, 0, 0, 0)

	Template_2.Name = "Template"
	Template_2.Parent = List
	Template_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Template_2.BorderSizePixel = 0
	Template_2.Position = UDim2.new(0.392473131, 0, 0, 0)
	Template_2.Size = UDim2.new(0.970000029, 0, 0, 38)

	UICorner_17.CornerRadius = UDim.new(0, 5)
	UICorner_17.Parent = Template_2

	Title_9.Name = "Title"
	Title_9.Parent = Template_2
	Title_9.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_9.BackgroundTransparency = 1.000
	Title_9.BorderSizePixel = 0
	Title_9.Position = UDim2.new(0.385198474, 0, 0.5, 0)
	Title_9.Size = UDim2.new(0, 316, 0, 14)
	Title_9.Font = Enum.Font.GothamMedium
	Title_9.Text = "Option"
	Title_9.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_9.TextScaled = true
	Title_9.TextSize = 14.000
	Title_9.TextWrapped = true
	Title_9.TextXAlignment = Enum.TextXAlignment.Left

	Interact_4.Name = "Interact"
	Interact_4.Parent = Template_2
	Interact_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact_4.BackgroundTransparency = 1.000
	Interact_4.BorderSizePixel = 0
	Interact_4.Size = UDim2.new(1, 0, 1, 0)
	Interact_4.ZIndex = 5
	Interact_4.Font = Enum.Font.SourceSans
	Interact_4.Text = ""
	Interact_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_4.TextSize = 1.000

	Selected.Name = "Selected"
	Selected.Parent = Dropdown
	Selected.AnchorPoint = Vector2.new(0.5, 0.5)
	Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Selected.BackgroundTransparency = 1.000
	Selected.BorderSizePixel = 0
	Selected.Position = UDim2.new(0, 340, 0, 21)
	Selected.Size = UDim2.new(0, 168, 0, 14)
	Selected.Font = Enum.Font.GothamMedium
	Selected.Text = "Option #1"
	Selected.TextColor3 = Color3.fromRGB(150, 150, 150)
	Selected.TextScaled = true
	Selected.TextSize = 14.000
	Selected.TextWrapped = true
	Selected.TextXAlignment = Enum.TextXAlignment.Right

	UITextSizeConstraint.Parent = Selected
	UITextSizeConstraint.MaxTextSize = 14

	Toggle_2.Name = "Toggle"
	Toggle_2.Parent = Dropdown
	Toggle_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Toggle_2.BackgroundTransparency = 1.000
	Toggle_2.BorderSizePixel = 0
	Toggle_2.LayoutOrder = 9
	Toggle_2.Position = UDim2.new(0, 441, 0, 21)
	Toggle_2.Size = UDim2.new(0, 32, 0, 28)
	Toggle_2.Image = "rbxassetid://3926305904"
	Toggle_2.ImageColor3 = Color3.fromRGB(150, 150, 150)
	Toggle_2.ImageRectOffset = Vector2.new(564, 284)
	Toggle_2.ImageRectSize = Vector2.new(36, 36)

	Interact_5.Name = "Interact"
	Interact_5.Parent = Dropdown
	Interact_5.AnchorPoint = Vector2.new(0.5, 0.5)
	Interact_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact_5.BackgroundTransparency = 1.000
	Interact_5.BorderSizePixel = 0
	Interact_5.Position = UDim2.new(0.5, 0, 0.5, 0)
	Interact_5.Size = UDim2.new(1, 0, 1, 0)
	Interact_5.ZIndex = 5
	Interact_5.Font = Enum.Font.SourceSans
	Interact_5.Text = ""
	Interact_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_5.TextSize = 14.000
	Interact_5.TextTransparency = 1.000

	Label.Name = "Label"
	Label.Parent = Template
	Label.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Label.BorderSizePixel = 0
	Label.Size = UDim2.new(1, -10, 0, 35)

	UICorner_18.CornerRadius = UDim.new(0, 4)
	UICorner_18.Parent = Label

	Title_10.Name = "Title"
	Title_10.Parent = Label
	Title_10.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_10.BackgroundTransparency = 1.000
	Title_10.BorderSizePixel = 0
	Title_10.Position = UDim2.new(0.509973168, 0, 0.5, 0)
	Title_10.Size = UDim2.new(0, 441, 0, 14)
	Title_10.Font = Enum.Font.GothamMedium
	Title_10.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_10.TextScaled = true
	Title_10.TextSize = 14.000
	Title_10.TextWrapped = true
	Title_10.TextXAlignment = Enum.TextXAlignment.Left

	Paragraph.Name = "Paragraph"
	Paragraph.Parent = Template
	Paragraph.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Paragraph.BorderSizePixel = 0
	Paragraph.Position = UDim2.new(0.0105263162, 0, 0.314979255, 0)
	Paragraph.Size = UDim2.new(1, -10, 0, 130)

	UICorner_19.CornerRadius = UDim.new(0, 4)
	UICorner_19.Parent = Paragraph

	Title_11.Name = "Title"
	Title_11.Parent = Paragraph
	Title_11.AnchorPoint = Vector2.new(1, 0.5)
	Title_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_11.BackgroundTransparency = 1.000
	Title_11.BorderSizePixel = 0
	Title_11.Position = UDim2.new(1, -10, 0, 18)
	Title_11.Size = UDim2.new(0, 438, 0, 14)
	Title_11.Font = Enum.Font.GothamMedium
	Title_11.Text = "Paragraph Title"
	Title_11.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_11.TextScaled = true
	Title_11.TextSize = 14.000
	Title_11.TextWrapped = true
	Title_11.TextXAlignment = Enum.TextXAlignment.Left

	Content.Name = "Content"
	Content.Parent = Paragraph
	Content.AnchorPoint = Vector2.new(1, 0.5)
	Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content.BackgroundTransparency = 1.000
	Content.BorderSizePixel = 0
	Content.Position = UDim2.new(1, -10, 0.574999988, 0)
	Content.Size = UDim2.new(0, 438, 0, 96)
	Content.Font = Enum.Font.GothamMedium
	Content.Text = "Paragraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph Content"
	Content.TextColor3 = Color3.fromRGB(180, 180, 180)
	Content.TextSize = 13.000
	Content.TextWrapped = true
	Content.TextXAlignment = Enum.TextXAlignment.Left
	Content.TextYAlignment = Enum.TextYAlignment.Top

	Color.Name = "Color"
	Color.Parent = Template
	Color.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Color.BorderSizePixel = 0
	Color.Position = UDim2.new(0.0105263162, 0, 0.573499441, 0)
	Color.Size = UDim2.new(1, -10, 0.34863165, 35)
	Color.Visible = false

	UICorner_20.CornerRadius = UDim.new(0, 4)
	UICorner_20.Parent = Color

	Title_12.Name = "Title"
	Title_12.Parent = Color
	Title_12.AnchorPoint = Vector2.new(1, 0.5)
	Title_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_12.BackgroundTransparency = 1.000
	Title_12.BorderSizePixel = 0
	Title_12.Position = UDim2.new(1, -10, 0, 18)
	Title_12.Size = UDim2.new(0, 438, 0, 14)
	Title_12.Font = Enum.Font.GothamMedium
	Title_12.Text = "Color"
	Title_12.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_12.TextScaled = true
	Title_12.TextSize = 14.000
	Title_12.TextWrapped = true
	Title_12.TextXAlignment = Enum.TextXAlignment.Left

	Interact_6.Name = "Interact"
	Interact_6.Parent = Color
	Interact_6.AnchorPoint = Vector2.new(0.5, 0.5)
	Interact_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact_6.BackgroundTransparency = 1.000
	Interact_6.BorderSizePixel = 0
	Interact_6.Position = UDim2.new(0.5, 0, 0.5, 0)
	Interact_6.Size = UDim2.new(1, 0, 1, 0)
	Interact_6.ZIndex = 5
	Interact_6.Font = Enum.Font.SourceSans
	Interact_6.Text = ""
	Interact_6.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_6.TextSize = 14.000
	Interact_6.TextTransparency = 1.000

	Main_3.Name = "Main"
	Main_3.Parent = Color
	Main_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main_3.BackgroundTransparency = 1.000
	Main_3.BorderSizePixel = 0
	Main_3.Position = UDim2.new(0.0344086029, 0, 0.202940851, 0)
	Main_3.Size = UDim2.new(0, 438, 0, 121)

	Placeholder_2.Name = "Placeholder"
	Placeholder_2.Parent = Template
	Placeholder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Placeholder_2.BorderSizePixel = 0
	Placeholder_2.LayoutOrder = 1000

	ColorPicker.Name = "ColorPicker"
	ColorPicker.Parent = Template
	ColorPicker.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	ColorPicker.BorderSizePixel = 0
	ColorPicker.Position = UDim2.new(0.0105263162, 0, 0.573770463, 0)
	ColorPicker.Size = UDim2.new(1, -10, 0, 120)

	UICorner_21.CornerRadius = UDim.new(0, 4)
	UICorner_21.Parent = ColorPicker

	Interact_7.Name = "Interact"
	Interact_7.Parent = ColorPicker
	Interact_7.AnchorPoint = Vector2.new(0.5, 0.5)
	Interact_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact_7.BackgroundTransparency = 1.000
	Interact_7.BorderSizePixel = 0
	Interact_7.Position = UDim2.new(0.289247304, 0, 0.5, 0)
	Interact_7.Size = UDim2.new(0.574193478, 0, 1.00000024, 0)
	Interact_7.ZIndex = 5
	Interact_7.Font = Enum.Font.SourceSans
	Interact_7.Text = ""
	Interact_7.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_7.TextSize = 14.000
	Interact_7.TextTransparency = 1.000

	CPBackground.Name = "CPBackground"
	CPBackground.Parent = ColorPicker
	CPBackground.AnchorPoint = Vector2.new(1, 0)
	CPBackground.BackgroundColor3 = Color3.fromRGB(98, 255, 0)
	CPBackground.BorderSizePixel = 0
	CPBackground.Position = UDim2.new(0, 449, 0, 11)
	CPBackground.Size = UDim2.new(0, 173, 0, 86)

	MainCP.Name = "MainCP"
	MainCP.Parent = CPBackground
	MainCP.AnchorPoint = Vector2.new(0.5, 0.5)
	MainCP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainCP.BackgroundTransparency = 1.000
	MainCP.BorderSizePixel = 0
	MainCP.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainCP.Size = UDim2.new(1, 0, 1, 0)
	MainCP.Image = "http://www.roblox.com/asset/?id=11413591840"
	MainCP.ImageTransparency = 0.100

	UICorner_22.CornerRadius = UDim.new(0, 5)
	UICorner_22.Parent = MainCP

	MainPoint.Name = "MainPoint"
	MainPoint.Parent = MainCP
	MainPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPoint.BackgroundTransparency = 1.000
	MainPoint.Position = UDim2.new(0.182817578, 0, 0.248957321, 0)
	MainPoint.Size = UDim2.new(0, 59, 0, 59)
	MainPoint.Image = "http://www.roblox.com/asset/?id=3259050989"
	MainPoint.ImageColor3 = Color3.fromRGB(28, 72, 0)

	UICorner_23.CornerRadius = UDim.new(0, 6)
	UICorner_23.Parent = CPBackground

	Display.Name = "Display"
	Display.Parent = CPBackground
	Display.AnchorPoint = Vector2.new(0.5, 0.5)
	Display.BackgroundColor3 = Color3.fromRGB(98, 255, 0)
	Display.Position = UDim2.new(0.5, 0, 0.5, 0)
	Display.Size = UDim2.new(1, 0, 1, 0)

	UICorner_24.CornerRadius = UDim.new(0, 6)
	UICorner_24.Parent = Display

	Frame.Parent = Display
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BackgroundTransparency = 0.750
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(1, 0, 1, 0)

	UICorner_25.CornerRadius = UDim.new(0, 6)
	UICorner_25.Parent = Frame

	HexInput.Name = "HexInput"
	HexInput.Parent = ColorPicker
	HexInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	HexInput.BorderSizePixel = 0
	HexInput.Position = UDim2.new(0, 17, 0, 73)
	HexInput.Size = UDim2.new(0, 119, 0, 31)
	HexInput.ZIndex = 10

	UICorner_26.CornerRadius = UDim.new(0, 4)
	UICorner_26.Parent = HexInput

	InputBox_2.Name = "InputBox"
	InputBox_2.Parent = HexInput
	InputBox_2.AnchorPoint = Vector2.new(0.5, 0.5)
	InputBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InputBox_2.BackgroundTransparency = 1.000
	InputBox_2.BorderSizePixel = 0
	InputBox_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	InputBox_2.Size = UDim2.new(0.979623735, -15, 0, 14)
	InputBox_2.ZIndex = 10
	InputBox_2.ClearTextOnFocus = false
	InputBox_2.Font = Enum.Font.GothamMedium
	InputBox_2.PlaceholderText = "hex"
	InputBox_2.Text = ""
	InputBox_2.TextColor3 = Color3.fromRGB(200, 200, 200)
	InputBox_2.TextSize = 14.000
	InputBox_2.TextXAlignment = Enum.TextXAlignment.Left

	ColorSlider.Name = "ColorSlider"
	ColorSlider.Parent = ColorPicker
	ColorSlider.AnchorPoint = Vector2.new(1, 0)
	ColorSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ColorSlider.ClipsDescendants = true
	ColorSlider.Position = UDim2.new(0, 449, 0, 102)
	ColorSlider.Size = UDim2.new(0, 173, 0, 12)
	ColorSlider.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)), ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)), ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)), ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)), ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)), ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)), ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)), ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)), ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
	UIGradient.Parent = ColorSlider

	SliderPoint.Name = "SliderPoint"
	SliderPoint.Parent = ColorSlider
	SliderPoint.AnchorPoint = Vector2.new(0, 0.5)
	SliderPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderPoint.BackgroundTransparency = 1.000
	SliderPoint.Position = UDim2.new(0.181999996, 0, 0.5, 0)
	SliderPoint.Size = UDim2.new(0, 59, 0, 59)
	SliderPoint.Image = "http://www.roblox.com/asset/?id=3259050989"
	SliderPoint.ImageColor3 = Color3.fromRGB(0, 255, 0)

	TintAdder.Name = "TintAdder"
	TintAdder.Parent = ColorSlider
	TintAdder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TintAdder.BackgroundTransparency = 0.800
	TintAdder.Size = UDim2.new(1, 0, 1, 0)
	TintAdder.Font = Enum.Font.SourceSans
	TintAdder.Text = ""
	TintAdder.TextColor3 = Color3.fromRGB(0, 0, 0)
	TintAdder.TextSize = 14.000

	UICorner_27.CornerRadius = UDim.new(0, 6)
	UICorner_27.Parent = TintAdder

	UICorner_28.CornerRadius = UDim.new(0, 6)
	UICorner_28.Parent = ColorSlider

	Title_13.Name = "Title"
	Title_13.Parent = ColorPicker
	Title_13.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_13.BackgroundTransparency = 1.000
	Title_13.BorderSizePixel = 0
	Title_13.Position = UDim2.new(0, 135, 0, 22)
	Title_13.Size = UDim2.new(0, 237, 0, 14)
	Title_13.ZIndex = 3
	Title_13.Font = Enum.Font.GothamMedium
	Title_13.Text = "Color Picker"
	Title_13.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_13.TextScaled = true
	Title_13.TextSize = 14.000
	Title_13.TextWrapped = true
	Title_13.TextXAlignment = Enum.TextXAlignment.Left

	RGB.Name = "RGB"
	RGB.Parent = ColorPicker
	RGB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RGB.BackgroundTransparency = 1.000
	RGB.Position = UDim2.new(0, 17, 0, 40)
	RGB.Size = UDim2.new(0, 232, 0, 29)

	UIListLayout_3.Parent = RGB
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 5)

	GInput.Name = "GInput"
	GInput.Parent = RGB
	GInput.AnchorPoint = Vector2.new(1, 0.5)
	GInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	GInput.BorderSizePixel = 0
	GInput.LayoutOrder = 1
	GInput.Position = UDim2.new(0.359774143, -7, 0.495833337, 0)
	GInput.Size = UDim2.new(0, 54, 0, 27)
	GInput.ZIndex = 10

	UICorner_29.CornerRadius = UDim.new(0, 5)
	UICorner_29.Parent = GInput

	InputBox_3.Name = "InputBox"
	InputBox_3.Parent = GInput
	InputBox_3.AnchorPoint = Vector2.new(0.5, 0.5)
	InputBox_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InputBox_3.BackgroundTransparency = 1.000
	InputBox_3.BorderSizePixel = 0
	InputBox_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	InputBox_3.Size = UDim2.new(0.874000013, -15, 0, 14)
	InputBox_3.ZIndex = 10
	InputBox_3.ClearTextOnFocus = false
	InputBox_3.Font = Enum.Font.GothamMedium
	InputBox_3.PlaceholderText = "G"
	InputBox_3.Text = ""
	InputBox_3.TextColor3 = Color3.fromRGB(200, 200, 200)
	InputBox_3.TextSize = 12.000
	InputBox_3.TextXAlignment = Enum.TextXAlignment.Left

	RInput.Name = "RInput"
	RInput.Parent = RGB
	RInput.AnchorPoint = Vector2.new(1, 0.5)
	RInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	RInput.BorderSizePixel = 0
	RInput.Position = UDim2.new(0.181516185, -5, 0.495833337, 0)
	RInput.Size = UDim2.new(0, 54, 0, 27)
	RInput.ZIndex = 10

	UICorner_30.CornerRadius = UDim.new(0, 5)
	UICorner_30.Parent = RInput

	InputBox_4.Name = "InputBox"
	InputBox_4.Parent = RInput
	InputBox_4.AnchorPoint = Vector2.new(0.5, 0.5)
	InputBox_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InputBox_4.BackgroundTransparency = 1.000
	InputBox_4.BorderSizePixel = 0
	InputBox_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	InputBox_4.Size = UDim2.new(0.873715758, -15, 0, 14)
	InputBox_4.ZIndex = 10
	InputBox_4.ClearTextOnFocus = false
	InputBox_4.Font = Enum.Font.GothamMedium
	InputBox_4.PlaceholderText = "R"
	InputBox_4.Text = ""
	InputBox_4.TextColor3 = Color3.fromRGB(200, 200, 200)
	InputBox_4.TextSize = 12.000
	InputBox_4.TextXAlignment = Enum.TextXAlignment.Left

	BInput.Name = "BInput"
	BInput.Parent = RGB
	BInput.AnchorPoint = Vector2.new(1, 0.5)
	BInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	BInput.BorderSizePixel = 0
	BInput.LayoutOrder = 2
	BInput.Position = UDim2.new(0.927801728, -5, 0.465517253, 0)
	BInput.Size = UDim2.new(0, 54, 0, 27)
	BInput.ZIndex = 10

	UICorner_31.CornerRadius = UDim.new(0, 5)
	UICorner_31.Parent = BInput

	InputBox_5.Name = "InputBox"
	InputBox_5.Parent = BInput
	InputBox_5.AnchorPoint = Vector2.new(0.5, 0.5)
	InputBox_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InputBox_5.BackgroundTransparency = 1.000
	InputBox_5.BorderSizePixel = 0
	InputBox_5.Position = UDim2.new(0.5, 0, 0.5, 0)
	InputBox_5.Size = UDim2.new(0.874000013, -15, 0, 14)
	InputBox_5.ZIndex = 10
	InputBox_5.ClearTextOnFocus = false
	InputBox_5.Font = Enum.Font.GothamMedium
	InputBox_5.PlaceholderText = "B"
	InputBox_5.Text = ""
	InputBox_5.TextColor3 = Color3.fromRGB(200, 200, 200)
	InputBox_5.TextSize = 12.000
	InputBox_5.TextXAlignment = Enum.TextXAlignment.Left

	UIPageLayout.Parent = Elements
	UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quint
	UIPageLayout.TweenTime = 0.800

	LoadingFrame.Name = "LoadingFrame"
	LoadingFrame.Parent = Main
	LoadingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingFrame.BackgroundTransparency = 1.000
	LoadingFrame.BorderSizePixel = 0
	LoadingFrame.Size = UDim2.new(1, 0, 1, 0)
	LoadingFrame.Visible = false
	LoadingFrame.ZIndex = 30

	Title_14.Name = "Title"
	Title_14.Parent = LoadingFrame
	Title_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_14.BackgroundTransparency = 1.000
	Title_14.BorderSizePixel = 0
	Title_14.Position = UDim2.new(0.0560000017, 0, 0.440445334, 0)
	Title_14.Size = UDim2.new(0, 332, 0, 15)
	Title_14.Font = Enum.Font.GothamBold
	Title_14.Text = "Rayfield Interface Library"
	Title_14.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_14.TextScaled = true
	Title_14.TextSize = 14.000
	Title_14.TextWrapped = true
	Title_14.TextXAlignment = Enum.TextXAlignment.Left

	Subtitle.Name = "Subtitle"
	Subtitle.Parent = LoadingFrame
	Subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Subtitle.BackgroundTransparency = 1.000
	Subtitle.BorderSizePixel = 0
	Subtitle.Position = UDim2.new(0.0560000017, 0, 0.503153861, 0)
	Subtitle.Size = UDim2.new(0, 200, 0, 13)
	Subtitle.Font = Enum.Font.Gotham
	Subtitle.Text = "by Sirius"
	Subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
	Subtitle.TextScaled = true
	Subtitle.TextSize = 14.000
	Subtitle.TextWrapped = true
	Subtitle.TextXAlignment = Enum.TextXAlignment.Left

	Version.Name = "Version"
	Version.Parent = LoadingFrame
	Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Version.BackgroundTransparency = 1.000
	Version.BorderSizePixel = 0
	Version.Position = UDim2.new(0.674000084, 0, 0.912125587, 0)
	Version.Size = UDim2.new(0, 134, 0, 13)
	Version.Font = Enum.Font.Gotham
	Version.Text = "release R1"
	Version.TextColor3 = Color3.fromRGB(70, 70, 70)
	Version.TextScaled = true
	Version.TextSize = 14.000
	Version.TextWrapped = true
	Version.TextXAlignment = Enum.TextXAlignment.Right

	TabList.Name = "TabList"
	TabList.Parent = Main
	TabList.Active = true
	TabList.AnchorPoint = Vector2.new(0.5, 0.5)
	TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabList.BackgroundTransparency = 1.000
	TabList.BorderSizePixel = 0
	TabList.Position = UDim2.new(0.495999992, 0, 0.155000001, 0)
	TabList.Size = UDim2.new(0, 471, 0, 36)
	TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabList.ScrollBarThickness = 0

	Template_3.Name = "Template"
	Template_3.Parent = TabList
	Template_3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	Template_3.BackgroundTransparency = 0.700
	Template_3.BorderSizePixel = 0
	Template_3.Position = UDim2.new(0.174193546, 0, 0, 0)
	Template_3.Size = UDim2.new(0, 110, 0, 30)

	UICorner_32.CornerRadius = UDim.new(1, 0)
	UICorner_32.Parent = Template_3

	Title_15.Name = "Title"
	Title_15.Parent = Template_3
	Title_15.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_15.BackgroundTransparency = 1.000
	Title_15.BorderSizePixel = 0
	Title_15.Position = UDim2.new(0.5, 0, 0.5, 0)
	Title_15.Size = UDim2.new(0.800000012, 0, 0, 14)
	Title_15.ZIndex = 5
	Title_15.Font = Enum.Font.GothamMedium
	Title_15.Text = "Automation"
	Title_15.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_15.TextSize = 14.000
	Title_15.TextTransparency = 0.200

	Interact_8.Name = "Interact"
	Interact_8.Parent = Template_3
	Interact_8.AnchorPoint = Vector2.new(0.5, 0.5)
	Interact_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Interact_8.BackgroundTransparency = 1.000
	Interact_8.BorderSizePixel = 0
	Interact_8.Position = UDim2.new(0.5, 0, 0.5, 0)
	Interact_8.Size = UDim2.new(1, 0, 1, 0)
	Interact_8.ZIndex = 3
	Interact_8.Font = Enum.Font.SourceSans
	Interact_8.Text = ""
	Interact_8.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_8.TextSize = 14.000
	Interact_8.TextTransparency = 1.000

	Image_2.Name = "Image"
	Image_2.Parent = Template_3
	Image_2.AnchorPoint = Vector2.new(0, 0.5)
	Image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image_2.BackgroundTransparency = 1.000
	Image_2.BorderSizePixel = 0
	Image_2.Position = UDim2.new(0, 11, 0.5, 0)
	Image_2.Size = UDim2.new(0, 20, 0, 20)
	Image_2.Visible = false
	Image_2.ZIndex = 2
	Image_2.Image = "rbxassetid://4483362458"
	Image_2.ImageColor3 = Color3.fromRGB(240, 240, 240)
	Image_2.ScaleType = Enum.ScaleType.Fit

	Shadow_4.Name = "Shadow"
	Shadow_4.Parent = Template_3
	Shadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_4.BackgroundTransparency = 1.000
	Shadow_4.BorderSizePixel = 0
	Shadow_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow_4.Size = UDim2.new(0.999999642, 0, 1.00000012, 0)
	Shadow_4.ZIndex = 3
	Shadow_4.Image = "rbxassetid://3602733521"
	Shadow_4.ImageColor3 = Color3.fromRGB(20, 20, 20)
	Shadow_4.ImageTransparency = 0.850

	UICorner_33.CornerRadius = UDim.new(1, 0)
	UICorner_33.Parent = Shadow_4

	Placeholder_3.Name = "Placeholder"
	Placeholder_3.Parent = TabList
	Placeholder_3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	Placeholder_3.BackgroundTransparency = 1.000
	Placeholder_3.BorderSizePixel = 0
	Placeholder_3.LayoutOrder = -100
	Placeholder_3.Position = UDim2.new(0.174193546, 0, 0, 0)

	UIListLayout_4.Parent = TabList
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_4.Padding = UDim.new(0, 6)

	Preview.Name = "Preview"
	Preview.Parent = Main
	Preview.AnchorPoint = Vector2.new(0.5, 0.5)
	Preview.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Preview.Position = UDim2.new(1.24021554, 0, 0.489558876, 0)
	Preview.Size = UDim2.new(0, 218, 0, 279)
	Preview.Visible = false
	Preview.ZIndex = 5

	UICorner_34.CornerRadius = UDim.new(0, 9)
	UICorner_34.Parent = Preview

	Shadow_5.Name = "Shadow"
	Shadow_5.Parent = Preview
	Shadow_5.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_5.BackgroundTransparency = 1.000
	Shadow_5.BorderSizePixel = 0
	Shadow_5.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow_5.Size = UDim2.new(1, 35, 1, 35)
	Shadow_5.ZIndex = 4

	Image_3.Name = "Image"
	Image_3.Parent = Shadow_5
	Image_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Image_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image_3.BackgroundTransparency = 1.000
	Image_3.BorderSizePixel = 0
	Image_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Image_3.Size = UDim2.new(1.17956781, 0, 1.29999995, 0)
	Image_3.ZIndex = 4
	Image_3.Image = "rbxassetid://5587865193"
	Image_3.ImageColor3 = Color3.fromRGB(20, 20, 20)
	Image_3.ImageTransparency = 0.300

	Description.Name = "Description"
	Description.Parent = Preview
	Description.AnchorPoint = Vector2.new(1, 0)
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(1, -15, 0, 173)
	Description.Size = UDim2.new(0, 188, 0, 94)
	Description.ZIndex = 5
	Description.Font = Enum.Font.Gotham
	Description.Text = "Enable Tracers and track users from a point on your screen based on your configuration"
	Description.TextColor3 = Color3.fromRGB(210, 210, 210)
	Description.TextSize = 14.000
	Description.TextWrapped = true
	Description.TextXAlignment = Enum.TextXAlignment.Left
	Description.TextYAlignment = Enum.TextYAlignment.Top

	Title_16.Name = "Title"
	Title_16.Parent = Preview
	Title_16.AnchorPoint = Vector2.new(1, 0)
	Title_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_16.BackgroundTransparency = 1.000
	Title_16.BorderSizePixel = 0
	Title_16.Position = UDim2.new(1, -15, 0, 30)
	Title_16.Size = UDim2.new(0, 188, 0, 15)
	Title_16.ZIndex = 5
	Title_16.Font = Enum.Font.Unknown
	Title_16.Text = "Enable Tracers"
	Title_16.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_16.TextSize = 15.000
	Title_16.TextWrapped = true
	Title_16.TextXAlignment = Enum.TextXAlignment.Left

	State.Name = "State"
	State.Parent = Preview
	State.AnchorPoint = Vector2.new(1, 0)
	State.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	State.BackgroundTransparency = 1.000
	State.BorderSizePixel = 0
	State.Position = UDim2.new(1, -15, 0, 18)
	State.Size = UDim2.new(0, 188, 0, 11)
	State.ZIndex = 5
	State.Font = Enum.Font.GothamMedium
	State.Text = "DISABLED"
	State.TextColor3 = Color3.fromRGB(210, 53, 22)
	State.TextScaled = true
	State.TextSize = 15.000
	State.TextTransparency = 0.200
	State.TextWrapped = true
	State.TextXAlignment = Enum.TextXAlignment.Left

	PreviewImage.Name = "PreviewImage"
	PreviewImage.Parent = Preview
	PreviewImage.AnchorPoint = Vector2.new(1, 0)
	PreviewImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PreviewImage.BackgroundTransparency = 1.000
	PreviewImage.Position = UDim2.new(1, -15, 0, 55)
	PreviewImage.Size = UDim2.new(0, 188, 0, 106)
	PreviewImage.ZIndex = 5
	PreviewImage.Image = "rbxassetid://12577727209"

	RecommendSettings.Name = "RecommendSettings"
	RecommendSettings.Parent = Rayfield
	RecommendSettings.AnchorPoint = Vector2.new(0.5, 0.5)
	RecommendSettings.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	RecommendSettings.BackgroundTransparency = 0.100
	RecommendSettings.BorderSizePixel = 0
	RecommendSettings.Position = UDim2.new(0.5, 0, 0.338750005, 0)
	RecommendSettings.Size = UDim2.new(0, 474, 0, 100)
	RecommendSettings.Visible = false
	RecommendSettings.ZIndex = 5

	Shadow_6.Name = "Shadow"
	Shadow_6.Parent = RecommendSettings
	Shadow_6.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_6.BackgroundTransparency = 1.000
	Shadow_6.BorderSizePixel = 0
	Shadow_6.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow_6.Size = UDim2.new(1, 35, 1, 35)
	Shadow_6.ZIndex = 4

	Image_4.Name = "Image"
	Image_4.Parent = Shadow_6
	Image_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Image_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image_4.BackgroundTransparency = 1.000
	Image_4.BorderSizePixel = 0
	Image_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	Image_4.Size = UDim2.new(1.17956781, 0, 1.29999995, 0)
	Image_4.ZIndex = 4
	Image_4.Image = "rbxassetid://5587865193"
	Image_4.ImageColor3 = Color3.fromRGB(20, 20, 20)
	Image_4.ImageTransparency = 0.200

	UICorner_35.Parent = RecommendSettings

	Title_17.Name = "Title"
	Title_17.Parent = RecommendSettings
	Title_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_17.BackgroundTransparency = 1.000
	Title_17.BorderSizePixel = 0
	Title_17.Position = UDim2.new(0.0970000029, 0, 0.25, 0)
	Title_17.Size = UDim2.new(0, 363, 0, 15)
	Title_17.ZIndex = 5
	Title_17.Font = Enum.Font.GothamMedium
	Title_17.Text = "Recommended configuration available"
	Title_17.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_17.TextSize = 15.000
	Title_17.TextWrapped = true
	Title_17.TextXAlignment = Enum.TextXAlignment.Left

	Description_2.Name = "Description"
	Description_2.Parent = RecommendSettings
	Description_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description_2.BackgroundTransparency = 1.000
	Description_2.BorderSizePixel = 0
	Description_2.Position = UDim2.new(0.0419999994, 0, 0.430000007, 0)
	Description_2.Size = UDim2.new(0, 316, 0, 28)
	Description_2.ZIndex = 5
	Description_2.Font = Enum.Font.GothamMedium
	Description_2.Text = "The script developer has preset settings ready to use that they recommend for all users"
	Description_2.TextColor3 = Color3.fromRGB(210, 210, 210)
	Description_2.TextSize = 14.000
	Description_2.TextWrapped = true
	Description_2.TextXAlignment = Enum.TextXAlignment.Left

	Load.Name = "Load"
	Load.Parent = RecommendSettings
	Load.BackgroundColor3 = Color3.fromRGB(0, 144, 216)
	Load.BackgroundTransparency = 0.200
	Load.BorderSizePixel = 0
	Load.Position = UDim2.new(0.796379626, 0, 0.565590799, 0)
	Load.Size = UDim2.new(0, 84, 0, 33)
	Load.ZIndex = 5
	Load.Font = Enum.Font.GothamMedium
	Load.Text = "Load"
	Load.TextColor3 = Color3.fromRGB(240, 240, 240)
	Load.TextSize = 14.000
	Load.TextWrapped = true

	UICorner_36.CornerRadius = UDim.new(0, 6)
	UICorner_36.Parent = Load

	Shadow_7.Name = "Shadow"
	Shadow_7.Parent = Load
	Shadow_7.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_7.BackgroundTransparency = 1.000
	Shadow_7.BorderSizePixel = 0
	Shadow_7.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow_7.Size = UDim2.new(1, 2, 1, 2)
	Shadow_7.ZIndex = 5
	Shadow_7.Image = "rbxassetid://3602733521"
	Shadow_7.ImageColor3 = Color3.fromRGB(20, 20, 20)
	Shadow_7.ImageTransparency = 0.800

	UICorner_37.CornerRadius = UDim.new(0, 6)
	UICorner_37.Parent = Shadow_7

	Icon.Name = "Icon"
	Icon.Parent = RecommendSettings
	Icon.BackgroundTransparency = 1.000
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.0419999994, 0, 0.230000004, 0)
	Icon.Size = UDim2.new(0, 20, 0, 20)
	Icon.ZIndex = 5
	Icon.Image = "rbxassetid://4483362748"
	Icon.ImageColor3 = Color3.fromRGB(240, 240, 240)
	Icon.ScaleType = Enum.ScaleType.Fit

	Close.Name = "Close"
	Close.Parent = RecommendSettings
	Close.AnchorPoint = Vector2.new(0.5, 0.5)
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.96054852, 0, 0.199999988, 0)
	Close.Size = UDim2.new(0, 21, 0, 21)
	Close.ZIndex = 5
	Close.Image = "http://www.roblox.com/asset/?id=10137832201"
	Close.ImageColor3 = Color3.fromRGB(240, 240, 240)
	Close.ImageTransparency = 0.800
	Close.ScaleType = Enum.ScaleType.Fit

	Notifications.Name = "Notifications"
	Notifications.Parent = Rayfield
	Notifications.AnchorPoint = Vector2.new(1, 1)
	Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Notifications.BackgroundTransparency = 1.000
	Notifications.BorderSizePixel = 0
	Notifications.ClipsDescendants = true
	Notifications.Position = UDim2.new(1, -25, 1, -25)
	Notifications.Size = UDim2.new(0, 296, 0, 536)

	UIListLayout_5.Parent = Notifications
	UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout_5.Padding = UDim.new(0, 4)

	Template_4.Name = "Template"
	Template_4.Parent = Notifications
	Template_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Template_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Template_4.BackgroundTransparency = 0.400
	Template_4.BorderSizePixel = 0
	Template_4.Position = UDim2.new(0.5, 0, 0.870000005, 0)
	Template_4.Size = UDim2.new(0, 295, 0, 132)
	Template_4.Visible = false
	Template_4.ZIndex = 100

	UICorner_38.Parent = Template_4

	Title_18.Name = "Title"
	Title_18.Parent = Template_4
	Title_18.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_18.BackgroundTransparency = 1.000
	Title_18.BorderSizePixel = 0
	Title_18.Position = UDim2.new(0, 159, 0, 21)
	Title_18.Size = UDim2.new(0, 233, 0, 15)
	Title_18.ZIndex = 105
	Title_18.Font = Enum.Font.GothamBold
	Title_18.Text = "Administrator"
	Title_18.TextColor3 = Color3.fromRGB(240, 240, 240)
	Title_18.TextScaled = true
	Title_18.TextSize = 14.000
	Title_18.TextWrapped = true
	Title_18.TextXAlignment = Enum.TextXAlignment.Left

	Description_3.Name = "Description"
	Description_3.Parent = Template_4
	Description_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Description_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description_3.BackgroundTransparency = 1.000
	Description_3.BorderSizePixel = 0
	Description_3.Position = UDim2.new(0, 149, 0, 54)
	Description_3.Size = UDim2.new(0, 269, 0, 43)
	Description_3.ZIndex = 105
	Description_3.Font = Enum.Font.GothamMedium
	Description_3.Text = "An administrator from this game (Frappe) has joined your session, would you like to disconnect?"
	Description_3.TextColor3 = Color3.fromRGB(240, 240, 240)
	Description_3.TextSize = 14.000
	Description_3.TextTransparency = 0.200
	Description_3.TextWrapped = true
	Description_3.TextXAlignment = Enum.TextXAlignment.Left
	Description_3.TextYAlignment = Enum.TextYAlignment.Top

	Icon_2.Name = "Icon"
	Icon_2.Parent = Template_4
	Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_2.BackgroundTransparency = 1.000
	Icon_2.BorderSizePixel = 0
	Icon_2.LayoutOrder = 5
	Icon_2.Position = UDim2.new(0, 25, 0, 21)
	Icon_2.Size = UDim2.new(0, 20, 0, 20)
	Icon_2.ZIndex = 105
	Icon_2.Image = "rbxassetid://3944680095"
	Icon_2.ImageColor3 = Color3.fromRGB(240, 240, 240)

	BlurModule.Name = "BlurModule"
	BlurModule.Parent = Template_4
	BlurModule.AnchorPoint = Vector2.new(0.5, 0.5)
	BlurModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BlurModule.BackgroundTransparency = 1.000
	BlurModule.BorderSizePixel = 0
	BlurModule.Position = UDim2.new(0.5, 0, 0.5, 0)
	BlurModule.Size = UDim2.new(1, -20, 1, -20)

	Actions.Name = "Actions"
	Actions.Parent = Template_4
	Actions.Active = true
	Actions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Actions.BackgroundTransparency = 1.000
	Actions.BorderSizePixel = 0
	Actions.Position = UDim2.new(0.0540000014, 0, 0.639999986, 0)
	Actions.Size = UDim2.new(0, 268, 0, 36)
	Actions.ZIndex = 105
	Actions.CanvasSize = UDim2.new(0, 0, 0, 0)
	Actions.ScrollBarThickness = 0

	Template_5.Name = "Template"
	Template_5.Parent = Actions
	Template_5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	Template_5.BackgroundTransparency = 0.200
	Template_5.BorderColor3 = Color3.fromRGB(8, 12, 15)
	Template_5.BorderSizePixel = 0
	Template_5.Position = UDim2.new(0, 0, -0.142857149, 0)
	Template_5.Size = UDim2.new(0, 80, 1, 0)
	Template_5.ZIndex = 106
	Template_5.Font = Enum.Font.Gotham
	Template_5.Text = "Ignore"
	Template_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	Template_5.TextSize = 14.000
	Template_5.TextWrapped = true

	UICorner_39.CornerRadius = UDim.new(0, 6)
	UICorner_39.Parent = Template_5

	UIListLayout_6.Parent = Actions
	UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_6.Padding = UDim.new(0, 5)

	Notice.Name = "Notice"
	Notice.Parent = Rayfield
	Notice.AnchorPoint = Vector2.new(0.5, 1)
	Notice.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Notice.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notice.BorderSizePixel = 0
	Notice.Position = UDim2.new(0.5, 0, 1, -50)
	Notice.Size = UDim2.new(0, 425, 0, 246)
	Notice.Visible = false

	UICorner_40.CornerRadius = UDim.new(0, 11)
	UICorner_40.Parent = Notice

	Title_19.Name = "Title"
	Title_19.Parent = Notice
	Title_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_19.BackgroundTransparency = 1.000
	Title_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_19.BorderSizePixel = 0
	Title_19.Position = UDim2.new(0, 20, 0, 15)
	Title_19.Size = UDim2.new(0, 267, 0, 32)
	Title_19.Font = Enum.Font.Unknown
	Title_19.Text = "This version of Rayfield Library is outdated."
	Title_19.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_19.TextScaled = true
	Title_19.TextSize = 16.000
	Title_19.TextWrapped = true
	Title_19.TextXAlignment = Enum.TextXAlignment.Left
	Title_19.TextYAlignment = Enum.TextYAlignment.Top

	List_2.Name = "List"
	List_2.Parent = Notice
	List_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	List_2.BackgroundTransparency = 1.000
	List_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	List_2.BorderSizePixel = 0
	List_2.Position = UDim2.new(0, 20, 0, 60)
	List_2.Size = UDim2.new(0, 267, 0, 178)

	_2.Name = "2"
	_2.Parent = List_2
	_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_2.BackgroundTransparency = 1.000
	_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	_2.BorderSizePixel = 0
	_2.Position = UDim2.new(0, 20, 0.224000007, 0)
	_2.Size = UDim2.new(0, 267, 0, 44)

	Title_20.Name = "Title"
	Title_20.Parent = _2
	Title_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_20.BackgroundTransparency = 1.000
	Title_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_20.BorderSizePixel = 0
	Title_20.Size = UDim2.new(0, 267, 0, 15)
	Title_20.Font = Enum.Font.Unknown
	Title_20.Text = "If you are not the script author"
	Title_20.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_20.TextScaled = true
	Title_20.TextSize = 16.000
	Title_20.TextTransparency = 0.500
	Title_20.TextWrapped = true
	Title_20.TextXAlignment = Enum.TextXAlignment.Left
	Title_20.TextYAlignment = Enum.TextYAlignment.Top

	Content_2.Name = "Content"
	Content_2.Parent = _2
	Content_2.AnchorPoint = Vector2.new(0, 1)
	Content_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content_2.BackgroundTransparency = 1.000
	Content_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content_2.BorderSizePixel = 0
	Content_2.Position = UDim2.new(0, 0, 1, 0)
	Content_2.Size = UDim2.new(0, 267, 0, 26)
	Content_2.Font = Enum.Font.Unknown
	Content_2.Text = "Notify the script author where possible to ensure their version of Rayfield is updated."
	Content_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Content_2.TextScaled = true
	Content_2.TextSize = 16.000
	Content_2.TextTransparency = 0.200
	Content_2.TextWrapped = true
	Content_2.TextXAlignment = Enum.TextXAlignment.Left
	Content_2.TextYAlignment = Enum.TextYAlignment.Top

	UIListLayout_7.Parent = List_2
	UIListLayout_7.Padding = UDim.new(0, 15)

	_1.Name = "1"
	_1.Parent = List_2
	_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_1.BackgroundTransparency = 1.000
	_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	_1.BorderSizePixel = 0
	_1.Position = UDim2.new(0, 20, 0.224000007, 0)
	_1.Size = UDim2.new(0, 267, 0, 44)

	Title_21.Name = "Title"
	Title_21.Parent = _1
	Title_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_21.BackgroundTransparency = 1.000
	Title_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_21.BorderSizePixel = 0
	Title_21.Size = UDim2.new(0, 267, 0, 15)
	Title_21.Font = Enum.Font.Unknown
	Title_21.Text = "If you are the script author"
	Title_21.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_21.TextScaled = true
	Title_21.TextSize = 16.000
	Title_21.TextTransparency = 0.500
	Title_21.TextWrapped = true
	Title_21.TextXAlignment = Enum.TextXAlignment.Left
	Title_21.TextYAlignment = Enum.TextYAlignment.Top

	Content_3.Name = "Content"
	Content_3.Parent = _1
	Content_3.AnchorPoint = Vector2.new(0, 1)
	Content_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content_3.BackgroundTransparency = 1.000
	Content_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content_3.BorderSizePixel = 0
	Content_3.Position = UDim2.new(0, 0, 1, 0)
	Content_3.Size = UDim2.new(0, 267, 0, 26)
	Content_3.Font = Enum.Font.Unknown
	Content_3.Text = "Change the link in the loadstring from github to https://sirius.menu/rayfield"
	Content_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Content_3.TextScaled = true
	Content_3.TextSize = 16.000
	Content_3.TextTransparency = 0.200
	Content_3.TextWrapped = true
	Content_3.TextXAlignment = Enum.TextXAlignment.Left
	Content_3.TextYAlignment = Enum.TextYAlignment.Top

	_3.Name = "3"
	_3.Parent = List_2
	_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_3.BackgroundTransparency = 1.000
	_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	_3.BorderSizePixel = 0
	_3.Position = UDim2.new(0, 20, 0.224000007, 0)
	_3.Size = UDim2.new(0, 267, 0, 44)

	Title_22.Name = "Title"
	Title_22.Parent = _3
	Title_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_22.BackgroundTransparency = 1.000
	Title_22.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_22.BorderSizePixel = 0
	Title_22.Size = UDim2.new(0, 267, 0, 15)
	Title_22.Font = Enum.Font.Unknown
	Title_22.Text = "If you need support making this change"
	Title_22.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_22.TextScaled = true
	Title_22.TextSize = 16.000
	Title_22.TextTransparency = 0.500
	Title_22.TextWrapped = true
	Title_22.TextXAlignment = Enum.TextXAlignment.Left
	Title_22.TextYAlignment = Enum.TextYAlignment.Top

	Content_4.Name = "Content"
	Content_4.Parent = _3
	Content_4.AnchorPoint = Vector2.new(0, 1)
	Content_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content_4.BackgroundTransparency = 1.000
	Content_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content_4.BorderSizePixel = 0
	Content_4.Position = UDim2.new(0, 0, 1, 0)
	Content_4.Size = UDim2.new(0, 267, 0, 26)
	Content_4.Font = Enum.Font.Unknown
	Content_4.Text = "Let us know in our Discord, at discord.gg/sirius, and we'll do our best to help."
	Content_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	Content_4.TextScaled = true
	Content_4.TextSize = 16.000
	Content_4.TextTransparency = 0.200
	Content_4.TextWrapped = true
	Content_4.TextXAlignment = Enum.TextXAlignment.Left
	Content_4.TextYAlignment = Enum.TextYAlignment.Top

	Interact_9.Name = "Interact"
	Interact_9.Parent = Notice
	Interact_9.AnchorPoint = Vector2.new(1, 1)
	Interact_9.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Interact_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Interact_9.BorderSizePixel = 0
	Interact_9.Position = UDim2.new(1, -10, 1, -10)
	Interact_9.Size = UDim2.new(0, 64, 0, 32)
	Interact_9.Font = Enum.Font.Unknown
	Interact_9.Text = "Ok"
	Interact_9.TextColor3 = Color3.fromRGB(255, 255, 255)
	Interact_9.TextSize = 15.000

	UICorner_41.CornerRadius = UDim.new(1, 0)
	UICorner_41.Parent = Interact_9
	local Rayfield = Rayfield

	Rayfield.Enabled = false


	if gethui then
		Rayfield.Parent = gethui()
	elseif syn.protect_gui then 
		syn.protect_gui(Rayfield)
		Rayfield.Parent = CoreGui
	elseif CoreGui:FindFirstChild("RobloxGui") then
		Rayfield.Parent = CoreGui:FindFirstChild("RobloxGui")
	else
		Rayfield.Parent = CoreGui
	end

	if gethui then
		for _, Interface in ipairs(gethui():GetChildren()) do
			if Interface.Name == Rayfield.Name and Interface ~= Rayfield then
				Interface.Enabled = false
				Interface.Name = "Rayfield-Old"
			end
		end
	else
		for _, Interface in ipairs(CoreGui:GetChildren()) do
			if Interface.Name == Rayfield.Name and Interface ~= Rayfield then
				Interface.Enabled = false
				Interface.Name = "Rayfield-Old"
			end
		end
	end

	-- Object Variables

	local Camera = workspace.CurrentCamera
	local Main = Rayfield.Main
	local Topbar = Main.Topbar
	local Elements = Main.Elements
	local LoadingFrame = Main.LoadingFrame
	local TabList = Main.TabList

	Rayfield.DisplayOrder = 100
	LoadingFrame.Version.Text = Release


	-- Variables

	local request = (syn and syn.request) or (http and http.request) or http_request
	local CFileName = nil
	local CEnabled = false
	local Minimised = false
	local Hidden = false
	local Debounce = false
	local Notifications = Rayfield.Notifications

	local SelectedTheme = RayfieldLibrary.Theme.Default

	function ChangeTheme(ThemeName)
		SelectedTheme = RayfieldLibrary.Theme[ThemeName]
		for _, obj in ipairs(Rayfield:GetDescendants()) do
			if obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" or obj.ClassName == "TextButton" then
				if SelectedTheme.TextFont ~= "Default" then 
					obj.TextColor3 = SelectedTheme.TextColor
					obj.Font = SelectedTheme.TextFont
				end
			end
		end

		Rayfield.Main.BackgroundColor3 = SelectedTheme.Background
		Rayfield.Main.Topbar.BackgroundColor3 = SelectedTheme.Topbar
		Rayfield.Main.Topbar.CornerRepair.BackgroundColor3 = SelectedTheme.Topbar
		Rayfield.Main.Shadow.Image.ImageColor3 = SelectedTheme.Shadow

		Rayfield.Main.Topbar.ChangeSize.ImageColor3 = SelectedTheme.TextColor
		Rayfield.Main.Topbar.Hide.ImageColor3 = SelectedTheme.TextColor
		Rayfield.Main.Topbar.Theme.ImageColor3 = SelectedTheme.TextColor

		for _, TabPage in ipairs(Elements:GetChildren()) do
			for _, Element in ipairs(TabPage:GetChildren()) do
				if Element.ClassName == "Frame" and Element.Name ~= "Placeholder" and Element.Name ~= "SectionSpacing" and Element.Name ~= "SectionTitle"  then
					Element.BackgroundColor3 = SelectedTheme.ElementBackground
					Element.UIStroke.Color = SelectedTheme.ElementStroke
				end
			end
		end

	end

	local function AddDraggingFunctionality(DragPoint, Main)
		pcall(function()
			local Dragging, DragInput, MousePos, FramePos = false
			DragPoint.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					Dragging = true
					MousePos = Input.Position
					FramePos = Main.Position

					Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end)
				end
			end)
			DragPoint.InputChanged:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseMovement then
					DragInput = Input
				end
			end)
			UserInputService.InputChanged:Connect(function(Input)
				if Input == DragInput and Dragging then
					local Delta = Input.Position - MousePos
					TweenService:Create(Main, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position  = UDim2.new(FramePos.X.Scale,FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y)}):Play()
				end
			end)
		end)
	end   

	local function PackColor(Color)
		return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255}
	end    

	local function UnpackColor(Color)
		return Color3.fromRGB(Color.R, Color.G, Color.B)
	end

	local function LoadConfiguration(Configuration)
		local Data = HttpService:JSONDecode(Configuration)
		for FlagName, FlagValue in next, Data do
			if RayfieldLibrary.Flags[FlagName] then
				spawn(function() 
					if RayfieldLibrary.Flags[FlagName].Type == "ColorPicker" then
						RayfieldLibrary.Flags[FlagName]:Set(UnpackColor(FlagValue))
					else
						if RayfieldLibrary.Flags[FlagName].CurrentValue or RayfieldLibrary.Flags[FlagName].CurrentKeybind or RayfieldLibrary.Flags[FlagName].CurrentOption or RayfieldLibrary.Flags[FlagName].Color ~= FlagValue then RayfieldLibrary.Flags[FlagName]:Set(FlagValue) end
					end    
				end)
			else
				RayfieldLibrary:Notify({Title = "Flag Error", Content = "Rayfield was unable to find '"..FlagName.. "'' in the current script"})
			end
		end
	end

	local function SaveConfiguration()
		if not CEnabled then return end
		local Data = {}
		for i,v in pairs(RayfieldLibrary.Flags) do
			if v.Type == "ColorPicker" then
				Data[i] = PackColor(v.Color)
			else
				Data[i] = v.CurrentValue or v.CurrentKeybind or v.CurrentOption or v.Color
			end
		end	
		writefile(ConfigurationFolder .. "/" .. CFileName .. ConfigurationExtension, tostring(HttpService:JSONEncode(Data)))
	end

	local neon = (function() -- Open sourced neon module
		local module = {}

		do
			local function IsNotNaN(x)
				return x == x
			end
			local continued = IsNotNaN(Camera:ScreenPointToRay(0,0).Origin.x)
			while not continued do
				RunService.RenderStepped:wait()
				continued = IsNotNaN(Camera:ScreenPointToRay(0,0).Origin.x)
			end
		end
		local RootParent = Camera
		if getgenv().SecureMode == nil then
			RootParent = Camera
		else
			if not getgenv().SecureMode then
				RootParent = Camera
			else 
				RootParent = nil
			end
		end


		local binds = {}
		local root = Instance.new('Folder', RootParent)
		root.Name = 'neon'


		local GenUid; do
			local id = 0
			function GenUid()
				id = id + 1
				return 'neon::'..tostring(id)
			end
		end

		local DrawQuad; do
			local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
			local sz = 0.2

			function DrawTriangle(v1, v2, v3, p0, p1)
				local s1 = (v1 - v2).magnitude
				local s2 = (v2 - v3).magnitude
				local s3 = (v3 - v1).magnitude
				local smax = max(s1, s2, s3)
				local A, B, C
				if s1 == smax then
					A, B, C = v1, v2, v3
				elseif s2 == smax then
					A, B, C = v2, v3, v1
				elseif s3 == smax then
					A, B, C = v3, v1, v2
				end

				local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
				local perp = sqrt((C-A).magnitude^2 - para*para)
				local dif_para = (A - B).magnitude - para

				local st = CFrame.new(B, A)
				local za = CFrame.Angles(pi/2,0,0)

				local cf0 = st

				local Top_Look = (cf0 * za).lookVector
				local Mid_Point = A + CFrame.new(A, B).LookVector * para
				local Needed_Look = CFrame.new(Mid_Point, C).LookVector
				local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

				local ac = CFrame.Angles(0, 0, acos(dot))

				cf0 = cf0 * ac
				if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
					cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
				end
				cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

				local cf1 = st * ac * CFrame.Angles(0, pi, 0)
				if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
					cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
				end
				cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

				if not p0 then
					p0 = Instance.new('Part')
					p0.FormFactor = 'Custom'
					p0.TopSurface = 0
					p0.BottomSurface = 0
					p0.Anchored = true
					p0.CanCollide = false
					p0.Material = 'Glass'
					p0.Size = Vector3.new(sz, sz, sz)
					local mesh = Instance.new('SpecialMesh', p0)
					mesh.MeshType = 2
					mesh.Name = 'WedgeMesh'
				end
				p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
				p0.CFrame = cf0

				if not p1 then
					p1 = p0:clone()
				end
				p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
				p1.CFrame = cf1

				return p0, p1
			end

			function DrawQuad(v1, v2, v3, v4, parts)
				parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
				parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
			end
		end

		function module:BindFrame(frame, properties)
			if RootParent == nil then return end
			if binds[frame] then
				return binds[frame].parts
			end

			local uid = GenUid()
			local parts = {}
			local f = Instance.new('Folder', root)
			f.Name = frame.Name

			local parents = {}
			do
				local function add(child)
					if child:IsA'GuiObject' then
						parents[#parents + 1] = child
						add(child.Parent)
					end
				end
				add(frame)
			end

			local function UpdateOrientation(fetchProps)
				local zIndex = 1 - 0.05*frame.ZIndex
				local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
				local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
				do
					local rot = 0;
					for _, v in ipairs(parents) do
						rot = rot + v.Rotation
					end
					if rot ~= 0 and rot%180 ~= 0 then
						local mid = tl:lerp(br, 0.5)
						local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
						local vec = tl
						tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
						tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
						bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
						br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
					end
				end
				DrawQuad(
					Camera:ScreenPointToRay(tl.x, tl.y, zIndex).Origin, 
					Camera:ScreenPointToRay(tr.x, tr.y, zIndex).Origin, 
					Camera:ScreenPointToRay(bl.x, bl.y, zIndex).Origin, 
					Camera:ScreenPointToRay(br.x, br.y, zIndex).Origin, 
					parts
				)
				if fetchProps then
					for _, pt in pairs(parts) do
						pt.Parent = f
					end
					for propName, propValue in pairs(properties) do
						for _, pt in pairs(parts) do
							pt[propName] = propValue
						end
					end
				end
			end

			UpdateOrientation(true)
			RunService:BindToRenderStep(uid, 2000, UpdateOrientation)

			binds[frame] = {
				uid = uid;
				parts = parts;
			}
			return binds[frame].parts
		end

		function module:Modify(frame, properties)
			local parts = module:GetBoundParts(frame)
			if parts then
				for propName, propValue in pairs(properties) do
					for _, pt in pairs(parts) do
						pt[propName] = propValue
					end
				end
			end
		end

		function module:UnbindFrame(frame)
			if RootParent == nil then return end
			local cb = binds[frame]
			if cb then
				RunService:UnbindFromRenderStep(cb.uid)
				for _, v in pairs(cb.parts) do
					v:Destroy()
				end
				binds[frame] = nil
			end
		end

		function module:HasBinding(frame)
			return binds[frame] ~= nil
		end

		function module:GetBoundParts(frame)
			return binds[frame] and binds[frame].parts
		end


		return module

	end)()

	function RayfieldLibrary:Notify(NotificationSettings)
		spawn(function()
			local ActionCompleted = true
			local Notification = Notifications.Template:Clone()
			Notification.Parent = Notifications
			Notification.Name = NotificationSettings.Title or "Unknown Title"
			Notification.Visible = true

			local blurlight = nil
			if not getgenv().SecureMode then
				blurlight = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
				blurlight.Enabled = true
				blurlight.FarIntensity = 0
				blurlight.FocusDistance = 51.6
				blurlight.InFocusRadius = 50
				blurlight.NearIntensity = 1
				game:GetService("Debris"):AddItem(script,0)
			end

			Notification.Actions.Template.Visible = false

			if NotificationSettings.Actions then
				for _, Action in pairs(NotificationSettings.Actions) do
					ActionCompleted = false
					local NewAction = Notification.Actions.Template:Clone()
					NewAction.BackgroundColor3 = SelectedTheme.NotificationActionsBackground
					if SelectedTheme ~= RayfieldLibrary.Theme.Default then
						NewAction.TextColor3 = SelectedTheme.TextColor
					end
					NewAction.Name = Action.Name
					NewAction.Visible = true
					NewAction.Parent = Notification.Actions
					NewAction.Text = Action.Name
					NewAction.BackgroundTransparency = 1
					NewAction.TextTransparency = 1
					NewAction.Size = UDim2.new(0, NewAction.TextBounds.X + 27, 0, 36)

					NewAction.MouseButton1Click:Connect(function()
						local Success, Response = pcall(Action.Callback)
						if not Success then
							print("Rayfield | Action: "..Action.Name.." Callback Error " ..tostring(Response))
						end
						ActionCompleted = true
					end)
				end
			end
			Notification.BackgroundColor3 = SelectedTheme.Background
			Notification.Title.Text = NotificationSettings.Title or "Unknown"
			Notification.Title.TextTransparency = 1
			Notification.Title.TextColor3 = SelectedTheme.TextColor
			Notification.Description.Text = NotificationSettings.Content or "Unknown"
			Notification.Description.TextTransparency = 1
			Notification.Description.TextColor3 = SelectedTheme.TextColor
			Notification.Icon.ImageColor3 = SelectedTheme.TextColor
			if NotificationSettings.Image then
				Notification.Icon.Image = "rbxassetid://"..tostring(NotificationSettings.Image) 
			else
				Notification.Icon.Image = "rbxassetid://3944680095"
			end

			Notification.Icon.ImageTransparency = 1

			Notification.Parent = Notifications
			Notification.Size = UDim2.new(0, 260, 0, 80)
			Notification.BackgroundTransparency = 1

			TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 91)}):Play()
			TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
			Notification:TweenPosition(UDim2.new(0.5,0,0.915,0),'Out','Quint',0.8,true)

			wait(0.3)
			TweenService:Create(Notification.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
			TweenService:Create(Notification.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
			wait(0.2)



			-- Requires Graphics Level 8-10
			if getgenv().SecureMode == nil then
				TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
			else
				if not getgenv().SecureMode then
					TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
				else 
					TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				end
			end

			if Rayfield.Name == "Rayfield" then
				neon:BindFrame(Notification.BlurModule, {
					Transparency = 0.98;
					BrickColor = BrickColor.new("Institutional white");
				})
			end

			if not NotificationSettings.Actions then
				wait(NotificationSettings.Duration or NotificationDuration - 0.5)
			else
				wait(0.8)
				TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 132)}):Play()
				wait(0.3)
				for _, Action in ipairs(Notification.Actions:GetChildren()) do
					if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
						TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.2}):Play()
						TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
						wait(0.05)
					end
				end
			end

			repeat wait(0.001) until ActionCompleted

			for _, Action in ipairs(Notification.Actions:GetChildren()) do
				if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
					TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				end
			end

			TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.47, 0,0.234, 0)}):Play()
			TweenService:Create(Notification.Description, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0.528, 0,0.637, 0)}):Play()
			TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 280, 0, 83)}):Play()
			TweenService:Create(Notification.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.6}):Play()

			wait(0.3)
			TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
			TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
			wait(0.4)
			TweenService:Create(Notification, TweenInfo.new(0.9, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 260, 0, 0)}):Play()
			TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			wait(0.2)
			if not getgenv().SecureMode then
				neon:UnbindFrame(Notification.BlurModule)
				blurlight:Destroy()
			end
			wait(0.9)
			Notification:Destroy()
		end)
	end

	function Hide()
		Debounce = true
		RayfieldLibrary:Notify({Title = "Interface Hidden", Content = "The interface has been hidden, you can unhide the interface by tapping K", Duration = 7})
		TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 470, 0, 400)}):Play()
		TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 470, 0, 45)}):Play()
		TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Main.Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Main.Topbar.CornerRepair, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Main.Topbar.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(Topbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		for _, TopbarButton in ipairs(Topbar:GetChildren()) do
			if TopbarButton.ClassName == "ImageButton" then
				TweenService:Create(TopbarButton, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			end
		end
		for _, tabbtn in ipairs(TabList:GetChildren()) do
			if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			end
		end
		for _, tab in ipairs(Elements:GetChildren()) do
			if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
				for _, element in ipairs(tab:GetChildren()) do
					if element.ClassName == "Frame" then
						if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
							if element.Name == "SectionTitle" then
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							else
								TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
								TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							end
							for _, child in ipairs(element:GetChildren()) do
								if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
									child.Visible = false
								end
							end
						end
					end
				end
			end
		end
		wait(0.5)
		Main.Visible = false
		Debounce = false
	end

	function Unhide()
		Debounce = true
		Main.Position = UDim2.new(0.5, 0, 0.5, 0)
		Main.Visible = true
		TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 475)}):Play()
		TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 45)}):Play()
		TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.4}):Play()
		TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Main.Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Main.Topbar.CornerRepair, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Main.Topbar.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		if Minimised then
			spawn(Maximise)
		end
		for _, TopbarButton in ipairs(Topbar:GetChildren()) do
			if TopbarButton.ClassName == "ImageButton" then
				TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
			end
		end
		for _, tabbtn in ipairs(TabList:GetChildren()) do
			if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
				if tostring(Elements.UIPageLayout.CurrentPage) == tabbtn.Title.Text then
					TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
					TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
					TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()
					TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
					TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				else
					TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
					TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
					TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
					TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
					TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end

			end
		end
		for _, tab in ipairs(Elements:GetChildren()) do
			if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
				for _, element in ipairs(tab:GetChildren()) do
					if element.ClassName == "Frame" then
						if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
							if element.Name == "SectionTitle" then
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
							else
								TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
								TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
							end
							for _, child in ipairs(element:GetChildren()) do
								if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
									child.Visible = true
								end
							end
						end
					end
				end
			end
		end
		wait(0.5)
		Minimised = false
		Debounce = false
	end

	function Maximise()
		Debounce = true
		Topbar.ChangeSize.Image = "rbxassetid://"..10137941941


		TweenService:Create(Topbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.4}):Play()
		TweenService:Create(Topbar.CornerRepair, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 475)}):Play()
		TweenService:Create(Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 45)}):Play()
		TabList.Visible = true
		wait(0.2)

		Elements.Visible = true

		for _, tab in ipairs(Elements:GetChildren()) do
			if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
				for _, element in ipairs(tab:GetChildren()) do
					if element.ClassName == "Frame" then
						if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
							if element.Name == "SectionTitle" then
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
							else
								TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
								TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
							end
							for _, child in ipairs(element:GetChildren()) do
								if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
									child.Visible = true
								end
							end
						end
					end
				end
			end
		end


		wait(0.1)

		for _, tabbtn in ipairs(TabList:GetChildren()) do
			if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
				if tostring(Elements.UIPageLayout.CurrentPage) == tabbtn.Title.Text then
					TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
					TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
					TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
					TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()
				else
					TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
					TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
					TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
					TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
					TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end

			end
		end


		wait(0.5)
		Debounce = false
	end

	function Minimise()
		Debounce = true
		Topbar.ChangeSize.Image = "rbxassetid://"..11036884234

		for _, tabbtn in ipairs(TabList:GetChildren()) do
			if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			end
		end

		for _, tab in ipairs(Elements:GetChildren()) do
			if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
				for _, element in ipairs(tab:GetChildren()) do
					if element.ClassName == "Frame" then
						if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
							if element.Name == "SectionTitle" then
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							else
								TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
								TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
								TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							end
							for _, child in ipairs(element:GetChildren()) do
								if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
									child.Visible = false
								end
							end
						end
					end
				end
			end
		end

		TweenService:Create(Topbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
		TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(Topbar.CornerRepair, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 495, 0, 45)}):Play()
		TweenService:Create(Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 495, 0, 45)}):Play()

		wait(0.3)

		Elements.Visible = false
		TabList.Visible = false

		wait(0.2)
		Debounce = false
	end

	function RayfieldLibrary:CreateWindow(Settings)
		local Passthrough = false
		Topbar.Title.Text = Settings.Name
		Main.Size = UDim2.new(0, 450, 0, 260)
		Main.Visible = true
		Main.BackgroundTransparency = 1
		LoadingFrame.Title.TextTransparency = 1
		LoadingFrame.Subtitle.TextTransparency = 1
		Main.Shadow.Image.ImageTransparency = 1
		LoadingFrame.Version.TextTransparency = 1
		LoadingFrame.Title.Text = Settings.LoadingTitle or "Rayfield Interface Suite"
		LoadingFrame.Subtitle.Text = Settings.LoadingSubtitle or "by Sirius"
		if Settings.LoadingTitle ~= "Rayfield Interface Suite" then
			LoadingFrame.Version.Text = "Rayfield UI"
		end
		Topbar.Visible = false
		Elements.Visible = false
		LoadingFrame.Visible = true


		pcall(function()
			if not Settings.ConfigurationSaving.FileName then
				Settings.ConfigurationSaving.FileName = tostring(game.PlaceId)
			end
			if not isfolder(RayfieldFolder.."/".."Configuration Folders") then

			end
			if Settings.ConfigurationSaving.Enabled == nil then
				Settings.ConfigurationSaving.Enabled = false
			end
			CFileName = Settings.ConfigurationSaving.FileName
			ConfigurationFolder = Settings.ConfigurationSaving.FolderName or ConfigurationFolder
			CEnabled = Settings.ConfigurationSaving.Enabled

			if Settings.ConfigurationSaving.Enabled then
				if not isfolder(ConfigurationFolder) then
					makefolder(ConfigurationFolder)
				end	
			end
		end)

		AddDraggingFunctionality(Topbar,Main)

		for _, TabButton in ipairs(TabList:GetChildren()) do
			if TabButton.ClassName == "Frame" and TabButton.Name ~= "Placeholder" then
				TabButton.BackgroundTransparency = 1
				TabButton.Title.TextTransparency = 1
				TabButton.Shadow.ImageTransparency = 1
				TabButton.Image.ImageTransparency = 1
				TabButton.UIStroke.Transparency = 1
			end
		end

		if Settings.Discord then
			if not isfolder(RayfieldFolder.."/Discord Invites") then
				makefolder(RayfieldFolder.."/Discord Invites")
			end
			if not isfile(RayfieldFolder.."/Discord Invites".."/"..Settings.Discord.Invite..ConfigurationExtension) then
				if request then
					request({
						Url = 'http://127.0.0.1:6463/rpc?v=1',
						Method = 'POST',
						Headers = {
							['Content-Type'] = 'application/json',
							Origin = 'https://discord.com'
						},
						Body = HttpService:JSONEncode({
							cmd = 'INVITE_BROWSER',
							nonce = HttpService:GenerateGUID(false),
							args = {code = Settings.Discord.Invite}
						})
					})
				end

				if Settings.Discord.RememberJoins then -- We do logic this way so if the developer changes this setting, the user still won't be prompted, only new users
					writefile(RayfieldFolder.."/Discord Invites".."/"..Settings.Discord.Invite..ConfigurationExtension,"Rayfield RememberJoins is true for this invite, this invite will not ask you to join again")
				end
			else

			end
		end

		if Settings.KeySystem then
			if not Settings.KeySettings then
				Passthrough = true
				return
			end

			if not isfolder(RayfieldFolder.."/Key System") then
				makefolder(RayfieldFolder.."/Key System")
			end

			if typeof(Settings.KeySettings.Key) == "string" then Settings.KeySettings.Key = {Settings.KeySettings.Key} end

			if Settings.KeySettings.GrabKeyFromSite then
				for i, Key in ipairs(Settings.KeySettings.Key) do
					local Success, Response = pcall(function()
						Settings.KeySettings.Key[i] = tostring(game:HttpGet(Key):gsub("[\n\r]", " "))
						Settings.KeySettings.Key[i] = string.gsub(Settings.KeySettings.Key[i], " ", "")
					end)
					if not Success then
						print("Rayfield | "..Key.." Error " ..tostring(Response))
					end
				end
			end

			if not Settings.KeySettings.FileName then
				Settings.KeySettings.FileName = "No file name specified"
			end

			if isfile(RayfieldFolder.."/Key System".."/"..Settings.KeySettings.FileName..ConfigurationExtension) then
				for _, MKey in ipairs(Settings.KeySettings.Key) do
					if string.find(readfile(RayfieldFolder.."/Key System".."/"..Settings.KeySettings.FileName..ConfigurationExtension), MKey) then
						Passthrough = true
					end
				end
			end

			if not Passthrough then
				local AttemptsRemaining = math.random(2,6)
				Rayfield.Enabled = false

				local function keygui()


					local Key = Instance.new("ScreenGui")
					local Main = Instance.new("Frame")
					local Title = Instance.new("TextLabel")
					local UICorner = Instance.new("UICorner")
					local Shadow = Instance.new("Frame")
					local Image = Instance.new("ImageLabel")
					local Subtitle = Instance.new("TextLabel")
					local Input = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local InputBox = Instance.new("TextBox")
					local KeyNote = Instance.new("TextLabel")
					local NoteTitle = Instance.new("TextLabel")
					local NoteMessage = Instance.new("TextLabel")
					local Hide = Instance.new("ImageButton")

					--Properties:

					Key.Name = "Key"
					Key.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
					Key.DisplayOrder = 100
					Key.ResetOnSpawn = false

					Main.Name = "Main"
					Main.Parent = Key
					Main.AnchorPoint = Vector2.new(0.5, 0.5)
					Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Main.BorderSizePixel = 0
					Main.Position = UDim2.new(0.5, 0, 0.5, 0)
					Main.Size = UDim2.new(0, 500, 0, 187)

					Title.Name = "Title"
					Title.Parent = Main
					Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Title.BackgroundTransparency = 1.000
					Title.BorderSizePixel = 0
					Title.Position = UDim2.new(0.0500000007, 0, 0.134099811, 0)
					Title.Size = UDim2.new(0, 200, 0, 16)
					Title.Font = Enum.Font.GothamMedium
					Title.Text = "Epic Hub V3"
					Title.TextColor3 = Color3.fromRGB(240, 240, 240)
					Title.TextScaled = true
					Title.TextSize = 14.000
					Title.TextWrapped = true
					Title.TextXAlignment = Enum.TextXAlignment.Left

					UICorner.CornerRadius = UDim.new(0, 9)
					UICorner.Parent = Main

					Shadow.Name = "Shadow"
					Shadow.Parent = Main
					Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
					Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Shadow.BackgroundTransparency = 1.000
					Shadow.BorderSizePixel = 0
					Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
					Shadow.Size = UDim2.new(1, 35, 1.09625673, 35)
					Shadow.ZIndex = 0

					Image.Name = "Image"
					Image.Parent = Shadow
					Image.AnchorPoint = Vector2.new(0.5, 0.5)
					Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Image.BackgroundTransparency = 1.000
					Image.BorderSizePixel = 0
					Image.Position = UDim2.new(0.5, 0, 0.5, 0)
					Image.Size = UDim2.new(1.60000002, 0, 1.29999995, 0)
					Image.ZIndex = 0
					Image.Image = "rbxassetid://5587865193"
					Image.ImageColor3 = Color3.fromRGB(20, 20, 20)
					Image.ImageTransparency = 0.500

					Subtitle.Name = "Subtitle"
					Subtitle.Parent = Main
					Subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Subtitle.BackgroundTransparency = 1.000
					Subtitle.BorderSizePixel = 0
					Subtitle.Position = UDim2.new(0.0500000007, 0, 0.22243315, 0)
					Subtitle.Size = UDim2.new(0, 200, 0, 13)
					Subtitle.Font = Enum.Font.GothamMedium
					Subtitle.Text = "Key System"
					Subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
					Subtitle.TextScaled = true
					Subtitle.TextSize = 14.000
					Subtitle.TextWrapped = true
					Subtitle.TextXAlignment = Enum.TextXAlignment.Left

					Input.Name = "Input"
					Input.Parent = Main
					Input.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					Input.BorderSizePixel = 0
					Input.Position = UDim2.new(0.0500000007, 0, 0.493475944, 0)
					Input.Size = UDim2.new(0, 206, 0, 35)

					UICorner_2.CornerRadius = UDim.new(0, 6)
					UICorner_2.Parent = Input

					InputBox.Name = "InputBox"
					InputBox.Parent = Input
					InputBox.AnchorPoint = Vector2.new(0.5, 0.5)
					InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					InputBox.BackgroundTransparency = 1.000
					InputBox.BorderSizePixel = 0
					InputBox.Position = UDim2.new(0.517499566, 0, 0.5, 0)
					InputBox.Size = UDim2.new(1, -15, 0, 14)
					InputBox.ClearTextOnFocus = false
					InputBox.Font = Enum.Font.GothamMedium
					InputBox.PlaceholderText = "key"
					InputBox.Text = ""
					InputBox.TextColor3 = Color3.fromRGB(240, 240, 240)
					InputBox.TextScaled = true
					InputBox.TextSize = 14.000
					InputBox.TextWrapped = true
					InputBox.TextXAlignment = Enum.TextXAlignment.Left

					KeyNote.Name = "KeyNote"
					KeyNote.Parent = Main
					KeyNote.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					KeyNote.BackgroundTransparency = 1.000
					KeyNote.BorderSizePixel = 0
					KeyNote.Position = UDim2.new(0.0500000007, 0, 0.388208568, 0)
					KeyNote.Size = UDim2.new(0, 200, 0, 13)
					KeyNote.Font = Enum.Font.GothamMedium
					KeyNote.Text = "Key"
					KeyNote.TextColor3 = Color3.fromRGB(150, 150, 150)
					KeyNote.TextScaled = true
					KeyNote.TextSize = 14.000
					KeyNote.TextWrapped = true
					KeyNote.TextXAlignment = Enum.TextXAlignment.Left

					NoteTitle.Name = "NoteTitle"
					NoteTitle.Parent = Main
					NoteTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					NoteTitle.BackgroundTransparency = 1.000
					NoteTitle.BorderSizePixel = 0
					NoteTitle.Position = UDim2.new(0.537999988, 0, 0.388208568, 0)
					NoteTitle.Size = UDim2.new(0, 200, 0, 13)
					NoteTitle.Font = Enum.Font.GothamMedium
					NoteTitle.Text = "Note"
					NoteTitle.TextColor3 = Color3.fromRGB(150, 150, 150)
					NoteTitle.TextScaled = true
					NoteTitle.TextSize = 14.000
					NoteTitle.TextWrapped = true
					NoteTitle.TextXAlignment = Enum.TextXAlignment.Left

					NoteMessage.Name = "NoteMessage"
					NoteMessage.Parent = Main
					NoteMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					NoteMessage.BackgroundTransparency = 1.000
					NoteMessage.BorderSizePixel = 0
					NoteMessage.Position = UDim2.new(0.537999988, 0, 0.469518661, 0)
					NoteMessage.Size = UDim2.new(0, 200, 0, 39)
					NoteMessage.Font = Enum.Font.GothamMedium
					NoteMessage.Text = "Join our Discord server to get the key! discord.gg/epichub"
					NoteMessage.TextColor3 = Color3.fromRGB(240, 240, 240)
					NoteMessage.TextSize = 14.000
					NoteMessage.TextWrapped = true
					NoteMessage.TextXAlignment = Enum.TextXAlignment.Left
					NoteMessage.TextYAlignment = Enum.TextYAlignment.Top

					Hide.Name = "Hide"
					Hide.Parent = Main
					Hide.AnchorPoint = Vector2.new(0.5, 0.5)
					Hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Hide.BackgroundTransparency = 1.000
					Hide.BorderSizePixel = 0
					Hide.Position = UDim2.new(0.942000031, 0, 0.152406424, 0)
					Hide.Size = UDim2.new(0, 24, 0, 24)
					Hide.ZIndex = 5
					Hide.Image = "http://www.roblox.com/asset/?id=10137832201"
					Hide.ImageColor3 = Color3.fromRGB(240, 240, 240)
					Hide.ImageTransparency = 0.300
					Hide.ScaleType = Enum.ScaleType.Fit
				end
				local KeyUI = keygui()

				if gethui then
					KeyUI.Parent = gethui()
				elseif syn.protect_gui then
					syn.protect_gui(Rayfield)
					KeyUI.Parent = CoreGui
				else
					KeyUI.Parent = CoreGui
				end

				if gethui then
					for _, Interface in ipairs(gethui():GetChildren()) do
						if Interface.Name == KeyUI.Name and Interface ~= KeyUI then
							Interface.Enabled = false
							Interface.Name = "KeyUI-Old"
						end
					end
				else
					for _, Interface in ipairs(CoreGui:GetChildren()) do
						if Interface.Name == KeyUI.Name and Interface ~= KeyUI then
							Interface.Enabled = false
							Interface.Name = "KeyUI-Old"
						end
					end
				end

				local KeyMain = KeyUI.Main
				KeyMain.Title.Text = Settings.KeySettings.Title or Settings.Name
				KeyMain.Subtitle.Text = Settings.KeySettings.Subtitle or "Key System"
				KeyMain.NoteMessage.Text = Settings.KeySettings.Note or "No instructions"

				KeyMain.Size = UDim2.new(0, 467, 0, 175)
				KeyMain.BackgroundTransparency = 1
				KeyMain.Shadow.Image.ImageTransparency = 1
				KeyMain.Title.TextTransparency = 1
				KeyMain.Subtitle.TextTransparency = 1
				KeyMain.KeyNote.TextTransparency = 1
				KeyMain.Input.BackgroundTransparency = 1
				KeyMain.Input.UIStroke.Transparency = 1
				KeyMain.Input.InputBox.TextTransparency = 1
				KeyMain.NoteTitle.TextTransparency = 1
				KeyMain.NoteMessage.TextTransparency = 1
				KeyMain.Hide.ImageTransparency = 1

				TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 187)}):Play()
				TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
				wait(0.05)
				TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				wait(0.05)
				TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				wait(0.05)
				TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				wait(0.15)
				TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 0.3}):Play()


				KeyUI.Main.Input.InputBox.FocusLost:Connect(function()
					if #KeyUI.Main.Input.InputBox.Text == 0 then return end
					local KeyFound = false
					local FoundKey = ''
					for _, MKey in ipairs(Settings.KeySettings.Key) do
						if string.find(KeyMain.Input.InputBox.Text, MKey) then
							KeyFound = true
							FoundKey = MKey
						end
					end
					if KeyFound then 
						TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
						TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
						TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
						TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
						TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
						wait(0.51)
						Passthrough = true
						if Settings.KeySettings.SaveKey then
							if writefile then
								writefile(RayfieldFolder.."/Key System".."/"..Settings.KeySettings.FileName..ConfigurationExtension, FoundKey)
							end
							RayfieldLibrary:Notify({Title = "Key System", Content = "The key for this script has been saved successfully"})
						end
					else
						if AttemptsRemaining == 0 then
							TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
							TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
							TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
							TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
							TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
							wait(0.45)
							game.Players.LocalPlayer:Kick("No Attempts Remaining")
							game:Shutdown()
						end
						KeyMain.Input.InputBox.Text = ""
						AttemptsRemaining = AttemptsRemaining - 1
						TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
						TweenService:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Elastic), {Position = UDim2.new(0.495,0,0.5,0)}):Play()
						wait(0.1)
						TweenService:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Elastic), {Position = UDim2.new(0.505,0,0.5,0)}):Play()
						wait(0.1)
						TweenService:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5,0,0.5,0)}):Play()
						TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 187)}):Play()
					end
				end)

				KeyMain.Hide.MouseButton1Click:Connect(function()
					TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
					TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					wait(0.51)
					RayfieldLibrary:Destroy()
					KeyUI:Destroy()
				end)
			else
				Passthrough = true
			end
		end
		if Settings.KeySystem then
			repeat wait() until Passthrough
		end

		Notifications.Template.Visible = false
		Notifications.Visible = true
		Rayfield.Enabled = true
		wait(0.5)
		TweenService:Create(Main, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.55}):Play()
		wait(0.1)
		TweenService:Create(LoadingFrame.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		wait(0.05)
		TweenService:Create(LoadingFrame.Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		wait(0.05)
		TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()

		Elements.Template.LayoutOrder = 100000
		Elements.Template.Visible = false

		Elements.UIPageLayout.FillDirection = Enum.FillDirection.Horizontal
		TabList.Template.Visible = false

		-- Tab
		local FirstTab = false
		local Window = {}
		function Window:CreateTab(Name,Image)
			local SDone = false
			local TabButton = TabList.Template:Clone()
			TabButton.Name = Name
			TabButton.Title.Text = Name
			TabButton.Parent = TabList
			TabButton.Title.TextWrapped = false
			TabButton.Size = UDim2.new(0, TabButton.Title.TextBounds.X + 30, 0, 30)

			if Image then
				TabButton.Title.AnchorPoint = Vector2.new(0, 0.5)
				TabButton.Title.Position = UDim2.new(0, 37, 0.5, 0)
				TabButton.Image.Image = "rbxassetid://"..Image
				TabButton.Image.Visible = true
				TabButton.Title.TextXAlignment = Enum.TextXAlignment.Left
				TabButton.Size = UDim2.new(0, TabButton.Title.TextBounds.X + 46, 0, 30)
			end

			TabButton.BackgroundTransparency = 1
			TabButton.Title.TextTransparency = 1
			TabButton.Shadow.ImageTransparency = 1
			TabButton.Image.ImageTransparency = 1
			TabButton.UIStroke.Transparency = 1

			TabButton.Visible = true

			-- Create Elements Page
			local TabPage = Elements.Template:Clone()
			TabPage.Name = Name
			TabPage.Visible = true

			TabPage.LayoutOrder = #Elements:GetChildren()

			for _, TemplateElement in ipairs(TabPage:GetChildren()) do
				if TemplateElement.ClassName == "Frame" and TemplateElement.Name ~= "Placeholder" then
					TemplateElement:Destroy()
				end
			end

			TabPage.Parent = Elements
			if not FirstTab then
				Elements.UIPageLayout.Animated = false
				Elements.UIPageLayout:JumpTo(TabPage)
				Elements.UIPageLayout.Animated = true
			end

			if SelectedTheme ~= RayfieldLibrary.Theme.Default then
				TabButton.Shadow.Visible = false
			end
			TabButton.UIStroke.Color = SelectedTheme.TabStroke
			-- Animate
			wait(0.1)
			if FirstTab then
				TabButton.BackgroundColor3 = SelectedTheme.TabBackground
				TabButton.Image.ImageColor3 = SelectedTheme.TabTextColor
				TabButton.Title.TextColor3 = SelectedTheme.TabTextColor
				TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
				TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
				TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
				TweenService:Create(TabButton.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()

				TweenService:Create(TabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
			else
				FirstTab = Name
				TabButton.BackgroundColor3 = SelectedTheme.TabBackgroundSelected
				TabButton.Image.ImageColor3 = SelectedTheme.SelectedTabTextColor
				TabButton.Title.TextColor3 = SelectedTheme.SelectedTabTextColor
				TweenService:Create(TabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()
				TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
				TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			end


			TabButton.Interact.MouseButton1Click:Connect(function()
				if Minimised then return end
				TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(TabButton.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
				TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.TabBackgroundSelected}):Play()
				TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextColor3 = SelectedTheme.SelectedTabTextColor}):Play()
				TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageColor3 = SelectedTheme.SelectedTabTextColor}):Play()
				TweenService:Create(TabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()

				for _, OtherTabButton in ipairs(TabList:GetChildren()) do
					if OtherTabButton.Name ~= "Template" and OtherTabButton.ClassName == "Frame" and OtherTabButton ~= TabButton and OtherTabButton.Name ~= "Placeholder" then
						TweenService:Create(OtherTabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.TabBackground}):Play()
						TweenService:Create(OtherTabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextColor3 = SelectedTheme.TabTextColor}):Play()
						TweenService:Create(OtherTabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageColor3 = SelectedTheme.TabTextColor}):Play()
						TweenService:Create(OtherTabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
						TweenService:Create(OtherTabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
						TweenService:Create(OtherTabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
						TweenService:Create(OtherTabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
						TweenService:Create(OtherTabButton.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end
				end
				if Elements.UIPageLayout.CurrentPage ~= TabPage then
					TweenService:Create(Elements, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 460,0, 330)}):Play()
					Elements.UIPageLayout:JumpTo(TabPage)
					wait(0.2)
					TweenService:Create(Elements, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 475,0, 366)}):Play()
				end

			end)

			local Tab = {}

			-- Button
			function Tab:CreateButton(ButtonSettings)
				local ButtonValue = {}

				local Button = Elements.Template.Button:Clone()
				Button.Name = ButtonSettings.Name
				Button.Title.Text = ButtonSettings.Name
				Button.Visible = true
				Button.Parent = TabPage

				Button.BackgroundTransparency = 1
				Button.UIStroke.Transparency = 1
				Button.Title.TextTransparency = 1

				TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Button.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	


				Button.Interact.MouseButton1Click:Connect(function()
					local Success, Response = pcall(ButtonSettings.Callback)
					if not Success then
						TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						Button.Title.Text = "Callback Error"
						print("Rayfield | "..ButtonSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Button.Title.Text = ButtonSettings.Name
						TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.9}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					else
						SaveConfiguration()
						TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
						TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						wait(0.2)
						TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.9}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end
				end)

				Button.MouseEnter:Connect(function()
					TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.7}):Play()
				end)

				Button.MouseLeave:Connect(function()
					TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.9}):Play()
				end)

				function ButtonValue:Set(NewButton)
					Button.Title.Text = NewButton
					Button.Name = NewButton
				end

				return ButtonValue
			end

			-- ColorPicker
			function Tab:CreateColorPicker(ColorPickerSettings) -- by Throit
				ColorPickerSettings.Type = "ColorPicker"
				local ColorPicker = Elements.Template.ColorPicker:Clone()
				local Background = ColorPicker.CPBackground
				local Display = Background.Display
				local Main = Background.MainCP
				local Slider = ColorPicker.ColorSlider
				ColorPicker.ClipsDescendants = true
				ColorPicker.Name = ColorPickerSettings.Name
				ColorPicker.Title.Text = ColorPickerSettings.Name
				ColorPicker.Visible = true
				ColorPicker.Parent = TabPage
				ColorPicker.Size = UDim2.new(1, -10, 0.028, 35)
				Background.Size = UDim2.new(0, 39, 0, 22)
				Display.BackgroundTransparency = 0
				Main.MainPoint.ImageTransparency = 1
				ColorPicker.Interact.Size = UDim2.new(1, 0, 1, 0)
				ColorPicker.Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
				ColorPicker.RGB.Position = UDim2.new(0, 17, 0, 70)
				ColorPicker.HexInput.Position = UDim2.new(0, 17, 0, 90)
				Main.ImageTransparency = 1
				Background.BackgroundTransparency = 1



				local opened = false 
				local mouse = game.Players.LocalPlayer:GetMouse()
				Main.Image = "http://www.roblox.com/asset/?id=11415645739"
				local mainDragging = false 
				local sliderDragging = false 
				ColorPicker.Interact.MouseButton1Down:Connect(function()
					if not opened then
						opened = true 
						TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0.224, 40)}):Play()
						TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 173, 0, 86)}):Play()
						TweenService:Create(Display, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
						TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.289, 0, 0.5, 0)}):Play()
						TweenService:Create(ColorPicker.RGB, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 40)}):Play()
						TweenService:Create(ColorPicker.HexInput, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 73)}):Play()
						TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0.574, 0, 1, 0)}):Play()
						TweenService:Create(Main.MainPoint, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
						TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 0.1}):Play()
						TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
					else
						opened = false
						TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0.028, 35)}):Play()
						TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 39, 0, 22)}):Play()
						TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(1, 0, 1, 0)}):Play()
						TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
						TweenService:Create(ColorPicker.RGB, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 70)}):Play()
						TweenService:Create(ColorPicker.HexInput, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 90)}):Play()
						TweenService:Create(Display, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Main.MainPoint, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
						TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
						TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					end
				end)

				game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton1 then 
						mainDragging = false
						sliderDragging = false
					end end)
				Main.MouseButton1Down:Connect(function()
					if opened then
						mainDragging = true 
					end
				end)
				Main.MainPoint.MouseButton1Down:Connect(function()
					if opened then
						mainDragging = true 
					end
				end)
				Slider.MouseButton1Down:Connect(function()
					sliderDragging = true 
				end)
				Slider.SliderPoint.MouseButton1Down:Connect(function()
					sliderDragging = true 
				end)
				local h,s,v = ColorPickerSettings.Color:ToHSV()
				local color = Color3.fromHSV(h,s,v) 
				local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
				local function setDisplay()
					--Main
					Main.MainPoint.Position = UDim2.new(s,-Main.MainPoint.AbsoluteSize.X/2,1-v,-Main.MainPoint.AbsoluteSize.Y/2)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
					Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
					Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
					--Slider 
					local x = h * Slider.AbsoluteSize.X
					Slider.SliderPoint.Position = UDim2.new(0,x-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
					Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
					ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
					ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
					hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					ColorPicker.HexInput.InputBox.Text = hex
				end
				setDisplay()
				ColorPicker.HexInput.InputBox.FocusLost:Connect(function()
					if not pcall(function()
							local r, g, b = string.match(ColorPicker.HexInput.InputBox.Text, "^#?(%w%w)(%w%w)(%w%w)$")
							local rgbColor = Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16))
							h,s,v = rgbColor:ToHSV()
							hex = ColorPicker.HexInput.InputBox.Text
							setDisplay()
							ColorPickerSettings.Color = rgbColor
						end) 
					then 
						ColorPicker.HexInput.InputBox.Text = hex 
					end
					pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
					local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					SaveConfiguration()
				end)
				--RGB
				local function rgbBoxes(box,toChange)
					local value = tonumber(box.Text) 
					local color = Color3.fromHSV(h,s,v) 
					local oldR,oldG,oldB = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					local save 
					if toChange == "R" then save = oldR;oldR = value elseif toChange == "G" then save = oldG;oldG = value else save = oldB;oldB = value end
					if value then 
						value = math.clamp(value,0,255)
						h,s,v = Color3.fromRGB(oldR,oldG,oldB):ToHSV()

						setDisplay()
					else 
						box.Text = tostring(save)
					end
					local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					SaveConfiguration()
				end
				ColorPicker.RGB.RInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.RGB.RInput.InputBox,"R")
					pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
				end)
				ColorPicker.RGB.GInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.RGB.GInput.InputBox,"G")
					pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
				end)
				ColorPicker.RGB.BInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.RGB.BInput.InputBox,"B")
					pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
				end)

				game:GetService("RunService").RenderStepped:connect(function()
					if mainDragging then 
						local localX = math.clamp(mouse.X-Main.AbsolutePosition.X,0,Main.AbsoluteSize.X)
						local localY = math.clamp(mouse.Y-Main.AbsolutePosition.Y,0,Main.AbsoluteSize.Y)
						Main.MainPoint.Position = UDim2.new(0,localX-Main.MainPoint.AbsoluteSize.X/2,0,localY-Main.MainPoint.AbsoluteSize.Y/2)
						s = localX / Main.AbsoluteSize.X
						v = 1 - (localY / Main.AbsoluteSize.Y)
						Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
						Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
						Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
						local color = Color3.fromHSV(h,s,v) 
						local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
						ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
						ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
						ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
						ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
						pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
						ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
						SaveConfiguration()
					end
					if sliderDragging then 
						local localX = math.clamp(mouse.X-Slider.AbsolutePosition.X,0,Slider.AbsoluteSize.X)
						h = localX / Slider.AbsoluteSize.X
						Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
						Slider.SliderPoint.Position = UDim2.new(0,localX-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
						Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
						Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
						Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
						local color = Color3.fromHSV(h,s,v) 
						local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
						ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
						ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
						ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
						ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
						pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
						ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
						SaveConfiguration()
					end
				end)

				if Settings.ConfigurationSaving then
					if Settings.ConfigurationSaving.Enabled and ColorPickerSettings.Flag then
						RayfieldLibrary.Flags[ColorPickerSettings.Flag] = ColorPickerSettings
					end
				end

				function ColorPickerSettings:Set(RGBColor)
					ColorPickerSettings.Color = RGBColor
					h,s,v = ColorPickerSettings.Color:ToHSV()
					color = Color3.fromHSV(h,s,v)
					setDisplay()
				end

				return ColorPickerSettings
			end

			-- Section
			function Tab:CreateSection(SectionName)

				local SectionValue = {}

				if SDone then
					local SectionSpace = Elements.Template.SectionSpacing:Clone()
					SectionSpace.Visible = true
					SectionSpace.Parent = TabPage
				end

				local Section = Elements.Template.SectionTitle:Clone()
				Section.Title.Text = SectionName
				Section.Visible = true
				Section.Parent = TabPage

				Section.Title.TextTransparency = 1
				TweenService:Create(Section.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()

				function SectionValue:Set(NewSection)
					Section.Title.Text = NewSection
				end

				SDone = true

				return SectionValue
			end

			-- Label
			function Tab:CreateLabel(LabelText)
				local LabelValue = {}

				local Label = Elements.Template.Label:Clone()
				Label.Title.Text = LabelText
				Label.Visible = true
				Label.Parent = TabPage

				Label.BackgroundTransparency = 1
				Label.UIStroke.Transparency = 1
				Label.Title.TextTransparency = 1

				Label.BackgroundColor3 = SelectedTheme.SecondaryElementBackground
				Label.UIStroke.Color = SelectedTheme.SecondaryElementStroke

				TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Label.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Label.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

				function LabelValue:Set(NewLabel)
					Label.Title.Text = NewLabel
				end

				return LabelValue
			end

			-- Paragraph
			function Tab:CreateParagraph(ParagraphSettings)
				local ParagraphValue = {}

				local Paragraph = Elements.Template.Paragraph:Clone()
				Paragraph.Title.Text = ParagraphSettings.Title
				Paragraph.Content.Text = ParagraphSettings.Content
				Paragraph.Visible = true
				Paragraph.Parent = TabPage

				Paragraph.Content.Size = UDim2.new(0, 438, 0, Paragraph.Content.TextBounds.Y)
				Paragraph.Content.Position = UDim2.new(1, -10, 0.575,0 )
				Paragraph.Size = UDim2.new(1, -10, 0, Paragraph.Content.TextBounds.Y + 40)

				Paragraph.BackgroundTransparency = 1
				Paragraph.UIStroke.Transparency = 1
				Paragraph.Title.TextTransparency = 1
				Paragraph.Content.TextTransparency = 1

				Paragraph.BackgroundColor3 = SelectedTheme.SecondaryElementBackground
				Paragraph.UIStroke.Color = SelectedTheme.SecondaryElementStroke

				TweenService:Create(Paragraph, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Paragraph.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Paragraph.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	
				TweenService:Create(Paragraph.Content, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

				function ParagraphValue:Set(NewParagraphSettings)
					Paragraph.Title.Text = NewParagraphSettings.Title
					Paragraph.Content.Text = NewParagraphSettings.Content
				end

				return ParagraphValue
			end

			-- Input
			function Tab:CreateInput(InputSettings)
				local Input = Elements.Template.Input:Clone()
				Input.Name = InputSettings.Name
				Input.Title.Text = InputSettings.Name
				Input.Visible = true
				Input.Parent = TabPage

				Input.BackgroundTransparency = 1
				Input.UIStroke.Transparency = 1
				Input.Title.TextTransparency = 1

				Input.InputFrame.BackgroundColor3 = SelectedTheme.InputBackground
				Input.InputFrame.UIStroke.Color = SelectedTheme.InputStroke

				TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Input.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

				Input.InputFrame.InputBox.PlaceholderText = InputSettings.PlaceholderText
				Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 24, 0, 30)

				Input.InputFrame.InputBox.FocusLost:Connect(function()


					local Success, Response = pcall(function()
						InputSettings.Callback(Input.InputFrame.InputBox.Text)
					end)
					if not Success then
						TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Input.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						Input.Title.Text = "Callback Error"
						print("Rayfield | "..InputSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Input.Title.Text = InputSettings.Name
						TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Input.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end

					if InputSettings.RemoveTextAfterFocusLost then
						Input.InputFrame.InputBox.Text = ""
					end
					SaveConfiguration()
				end)

				Input.MouseEnter:Connect(function()
					TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
				end)

				Input.MouseLeave:Connect(function()
					TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
				end)

				Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					TweenService:Create(Input.InputFrame, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 24, 0, 30)}):Play()
				end)

				local InputSettings = {}
				function InputSettings:Set(text) --Doesnt fire the event
					Input.InputFrame.InputBox.Text = text
				end
				return InputSettings
			end

			-- Dropdown
			function Tab:CreateDropdown(DropdownSettings)
				local Dropdown = Elements.Template.Dropdown:Clone()
				if string.find(DropdownSettings.Name,"closed") then
					Dropdown.Name = "Dropdown"
				else
					Dropdown.Name = DropdownSettings.Name
				end
				Dropdown.Title.Text = DropdownSettings.Name
				Dropdown.Visible = true
				Dropdown.Parent = TabPage

				Dropdown.List.Visible = false

				if typeof(DropdownSettings.CurrentOption) == "string" then
					DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
				end

				if not DropdownSettings.MultipleOptions then
					DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
				end

				if DropdownSettings.MultipleOptions then
					if #DropdownSettings.CurrentOption == 1 then
						Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
					elseif #DropdownSettings.CurrentOption == 0 then
						Dropdown.Selected.Text = "None"
					else
						Dropdown.Selected.Text = "Various"
					end
				else
					Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
				end


				Dropdown.BackgroundTransparency = 1
				Dropdown.UIStroke.Transparency = 1
				Dropdown.Title.TextTransparency = 1

				Dropdown.Size = UDim2.new(1, -10, 0, 45)

				TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Dropdown.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

				for _, ununusedoption in ipairs(Dropdown.List:GetChildren()) do
					if ununusedoption.ClassName == "Frame" and ununusedoption.Name ~= "Placeholder" then
						ununusedoption:Destroy()
					end
				end

				Dropdown.Toggle.Rotation = 180

				Dropdown.Interact.MouseButton1Click:Connect(function()
					TweenService:Create(Dropdown, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					wait(0.1)
					TweenService:Create(Dropdown, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					if Debounce then return end
					if Dropdown.List.Visible then
						Debounce = true
						TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0, 45)}):Play()
						for _, DropdownOpt in ipairs(Dropdown.List:GetChildren()) do
							if DropdownOpt.ClassName == "Frame" and DropdownOpt.Name ~= "Placeholder" then
								TweenService:Create(DropdownOpt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
								TweenService:Create(DropdownOpt.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
								TweenService:Create(DropdownOpt.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							end
						end
						TweenService:Create(Dropdown.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 1}):Play()
						TweenService:Create(Dropdown.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 180}):Play()	
						wait(0.35)
						Dropdown.List.Visible = false
						Debounce = false
					else
						TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0, 180)}):Play()
						Dropdown.List.Visible = true
						TweenService:Create(Dropdown.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 0.7}):Play()
						TweenService:Create(Dropdown.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 0}):Play()	
						for _, DropdownOpt in ipairs(Dropdown.List:GetChildren()) do
							if DropdownOpt.ClassName == "Frame" and DropdownOpt.Name ~= "Placeholder" then
								TweenService:Create(DropdownOpt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
								TweenService:Create(DropdownOpt.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
								TweenService:Create(DropdownOpt.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
							end
						end
					end
				end)

				Dropdown.MouseEnter:Connect(function()
					if not Dropdown.List.Visible then
						TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					end
				end)

				Dropdown.MouseLeave:Connect(function()
					TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
				end)

				for _, Option in ipairs(DropdownSettings.Options) do
					local DropdownOption = Elements.Template.Dropdown.List.Template:Clone()
					DropdownOption.Name = Option
					DropdownOption.Title.Text = Option
					DropdownOption.Parent = Dropdown.List
					DropdownOption.Visible = true

					if DropdownSettings.CurrentOption == Option then
						DropdownOption.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					end

					DropdownOption.BackgroundTransparency = 1
					DropdownOption.UIStroke.Transparency = 1
					DropdownOption.Title.TextTransparency = 1

					--local Dropdown = Tab:CreateDropdown({
					--	Name = "Dropdown Example",
					--	Options = {"Option 1","Option 2"},
					--	CurrentOption = {"Option 1"},
					--  MultipleOptions = true,
					--	Flag = "Dropdown1",
					--	Callback = function(TableOfOptions)

					--	end,
					--})


					DropdownOption.Interact.ZIndex = 50
					DropdownOption.Interact.MouseButton1Click:Connect(function()
						if not DropdownSettings.MultipleOptions and table.find(DropdownSettings.CurrentOption, Option) then 
							return
						end

						if table.find(DropdownSettings.CurrentOption, Option) then
							table.remove(DropdownSettings.CurrentOption, table.find(DropdownSettings.CurrentOption, Option))
							if DropdownSettings.MultipleOptions then
								if #DropdownSettings.CurrentOption == 1 then
									Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
								elseif #DropdownSettings.CurrentOption == 0 then
									Dropdown.Selected.Text = "None"
								else
									Dropdown.Selected.Text = "Various"
								end
							else
								Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
							end
						else
							if not DropdownSettings.MultipleOptions then
								table.clear(DropdownSettings.CurrentOption)
							end
							table.insert(DropdownSettings.CurrentOption, Option)
							if DropdownSettings.MultipleOptions then
								if #DropdownSettings.CurrentOption == 1 then
									Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
								elseif #DropdownSettings.CurrentOption == 0 then
									Dropdown.Selected.Text = "None"
								else
									Dropdown.Selected.Text = "Various"
								end
							else
								Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
							end
							TweenService:Create(DropdownOption.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							TweenService:Create(DropdownOption, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
							Debounce = true
							wait(0.2)
							TweenService:Create(DropdownOption.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
						end


						local Success, Response = pcall(function()
							DropdownSettings.Callback(DropdownSettings.CurrentOption)
						end)

						if not Success then
							TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							Dropdown.Title.Text = "Callback Error"
							print("Rayfield | "..DropdownSettings.Name.." Callback Error " ..tostring(Response))
							wait(0.5)
							Dropdown.Title.Text = DropdownSettings.Name
							TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
							TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
						end

						for _, droption in ipairs(Dropdown.List:GetChildren()) do
							if droption.ClassName == "Frame" and droption.Name ~= "Placeholder" and not table.find(DropdownSettings.CurrentOption, droption.Name) then
								TweenService:Create(droption, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
							end
						end
						if not DropdownSettings.MultipleOptions then
							wait(0.1)
							TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0, 45)}):Play()
							for _, DropdownOpt in ipairs(Dropdown.List:GetChildren()) do
								if DropdownOpt.ClassName == "Frame" and DropdownOpt.Name ~= "Placeholder" then
									TweenService:Create(DropdownOpt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
									TweenService:Create(DropdownOpt.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
									TweenService:Create(DropdownOpt.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
								end
							end
							TweenService:Create(Dropdown.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 1}):Play()
							TweenService:Create(Dropdown.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 180}):Play()	
							wait(0.35)
							Dropdown.List.Visible = false
						end
						Debounce = false	
						SaveConfiguration()
					end)
				end

				for _, droption in ipairs(Dropdown.List:GetChildren()) do
					if droption.ClassName == "Frame" and droption.Name ~= "Placeholder" then
						if not table.find(DropdownSettings.CurrentOption, droption.Name) then
							droption.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
						else
							droption.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						end
					end
				end

				function DropdownSettings:Set(NewOption)
					DropdownSettings.CurrentOption = NewOption

					if typeof(DropdownSettings.CurrentOption) == "string" then
						DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
					end

					if not DropdownSettings.MultipleOptions then
						DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
					end

					if DropdownSettings.MultipleOptions then
						if #DropdownSettings.CurrentOption == 1 then
							Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
						elseif #DropdownSettings.CurrentOption == 0 then
							Dropdown.Selected.Text = "None"
						else
							Dropdown.Selected.Text = "Various"
						end
					else
						Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
					end


					local Success, Response = pcall(function()
						DropdownSettings.Callback(NewOption)
					end)
					if not Success then
						TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						Dropdown.Title.Text = "Callback Error"
						print("Rayfield | "..DropdownSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Dropdown.Title.Text = DropdownSettings.Name
						TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end

					for _, droption in ipairs(Dropdown.List:GetChildren()) do
						if droption.ClassName == "Frame" and droption.Name ~= "Placeholder" then
							if not table.find(DropdownSettings.CurrentOption, droption.Name) then
								droption.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
							else
								droption.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
							end
						end
					end
					--SaveConfiguration()
				end

				if Settings.ConfigurationSaving then
					if Settings.ConfigurationSaving.Enabled and DropdownSettings.Flag then
						RayfieldLibrary.Flags[DropdownSettings.Flag] = DropdownSettings
					end
				end

				return DropdownSettings
			end

			-- Keybind
			function Tab:CreateKeybind(KeybindSettings)
				local CheckingForKey = false
				local Keybind = Elements.Template.Keybind:Clone()
				Keybind.Name = KeybindSettings.Name
				Keybind.Title.Text = KeybindSettings.Name
				Keybind.Visible = true
				Keybind.Parent = TabPage

				Keybind.BackgroundTransparency = 1
				Keybind.UIStroke.Transparency = 1
				Keybind.Title.TextTransparency = 1

				Keybind.KeybindFrame.BackgroundColor3 = SelectedTheme.InputBackground
				Keybind.KeybindFrame.UIStroke.Color = SelectedTheme.InputStroke

				TweenService:Create(Keybind, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Keybind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Keybind.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

				Keybind.KeybindFrame.KeybindBox.Text = KeybindSettings.CurrentKeybind
				Keybind.KeybindFrame.Size = UDim2.new(0, Keybind.KeybindFrame.KeybindBox.TextBounds.X + 24, 0, 30)

				Keybind.KeybindFrame.KeybindBox.Focused:Connect(function()
					CheckingForKey = true
					Keybind.KeybindFrame.KeybindBox.Text = ""
				end)
				Keybind.KeybindFrame.KeybindBox.FocusLost:Connect(function()
					CheckingForKey = false
					if Keybind.KeybindFrame.KeybindBox.Text == nil or "" then
						Keybind.KeybindFrame.KeybindBox.Text = KeybindSettings.CurrentKeybind
						SaveConfiguration()
					end
				end)

				Keybind.MouseEnter:Connect(function()
					TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
				end)

				Keybind.MouseLeave:Connect(function()
					TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
				end)

				UserInputService.InputBegan:Connect(function(input, processed)

					if CheckingForKey then
						if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode.K then
							local SplitMessage = string.split(tostring(input.KeyCode), ".")
							local NewKeyNoEnum = SplitMessage[3]
							Keybind.KeybindFrame.KeybindBox.Text = tostring(NewKeyNoEnum)
							KeybindSettings.CurrentKeybind = tostring(NewKeyNoEnum)
							Keybind.KeybindFrame.KeybindBox:ReleaseFocus()
							SaveConfiguration()
						end
					elseif KeybindSettings.CurrentKeybind ~= nil and (input.KeyCode == Enum.KeyCode[KeybindSettings.CurrentKeybind] and not processed) then -- Test
						local Held = true
						local Connection
						Connection = input.Changed:Connect(function(prop)
							if prop == "UserInputState" then
								Connection:Disconnect()
								Held = false
							end
						end)

						if not KeybindSettings.HoldToInteract then
							local Success, Response = pcall(KeybindSettings.Callback)
							if not Success then
								TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Keybind.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
								Keybind.Title.Text = "Callback Error"
								print("Rayfield | "..KeybindSettings.Name.." Callback Error " ..tostring(Response))
								wait(0.5)
								Keybind.Title.Text = KeybindSettings.Name
								TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
								TweenService:Create(Keybind.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
							end
						else
							wait(0.25)
							if Held then
								local Loop; Loop = RunService.Stepped:Connect(function()
									if not Held then
										KeybindSettings.Callback(false) -- maybe pcall this
										Loop:Disconnect()
									else
										KeybindSettings.Callback(true) -- maybe pcall this
									end
								end)	
							end
						end
					end
				end)

				Keybind.KeybindFrame.KeybindBox:GetPropertyChangedSignal("Text"):Connect(function()
					TweenService:Create(Keybind.KeybindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Keybind.KeybindFrame.KeybindBox.TextBounds.X + 24, 0, 30)}):Play()
				end)

				function KeybindSettings:Set(NewKeybind)
					Keybind.KeybindFrame.KeybindBox.Text = tostring(NewKeybind)
					KeybindSettings.CurrentKeybind = tostring(NewKeybind)
					Keybind.KeybindFrame.KeybindBox:ReleaseFocus()
					SaveConfiguration()
				end
				if Settings.ConfigurationSaving then
					if Settings.ConfigurationSaving.Enabled and KeybindSettings.Flag then
						RayfieldLibrary.Flags[KeybindSettings.Flag] = KeybindSettings
					end
				end
				return KeybindSettings
			end

			-- Toggle
			function Tab:CreateToggle(ToggleSettings)
				local ToggleValue = {}

				local Toggle = Elements.Template.Toggle:Clone()
				Toggle.Name = ToggleSettings.Name
				Toggle.Title.Text = ToggleSettings.Name
				Toggle.Visible = true
				Toggle.Parent = TabPage

				Toggle.BackgroundTransparency = 1
				Toggle.UIStroke.Transparency = 1
				Toggle.Title.TextTransparency = 1
				Toggle.Switch.BackgroundColor3 = SelectedTheme.ToggleBackground

				if SelectedTheme ~= RayfieldLibrary.Theme.Default then
					Toggle.Switch.Shadow.Visible = false
				end

				TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Toggle.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

				if not ToggleSettings.CurrentValue then
					Toggle.Switch.Indicator.Position = UDim2.new(1, -40, 0.5, 0)
					Toggle.Switch.Indicator.UIStroke.Color = SelectedTheme.ToggleDisabledStroke
					Toggle.Switch.Indicator.BackgroundColor3 = SelectedTheme.ToggleDisabled
					Toggle.Switch.UIStroke.Color = SelectedTheme.ToggleDisabledOuterStroke
				else
					Toggle.Switch.Indicator.Position = UDim2.new(1, -20, 0.5, 0)
					Toggle.Switch.Indicator.UIStroke.Color = SelectedTheme.ToggleEnabledStroke
					Toggle.Switch.Indicator.BackgroundColor3 = SelectedTheme.ToggleEnabled
					Toggle.Switch.UIStroke.Color = SelectedTheme.ToggleEnabledOuterStroke
				end

				Toggle.MouseEnter:Connect(function()
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
				end)

				Toggle.MouseLeave:Connect(function()
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
				end)

				Toggle.Interact.MouseButton1Click:Connect(function()
					if ToggleSettings.CurrentValue then
						ToggleSettings.CurrentValue = false
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -40, 0.5, 0)}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
						TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleDisabledStroke}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleDisabled}):Play()
						TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleDisabledOuterStroke}):Play()
						wait(0.05)
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()
						wait(0.15)
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()	
					else
						ToggleSettings.CurrentValue = true
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -20, 0.5, 0)}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
						TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleEnabledStroke}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleEnabled}):Play()
						TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleEnabledOuterStroke}):Play()
						wait(0.05)
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()	
						wait(0.15)
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()		
					end

					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						Toggle.Title.Text = "Callback Error"
						print("Rayfield | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end


					SaveConfiguration()
				end)

				function ToggleSettings:Set(NewToggleValue)
					if NewToggleValue then
						ToggleSettings.CurrentValue = true
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -20, 0.5, 0)}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
						TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleEnabledStroke}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleEnabled}):Play()
						TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = Color3.fromRGB(100,100,100)}):Play()
						wait(0.05)
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()	
						wait(0.15)
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()	
					else
						ToggleSettings.CurrentValue = false
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -40, 0.5, 0)}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
						TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleDisabledStroke}):Play()
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleDisabled}):Play()
						TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = Color3.fromRGB(65,65,65)}):Play()
						wait(0.05)
						TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()
						wait(0.15)
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()	
					end
					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						Toggle.Title.Text = "Callback Error"
						print("Rayfield | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end
					SaveConfiguration()
				end

				if Settings.ConfigurationSaving then
					if Settings.ConfigurationSaving.Enabled and ToggleSettings.Flag then
						RayfieldLibrary.Flags[ToggleSettings.Flag] = ToggleSettings
					end
				end

				return ToggleSettings
			end

			-- Slider
			function Tab:CreateSlider(SliderSettings)
				local Dragging = false
				local Slider = Elements.Template.Slider:Clone()
				Slider.Name = SliderSettings.Name
				Slider.Title.Text = SliderSettings.Name
				Slider.Visible = true
				Slider.Parent = TabPage

				Slider.BackgroundTransparency = 1
				Slider.UIStroke.Transparency = 1
				Slider.Title.TextTransparency = 1

				if SelectedTheme ~= RayfieldLibrary.Theme.Default then
					Slider.Main.Shadow.Visible = false
				end

				Slider.Main.BackgroundColor3 = SelectedTheme.SliderBackground
				Slider.Main.UIStroke.Color = SelectedTheme.SliderStroke
				Slider.Main.Progress.BackgroundColor3 = SelectedTheme.SliderProgress

				TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				TweenService:Create(Slider.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

				Slider.Main.Progress.Size =	UDim2.new(0, Slider.Main.AbsoluteSize.X * ((SliderSettings.CurrentValue + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (SliderSettings.CurrentValue / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)

				if not SliderSettings.Suffix then
					Slider.Main.Information.Text = tostring(SliderSettings.CurrentValue)
				else
					Slider.Main.Information.Text = tostring(SliderSettings.CurrentValue) .. " " .. SliderSettings.Suffix
				end


				Slider.MouseEnter:Connect(function()
					TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
				end)

				Slider.MouseLeave:Connect(function()
					TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
				end)

				Slider.Main.Interact.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
						Dragging = true 
					end 
				end)
				Slider.Main.Interact.InputEnded:Connect(function(Input) 
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
						Dragging = false 
					end 
				end)

				Slider.Main.Interact.MouseButton1Down:Connect(function(X)
					local Current = Slider.Main.Progress.AbsolutePosition.X + Slider.Main.Progress.AbsoluteSize.X
					local Start = Current
					local Location = X
					local Loop; Loop = RunService.Stepped:Connect(function()
						if Dragging then
							Location = UserInputService:GetMouseLocation().X
							Current = Current + 0.025 * (Location - Start)

							if Location < Slider.Main.AbsolutePosition.X then
								Location = Slider.Main.AbsolutePosition.X
							elseif Location > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
								Location = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
							end

							if Current < Slider.Main.AbsolutePosition.X + 5 then
								Current = Slider.Main.AbsolutePosition.X + 5
							elseif Current > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
								Current = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
							end

							if Current <= Location and (Location - Start) < 0 then
								Start = Location
							elseif Current >= Location and (Location - Start) > 0 then
								Start = Location
							end
							TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Current - Slider.Main.AbsolutePosition.X, 1, 0)}):Play()
							local NewValue = SliderSettings.Range[1] + (Location - Slider.Main.AbsolutePosition.X) / Slider.Main.AbsoluteSize.X * (SliderSettings.Range[2] - SliderSettings.Range[1])

							NewValue = math.floor(NewValue / SliderSettings.Increment + 0.5) * (SliderSettings.Increment * 10000000) / 10000000
							if not SliderSettings.Suffix then
								Slider.Main.Information.Text = tostring(NewValue)
							else
								Slider.Main.Information.Text = tostring(NewValue) .. " " .. SliderSettings.Suffix
							end

							if SliderSettings.CurrentValue ~= NewValue then
								local Success, Response = pcall(function()
									SliderSettings.Callback(NewValue)
								end)
								if not Success then
									TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
									TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
									Slider.Title.Text = "Callback Error"
									print("Rayfield | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
									wait(0.5)
									Slider.Title.Text = SliderSettings.Name
									TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
									TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
								end

								SliderSettings.CurrentValue = NewValue
								SaveConfiguration()
							end
						else
							TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X > 5 and Location - Slider.Main.AbsolutePosition.X or 5, 1, 0)}):Play()
							Loop:Disconnect()
						end
					end)
				end)

				function SliderSettings:Set(NewVal)
					TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Slider.Main.AbsoluteSize.X * ((NewVal + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (NewVal / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)}):Play()
					Slider.Main.Information.Text = tostring(NewVal) .. " " .. SliderSettings.Suffix
					local Success, Response = pcall(function()
						SliderSettings.Callback(NewVal)
					end)
					if not Success then
						TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						Slider.Title.Text = "Callback Error"
						print("Rayfield | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Slider.Title.Text = SliderSettings.Name
						TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end
					SliderSettings.CurrentValue = NewVal
					SaveConfiguration()
				end
				if Settings.ConfigurationSaving then
					if Settings.ConfigurationSaving.Enabled and SliderSettings.Flag then
						RayfieldLibrary.Flags[SliderSettings.Flag] = SliderSettings
					end
				end
				return SliderSettings
			end


			return Tab
		end

		Elements.Visible = true

		wait(0.7)
		TweenService:Create(LoadingFrame.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(LoadingFrame.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.2)
		TweenService:Create(Main, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 475)}):Play()
		TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.4}):Play()

		Topbar.BackgroundTransparency = 1
		Topbar.Divider.Size = UDim2.new(0, 0, 0, 1)
		Topbar.CornerRepair.BackgroundTransparency = 1
		Topbar.Title.TextTransparency = 1
		Topbar.Theme.ImageTransparency = 1
		Topbar.ChangeSize.ImageTransparency = 1
		Topbar.Hide.ImageTransparency = 1

		wait(0.5)
		Topbar.Visible = true
		TweenService:Create(Topbar, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Topbar.CornerRepair, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		wait(0.1)
		TweenService:Create(Topbar.Divider, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(1, 0, 0, 1)}):Play()
		wait(0.1)
		TweenService:Create(Topbar.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		wait(0.1)
		TweenService:Create(Topbar.Theme, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
		wait(0.1)
		TweenService:Create(Topbar.ChangeSize, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
		wait(0.1)
		TweenService:Create(Topbar.Hide, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
		wait(0.3)

		return Window
	end


	function RayfieldLibrary:Destroy()
		Rayfield:Destroy()
	end

	Topbar.ChangeSize.MouseButton1Click:Connect(function()
		if Debounce then return end
		if Minimised then
			Minimised = false
			Maximise()
		else
			Minimised = true
			Minimise()
		end
	end)

	Topbar.Hide.MouseButton1Click:Connect(function()
		if Debounce then return end
		if Hidden then
			Hidden = false
			Minimised = false
			Unhide()
		else
			Hidden = true
			Hide()
		end
	end)

	UserInputService.InputBegan:Connect(function(input, processed)
		if (input.KeyCode == Enum.KeyCode.K and not processed) then
			if Debounce then return end
			if Hidden then
				Hidden = false
				Unhide()
			else
				Hidden = true
				Hide()
			end
		end
	end)

	for _, TopbarButton in ipairs(Topbar:GetChildren()) do
		if TopbarButton.ClassName == "ImageButton" then
			TopbarButton.MouseEnter:Connect(function()
				TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
			end)

			TopbarButton.MouseLeave:Connect(function()
				TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
			end)

			TopbarButton.MouseButton1Click:Connect(function()
				TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
			end)
		end
	end


	function RayfieldLibrary:LoadConfiguration()
		if CEnabled then
			pcall(function()
				if isfile(ConfigurationFolder .. "/" .. CFileName .. ConfigurationExtension) then
					LoadConfiguration(readfile(ConfigurationFolder .. "/" .. CFileName .. ConfigurationExtension))
					RayfieldLibrary:Notify({Title = "Configuration Loaded", Content = "The configuration file for this script has been loaded from a previous session"})
				end
			end)
		end
	end

	task.delay(3.5, RayfieldLibrary.LoadConfiguration, RayfieldLibrary)

	return RayfieldLibrary
end
local Rayfield = rayf()

local Window = Rayfield:CreateWindow({
	Name = "CeleryTest",
	LoadingTitle = "Celery(tm)",
	LoadingSubtitle = "by _t38",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Sigma"
	}
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
