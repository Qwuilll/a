local Player = game:GetService('Players').LocalPlayer

Player.Idled:connect(function()

	game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)	wait(1)

	game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

end)

local CoreGui = game:GetService('CoreGui')

if CoreGui:FindFirstChild('PetSimulatorX') ~= nil then

	CoreGui:FindFirstChild('PetSimulatorX'):Destroy()

end

local PetSimulatorX = Instance.new('ScreenGui', game:GetService('CoreGui'))

PetSimulatorX.Name = 'PetSimulatorX'

PetSimulatorX.ResetOnSpawn = false

local Header = Instance.new('Frame', PetSimulatorX)

Header.Name = 'Header'

Header.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

Header.BorderColor3 = Color3.fromRGB(255, 255, 255)

Header.BorderSizePixel = 0

Header.Position = UDim2.new(0, -255, 0, 10)

Header.Size = UDim2.new(0, 250, 0, 40)

local Frame = Instance.new('Frame', Header)

Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)

Frame.BorderSizePixel = 0

Frame.Position = UDim2.new(0, 0, 0, 40)

Frame.Size = UDim2.new(0, 250, 0, 5)

Frame.Name = 'Header/Background'

local Hide = Instance.new('TextButton', Header)

Hide.Name = 'Hide'

Hide.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

Hide.BorderColor3 = Color3.fromRGB(255, 255, 255)

Hide.BorderSizePixel = 0

Hide.Position = UDim2.new(0, 252, 0, 37)

Hide.Size = UDim2.new(0, 35, 0, 35)

Hide.Font = Enum.Font.Highway

Hide.Text = '<'

Hide.TextColor3 = Color3.fromRGB(255, 255, 255)

Hide.TextSize = 28

local HideToggle = false

Hide.MouseButton1Click:connect(function()

	if HideToggle == false then

		CoreGui.PetSimulatorX.Header:TweenPosition(UDim2.new(0, -250, 0, 10), 'In', 'Back', 0.5)

		wait(0.5)

		CoreGui.PetSimulatorX.Header.Hide.Text = '>'

		CoreGui.PetSimulatorX.Header.Close.BackgroundTransparency = 1

		CoreGui.PetSimulatorX.Header.Hide.BackgroundTransparency = 1

		HideToggle = true

	else

		if HideToggle == true then

			CoreGui.PetSimulatorX.Header:TweenPosition(UDim2.new(0, 5, 0, 10), 'In', 'Back', 0.5)

			wait(0.5)

			CoreGui.PetSimulatorX.Header.Hide.Text = '<'

			CoreGui.PetSimulatorX.Header.Close.BackgroundTransparency = 0

			CoreGui.PetSimulatorX.Header.Hide.BackgroundTransparency = 0

			HideToggle = false

		end

	end

end)

local TextLabel = Instance.new('TextLabel', Header)

TextLabel.Name = 'TextLabel'

TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.BackgroundTransparency = 1

TextLabel.BorderSizePixel = 0

TextLabel.Position = UDim2.new(0, 0, 0, 0)

TextLabel.Size = UDim2.new(0, 250, 0, 40)

TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.Font = Enum.Font.Highway

TextLabel.Text = 'Pet Simulator X Auto Hatch'

TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.TextSize = 23

local Notification = Instance.new('Frame', Header)

Notification.Name = 'Notification'

Notification.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

Notification.BorderColor3 = Color3.fromRGB(255, 255, 255)

Notification.BorderSizePixel = 0

Notification.Position = UDim2.new(0, 0, 0, 45)

Notification.Size = UDim2.new(0, 250, 0, 105)

local Background = Instance.new('Frame', Header)

Background.Name = 'Background'

Background.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

Background.BorderColor3 = Color3.fromRGB(255, 255, 255)

Background.BorderSizePixel = 0

Background.Position = UDim2.new(0, 0, 0, 45)

Background.Size = UDim2.new(0, 250, 0, 70)

local Egg = Instance.new('TextBox',Background)

Egg.Name = "Egg"

Egg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

Egg.BorderColor3 = Color3.fromRGB(255, 255, 255)

Egg.BorderSizePixel = 0

Egg.Position = UDim2.new(0, 0,0, 0)

Egg.Size = UDim2.new(0, 250,0, 35)

Egg.Font = Enum.Font.Highway

Egg.Text = "Titanium"

Egg.TextColor3 = Color3.fromRGB(255, 255, 255)

Egg.TextSize = 16

local HatchRegular = Instance.new('TextButton', Background)

HatchRegular.Name = 'HatchRegular'

HatchRegular.BackgroundColor3 = Color3.fromRGB(45, 45, 205)

HatchRegular.BorderColor3 = Color3.fromRGB(255, 255, 255)

HatchRegular.BorderSizePixel = 0

HatchRegular.Position = UDim2.new(0, 0, 0, 45)

HatchRegular.Size = UDim2.new(0, 125, 0, 50)

HatchRegular.Font = Enum.Font.Highway

HatchRegular.Text = 'Hatch Regular: Off'

HatchRegular.TextColor3 = Color3.fromRGB(5, 5, 5)

HatchRegular.TextSize = 16

local HatchRegularToggle = false

HatchRegular.MouseButton1Click:connect(function()

	if HatchRegularToggle == false then

		HatchRegularToggle = true

		HatchRegular.Text = 'Hatch Regular: On'

	else

		if HatchRegularToggle == true then

			HatchRegularToggle = false

			HatchRegular.Text = 'Hatch Regular: Off'

		end

	end

end)

local HatchGolden = Instance.new('TextButton', Background)

HatchGolden.Name = 'HatchGolden'

HatchGolden.BackgroundColor3 = Color3.fromRGB(250, 253, 15)

HatchGolden.BorderColor3 = Color3.fromRGB(255, 255, 255)

HatchGolden.BorderSizePixel = 0

HatchGolden.Position = UDim2.new(0, 125, 0, 45)

HatchGolden.Size = UDim2.new(0, 125, 0, 50)

HatchGolden.Font = Enum.Font.Highway

HatchGolden.Text = 'Hatch Golden: Off'

HatchGolden.TextColor3 = Color3.fromRGB(5, 5, 5)

HatchGolden.TextSize = 16

local HatchGoldenToggle = false

HatchGolden.MouseButton1Click:connect(function()

	if HatchGoldenToggle == false then

		HatchGoldenToggle = true

		HatchGolden.Text = 'Hatch Golden: On'

	else

		if HatchGoldenToggle == true then

			HatchGoldenToggle = false

			HatchGolden.Text = 'Hatch Golden: Off'

		end

	end

end)

local Close = Instance.new('TextButton', Header)

Close.Name = 'Close'

Close.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

Close.BorderColor3 = Color3.fromRGB(255, 255, 255)

Close.BorderSizePixel = 0

Close.Position = UDim2.new(0, 252, 0, 0)

Close.Size = UDim2.new(0, 35, 0, 35)

Close.Font = Enum.Font.Highway

Close.Text = 'X'

Close.TextColor3 = Color3.fromRGB(255, 255, 255)

Close.TextSize = 28

Close.MouseButton1Click:connect(function()

	HatchRegularToggle = false

	HatchGoldenToggle = false

	CoreGui.PetSimulatorX.Header:TweenPosition(UDim2.new(0, -295, 0, 10), 'In', 'Back', 0.5)

	wait(0.5)

	CoreGui.PetSimulatorX:Destroy()

end)

local Blue = Instance.new('TextButton', Notification)

Blue.Name = 'Blue'

Blue.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

Blue.BorderColor3 = Color3.fromRGB(255, 255, 255)

Blue.BorderSizePixel = 0

Blue.Position = UDim2.new(0, 0, 0, 70)

Blue.Size = UDim2.new(0, 0, 0, 0)

Blue.TextColor3 = Color3.fromRGB(255, 255, 255)

Blue.Text = ''

Blue.TextSize = 16

Blue.MouseButton1Click:connect(function()

	CoreGui.PetSimulatorX.Header.Notification.Blue.Position = UDim2.new(0, 0, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Green.Position = UDim2.new(0, 40, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Position = UDim2.new(0, 75, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Position = UDim2.new(0, 110, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Position = UDim2.new(0, 145, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Red.Position = UDim2.new(0, 180, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Position = UDim2.new(0, 215, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Blue.Size = UDim2.new(0, 40, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Green.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Red.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

	CoreGui.PetSimulatorX.Header.Close.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

	CoreGui.PetSimulatorX.Header.Hide.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

	CoreGui.PetSimulatorX.Header.Notification.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

	CoreGui.PetSimulatorX.Header.Background.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

	CoreGui.PetSimulatorX.Header.Background.Egg.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

	CoreGui.PetSimulatorX.Header.Background.HatchRegular.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

	CoreGui.PetSimulatorX.Header.Background.HatchGolden.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

end)

local Green = Instance.new('TextButton', Notification)

Green.Name = 'Green'

Green.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

Green.BorderColor3 = Color3.fromRGB(255, 255, 255)

Green.BorderSizePixel = 0

Green.Position = UDim2.new(0, 35, 0, 70)

Green.Size = UDim2.new(0, 0, 0, 0)

Green.TextColor3 = Color3.fromRGB(255, 255, 255)

Green.Text = ''

Green.TextSize = 16

Green.MouseButton1Click:connect(function()

	CoreGui.PetSimulatorX.Header.Notification.Blue.Position = UDim2.new(0, 0, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Green.Position = UDim2.new(0, 35, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Position = UDim2.new(0, 75, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Position = UDim2.new(0, 110, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Position = UDim2.new(0, 145, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Red.Position = UDim2.new(0, 180, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Position = UDim2.new(0, 215, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Blue.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Green.Size = UDim2.new(0, 40, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Red.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

	CoreGui.PetSimulatorX.Header.Close.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

	CoreGui.PetSimulatorX.Header.Hide.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

	CoreGui.PetSimulatorX.Header.Notification.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

	CoreGui.PetSimulatorX.Header.Background.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

	CoreGui.PetSimulatorX.Header.Background.Egg.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

	CoreGui.PetSimulatorX.Header.Background.HatchRegular.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

	CoreGui.PetSimulatorX.Header.Background.HatchGolden.BackgroundColor3 = Color3.fromRGB(0, 85, 0)

end)

local Grey = Instance.new('TextButton', Notification)

Grey.Name = 'Grey'

Grey.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

Grey.BorderColor3 = Color3.fromRGB(255, 255, 255)

Grey.BorderSizePixel = 0

Grey.Position = UDim2.new(0, 70, 0, 70)

Grey.Size = UDim2.new(0, 0, 0, 0)

Grey.TextColor3 = Color3.fromRGB(255, 255, 255)

Grey.Text = ''

Grey.TextSize = 16

Grey.MouseButton1Click:connect(function()

	CoreGui.PetSimulatorX.Header.Notification.Blue.Position = UDim2.new(0, 0, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Green.Position = UDim2.new(0, 35, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Position = UDim2.new(0, 70, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Position = UDim2.new(0, 110, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Position = UDim2.new(0, 145, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Red.Position = UDim2.new(0, 180, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Position = UDim2.new(0, 215, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Blue.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Green.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Size = UDim2.new(0, 40, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Red.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	CoreGui.PetSimulatorX.Header.Close.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	CoreGui.PetSimulatorX.Header.Hide.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	CoreGui.PetSimulatorX.Header.Notification.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	CoreGui.PetSimulatorX.Header.Background.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	CoreGui.PetSimulatorX.Header.Background.Egg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	CoreGui.PetSimulatorX.Header.Background.HatchRegular.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	CoreGui.PetSimulatorX.Header.Background.HatchGolden.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

end)

local Pink = Instance.new('TextButton', Notification)

Pink.Name = 'Pink'

Pink.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

Pink.BorderColor3 = Color3.fromRGB(255, 255, 255)

Pink.BorderSizePixel = 0

Pink.Position = UDim2.new(0, 110, 0, 70)

Pink.Size = UDim2.new(0, 0, 0, 0)

Pink.TextColor3 = Color3.fromRGB(255, 255, 255)

Pink.Text = ''

Pink.TextSize = 16

Pink.MouseButton1Click:connect(function()

	CoreGui.PetSimulatorX.Header.Notification.Blue.Position = UDim2.new(0, 0, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Green.Position = UDim2.new(0, 35, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Position = UDim2.new(0, 70, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Position = UDim2.new(0, 105, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Position = UDim2.new(0, 145, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Red.Position = UDim2.new(0, 180, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Position = UDim2.new(0, 215, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Blue.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Green.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Size = UDim2.new(0, 40, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Red.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

	CoreGui.PetSimulatorX.Header.Close.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

	CoreGui.PetSimulatorX.Header.Hide.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

	CoreGui.PetSimulatorX.Header.Notification.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

	CoreGui.PetSimulatorX.Header.Background.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

	CoreGui.PetSimulatorX.Header.Background.Egg.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

	CoreGui.PetSimulatorX.Header.Background.HatchRegular.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

	CoreGui.PetSimulatorX.Header.Background.HatchGolden.BackgroundColor3 = Color3.fromRGB(170, 0, 127)

end)

local Purple = Instance.new('TextButton', Notification)

Purple.Name = 'Purple'

Purple.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

Purple.BorderColor3 = Color3.fromRGB(255, 255, 255)

Purple.BorderSizePixel = 0

Purple.Position = UDim2.new(0, 145, 0, 70)

Purple.Size = UDim2.new(0, 0, 0, 0)

Purple.TextColor3 = Color3.fromRGB(255, 255, 255)

Purple.Text = ''

Purple.TextSize = 16

Purple.MouseButton1Click:connect(function()

	CoreGui.PetSimulatorX.Header.Notification.Blue.Position = UDim2.new(0, 0, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Green.Position = UDim2.new(0, 35, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Position = UDim2.new(0, 70, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Position = UDim2.new(0, 105, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Position = UDim2.new(0, 140, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Red.Position = UDim2.new(0, 180, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Position = UDim2.new(0, 215, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Blue.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Green.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Size = UDim2.new(0, 40, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Red.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

	CoreGui.PetSimulatorX.Header.Close.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

	CoreGui.PetSimulatorX.Header.Hide.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

	CoreGui.PetSimulatorX.Header.Notification.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

	CoreGui.PetSimulatorX.Header.Background.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

	CoreGui.PetSimulatorX.Header.Background.Egg.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

	CoreGui.PetSimulatorX.Header.Background.HatchRegular.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

	CoreGui.PetSimulatorX.Header.Background.HatchGolden.BackgroundColor3 = Color3.fromRGB(170, 0, 255)

end)

local Red = Instance.new('TextButton', Notification)

Red.Name = 'Red'

Red.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

Red.BorderColor3 = Color3.fromRGB(255, 255, 255)

Red.BorderSizePixel = 0

Red.Position = UDim2.new(0, 180, 0, 70)

Red.Size = UDim2.new(0, 0, 0, 0)

Red.TextColor3 = Color3.fromRGB(255, 255, 255)

Red.Text = ''

Red.TextSize = 16

Red.MouseButton1Click:connect(function()

	CoreGui.PetSimulatorX.Header.Notification.Blue.Position = UDim2.new(0, 0, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Green.Position = UDim2.new(0, 35, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Position = UDim2.new(0, 70, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Position = UDim2.new(0, 105, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Position = UDim2.new(0, 140, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Red.Position = UDim2.new(0, 175, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Position = UDim2.new(0, 215, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Blue.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Green.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Red.Size = UDim2.new(0, 40, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

	CoreGui.PetSimulatorX.Header.Close.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

	CoreGui.PetSimulatorX.Header.Hide.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

	CoreGui.PetSimulatorX.Header.Notification.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

	CoreGui.PetSimulatorX.Header.Background.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

	CoreGui.PetSimulatorX.Header.Background.Egg.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

	CoreGui.PetSimulatorX.Header.Background.HatchRegular.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

	CoreGui.PetSimulatorX.Header.Background.HatchGolden.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

end)

local Yellow = Instance.new('TextButton', Notification)

Yellow.Name = 'Yellow'

Yellow.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

Yellow.BorderColor3 = Color3.fromRGB(255, 255, 255)

Yellow.BorderSizePixel = 0

Yellow.Position = UDim2.new(0, 215, 0, 70)

Yellow.Size = UDim2.new(0, 0, 0, 0)

Yellow.TextColor3 = Color3.fromRGB(255, 255, 255)

Yellow.Text = ''

Yellow.TextSize = 16

Yellow.MouseButton1Click:connect(function()

	CoreGui.PetSimulatorX.Header.Notification.Blue.Position = UDim2.new(0, 0, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Green.Position = UDim2.new(0, 35, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Position = UDim2.new(0, 70, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Position = UDim2.new(0, 105, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Position = UDim2.new(0, 140, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Red.Position = UDim2.new(0, 175, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Position = UDim2.new(0, 210, 0, 70)

	CoreGui.PetSimulatorX.Header.Notification.Blue.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Green.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Grey.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Pink.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Purple.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Red.Size = UDim2.new(0, 35, 0, 35)

	CoreGui.PetSimulatorX.Header.Notification.Yellow.Size = UDim2.new(0, 40, 0, 35)

	CoreGui.PetSimulatorX.Header.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

	CoreGui.PetSimulatorX.Header.Close.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

	CoreGui.PetSimulatorX.Header.Hide.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

	CoreGui.PetSimulatorX.Header.Notification.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

	CoreGui.PetSimulatorX.Header.Background.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

	CoreGui.PetSimulatorX.Header.Background.Egg.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

	CoreGui.PetSimulatorX.Header.Background.HatchRegular.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

	CoreGui.PetSimulatorX.Header.Background.HatchGolden.BackgroundColor3 = Color3.fromRGB(200, 200, 0)

end)

CoreGui.PetSimulatorX.Header:TweenPosition(UDim2.new(0, 5, 0, 10), 'In', 'Back', 0.5)

while true do

	local Word = Egg.Text

	local Split = string.split(Word, ' ')

	for i, v in pairs(Split) do

		local First = v:sub(1, 1)

		local Rest = v:sub(2)

		Split[i] = First:upper().. Rest:lower()

	end

	local Result = table.concat(Split, ' ')

	if HatchRegularToggle == true then

		game:GetService('Workspace')["__THINGS"]["__REMOTES"]["buy egg"]:InvokeServer({Result.. ' Egg', true})

	end

	if HatchGoldenToggle == true then

		game:GetService('Workspace')["__THINGS"]["__REMOTES"]["buy egg"]:InvokeServer({'Golden '.. Result.. ' Egg', true})

	end

	wait()

end

cal First = v:sub(1, 1)

		local Rest = v:sub(2)

		Split[i] = First:upper().. Rest:lower()

	end

	local Result = table.concat(Split, ' ')

	if HatchRegularToggle == true then

		game:GetService('Workspace')["__THINGS"]["__REMOTES"]["buy egg"]:InvokeServer({Result.. ' Egg', Triple})

	end

	if HatchGoldenToggle == true then

		game:GetService('Workspace')["__THINGS"]["__REMOTES"]["buy egg"]:InvokeServer({'Golden '.. Result.. ' Egg', Triple})

	end

	wait()

end
