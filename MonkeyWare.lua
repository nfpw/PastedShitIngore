local Library = {}

Library.Tween = game:GetService("TweenService")
Library.Mouse = game.Players.LocalPlayer:GetMouse()
Library.GUITarget = game.Players.LocalPlayer.PlayerGui
local UserInputService = game:GetService("UserInputService")

function Library:Main()
	if Library.GUITarget:FindFirstChild("rIMG") then
		Library.GUITarget.rIMG:Destroy()
	end
	
	local UILibrary = Instance.new("ScreenGui")
	UILibrary.Name = "rIMG"
	UILibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local UIScale = Instance.new("UIScale")
	UIScale.Parent = UILibrary

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.ZIndex = 0
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.Size = UDim2.new(1, 0, 1, 0)
	Main.BackgroundTransparency = 1
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	Main.Parent = UILibrary

	UILibrary.Parent = Library.GUITarget
	
	local MainFunctions = {}
	
	function MainFunctions:Window(Prop)
		Prop.Size = Prop.Size or UDim2.new(0, 300, 0, 30)
		local Window = Instance.new("Frame")
		Window.Name = "Window" .. Prop.Name
		Window.ZIndex = 2
		Window.Size = Prop.Size or UDim2.new(0, 300, 0, 30)
		Window.Draggable = true
		Window.ClipsDescendants = true
		Window.Position = UDim2.new(0, 10, 0, 10)
		Window.Active = true
		Window.BorderSizePixel = 0
		Window.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

		local Header = Instance.new("Frame")
		Header.Name = "Header"
		Header.ZIndex = 2
		Header.Size = UDim2.new(1, 0, 0, 30)
		Header.BorderSizePixel = 0
		Header.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
		Header.Parent = Window

		local UIGradient = Instance.new("UIGradient")
		UIGradient.Rotation = 90
		UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))})
		UIGradient.Parent = Header

		local WindowTitle = Instance.new("TextLabel")
		WindowTitle.Name = "WindowTitle"
		WindowTitle.LayoutOrder = 2
		WindowTitle.AnchorPoint = Vector2.new(0, 0.5)
		WindowTitle.Size = UDim2.new(0, 200, 1, 0)
		WindowTitle.BackgroundTransparency = 1
		WindowTitle.Position = UDim2.new(0, 10, 0.5, 0)
		WindowTitle.BorderSizePixel = 0
		WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		WindowTitle.FontSize = Enum.FontSize.Size14
		WindowTitle.TextSize = 14
		WindowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		WindowTitle.Text = Prop.Name
		WindowTitle.Font = Enum.Font.GothamBold
		WindowTitle.TextXAlignment = Enum.TextXAlignment.Left
		WindowTitle.Parent = Header

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 6)
		UICorner.Parent = Header

		local Fix = Instance.new("Frame")
		Fix.Name = "Fix"
		Fix.AnchorPoint = Vector2.new(0.5, 1)
		Fix.Size = UDim2.new(1, 0, 0, 5)
		Fix.Position = UDim2.new(0.5, 0, 1, 0)
		Fix.BorderSizePixel = 0
		Fix.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
		Fix.Parent = Header

		local Button = Instance.new("ImageLabel")
		Button.Name = "Button"
		Button.AnchorPoint = Vector2.new(1, 0.5)
		Button.Size = UDim2.new(0, 15, 0, 15)
		Button.BackgroundTransparency = 1
		Button.Position = UDim2.new(1, -10, 0.5, 0)
		Button.BorderSizePixel = 0
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.Image = "rbxassetid://7072706663"
		Button.Parent = Header

		local UICorner1 = Instance.new("UICorner")
		UICorner1.CornerRadius = UDim.new(0, 6)
		UICorner1.Parent = Window

		local HeadTab = Instance.new("ScrollingFrame")
		HeadTab.Name = "HeadTab"
		HeadTab.Selectable = false
		HeadTab.AnchorPoint = Vector2.new(0.5, 0)
		HeadTab.Size = UDim2.new(1, -20, 0, 25)
		HeadTab.BackgroundTransparency = 1
		HeadTab.Position = UDim2.new(0.5, 0, 0, 40)
		HeadTab.BorderSizePixel = 0
		HeadTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		HeadTab.AutomaticCanvasSize = Enum.AutomaticSize.X
		HeadTab.ScrollingDirection = Enum.ScrollingDirection.X
		HeadTab.CanvasSize = UDim2.new(0, 0, 0, 0)
		HeadTab.ScrollBarImageTransparency = 1
		HeadTab.ScrollBarThickness = 0
		HeadTab.Parent = Window

		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
		UIListLayout.Parent = HeadTab

		local Contents = Instance.new("Frame")
		Contents.Name = "Contents"
		Contents.ZIndex = 2
		Contents.AnchorPoint = Vector2.new(0.5, 0)
		Contents.Size = UDim2.new(1, -20, 1, -85)
		Contents.ClipsDescendants = true
		Contents.BackgroundTransparency = 1
		Contents.Position = UDim2.new(0.5, 0, 0, 75)
		Contents.BorderSizePixel = 0
		Contents.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Contents.Parent = Window

		local UIPadding = Instance.new("UIPadding")
		UIPadding.PaddingTop = UDim.new(0, 10)
		UIPadding.PaddingBottom = UDim.new(0, 10)
		UIPadding.Parent = Contents

		local UIPageLayout = Instance.new("UIPageLayout")
		UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIPageLayout.TouchInputEnabled = false
		UIPageLayout.TweenTime = 0.25
		UIPageLayout.Padding = UDim.new(0, 10)
		UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
		UIPageLayout.GamepadInputEnabled = false
		UIPageLayout.ScrollWheelInputEnabled = false
		UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
		UIPageLayout.Parent = Contents

		local Resizer = Instance.new("ImageButton")
		Resizer.Name = "Resizer"
		Resizer.ZIndex = 100
		Resizer.AnchorPoint = Vector2.new(1, 1)
		Resizer.Size = UDim2.new(0, 20, 0, 20)
		Resizer.BackgroundTransparency = 1
		Resizer.Position = UDim2.new(1, 0, 1, 0)
		Resizer.BorderSizePixel = 0
		Resizer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Resizer.ImageTransparency = 1
		Resizer.Image = "rbxassetid://0"
		Resizer.Parent = Window
		
		local ButtonArrow = Instance.new("ImageButton")
		ButtonArrow.Name = "BigButton"
		ButtonArrow.ZIndex = 100
		ButtonArrow.AnchorPoint = Vector2.new(0.5, 0.5)
		ButtonArrow.Size = UDim2.new(0, 50, 0, 50)
		ButtonArrow.BackgroundTransparency = 1
		ButtonArrow.Position = UDim2.new(0.5, 0, 0.5, 0)
		ButtonArrow.BorderSizePixel = 0
		ButtonArrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonArrow.ImageTransparency = 1
		ButtonArrow.Image = "rbxassetid://0"
		ButtonArrow.Parent = Button

		local ViewportSize = workspace.CurrentCamera.ViewportSize

		local onMove
		
		local OldWindowSize = UDim2.fromOffset(Window.Size.X.Offset, (UIPageLayout.CurrentPage ~= nil and UIPageLayout.CurrentPage.AbsoluteCanvasSize.Y or 210) + 90)

		Resizer.InputBegan:Connect(function(inputCause)
			if inputCause.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end

			if onMove then
				onMove:Disconnect()
			end

			local dragOrigin = Vector2.new(Library.Mouse.X, Library.Mouse.Y)
			local sizeOrigin = Window.AbsoluteSize

			onMove = Library.Mouse.Move:Connect(function()
				local newMouseSize = Vector2.new(Library.Mouse.X - dragOrigin.X, Library.Mouse.Y - dragOrigin.Y)

				local newSize = sizeOrigin + newMouseSize

				local sx = math.clamp(newSize.X, Prop.Size.X.Offset, ViewportSize.X)
				local sy = math.clamp(newSize.Y, (UIPageLayout.CurrentPage ~= nil and UIPageLayout.CurrentPage.AbsoluteCanvasSize.Y or 210) + 90, ViewportSize.Y)

				Window.Size = UDim2.fromOffset(sx, sy)
				
				OldWindowSize = Window.Size
			end)
		end)

		Resizer.InputEnded:Connect(function(inputCause)
			if inputCause.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end

			if onMove then
				onMove:Disconnect()
			end
		end)
		
		ButtonArrow.MouseButton1Click:Connect(function()
			if Button.Rotation == 0 then
				
				
				Library.Tween:Create(Button, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Rotation = 180}):Play()
				Library.Tween:Create(Window, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(OldWindowSize.X.Offset, OldWindowSize.Y.Offset)}):Play()
			else
				Library.Tween:Create(Button, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Rotation = 0}):Play()
				Library.Tween:Create(Window, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(OldWindowSize.X.Offset, 30)}):Play()
			end
		end)

		local LineSeparate = Instance.new("Frame")
		LineSeparate.Name = "LineSeparate"
		LineSeparate.Size = UDim2.new(1, 0, 0, 1)
		LineSeparate.BackgroundTransparency = 0.85
		LineSeparate.Position = UDim2.new(0, 0, 0, 75)
		LineSeparate.BorderSizePixel = 0
		LineSeparate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LineSeparate.Parent = Window

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Transparency = 0.95
		UIStroke.Thickness = 2
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.Parent = Window

		Window.Parent = Main
		
		local WindowFunctions = {}
		
		function WindowFunctions:Tab(Prop)
			Prop.Name = Prop.Name or "Unknown"
			
			local In = Instance.new("ScrollingFrame")
			In.Name = "In" .. Prop.Name
			In.Selectable = false
			In.ZIndex = 2
			In.AnchorPoint = Vector2.new(0.5, 0)
			In.Size = UDim2.new(1, 0, 1, 10)
			In.ClipsDescendants = false
			In.BackgroundTransparency = 1
			In.Position = UDim2.new(0.5, 0, 0, 0)
			In.BorderSizePixel = 0
			In.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			In.AutomaticCanvasSize = Enum.AutomaticSize.XY
			In.CanvasSize = UDim2.new(0, 0, 0, 0)
			In.ScrollBarImageTransparency = 1
			In.ScrollBarThickness = 0

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(0, 6)
			UICorner.Parent = In

			local UIListLayout = Instance.new("UIListLayout")
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			UIListLayout.Parent = In

			In.Parent = Contents
			
			local TabButton = Instance.new("TextButton")
			TabButton.Name = "TabButton" .. Prop.Name
			TabButton.ZIndex = 0
			TabButton.AutomaticSize = Enum.AutomaticSize.X
			TabButton.Size = UDim2.new(0, 0, 1, 0)
			TabButton.BackgroundTransparency = 0.5
			TabButton.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
			TabButton.FontSize = Enum.FontSize.Size14
			TabButton.TextSize = 14
			TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TabButton.Text = Prop.Name
			TabButton.Font = Enum.Font.Gotham

			local UIGradient = Instance.new("UIGradient")
			UIGradient.Rotation = 90
			UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))})
			UIGradient.Parent = TabButton

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(0, 6)
			UICorner.Parent = TabButton

			local UIPadding = Instance.new("UIPadding")
			UIPadding.PaddingLeft = UDim.new(0, 10)
			UIPadding.PaddingRight = UDim.new(0, 10)
			UIPadding.Parent = TabButton

			TabButton.Parent = HeadTab
			
			TabButton.MouseButton1Click:Connect(function()
				UIPageLayout:JumpTo(In)
				
				for _, TButton in pairs(HeadTab:GetChildren()) do
					if TButton:IsA("TextButton") and TButton ~= TabButton then
						TButton.BackgroundTransparency = 0.5
					end
				end
				
				TabButton.BackgroundTransparency = 0
			end)
			
			local TabFunctions = {}
			
			function TabFunctions:Label(Prop)
				Prop.Name = Prop.Name or "Unknown"
				Prop.Size = Prop.Size or UDim2.new(1, 0, 0, 30)
				
				local Label = Instance.new("TextLabel")
				Label.Name = "Label" .. Prop.Name
				Label.Size = Prop.Size
				Label.BorderSizePixel = 0
				Label.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Label.FontSize = Enum.FontSize.Size18
				Label.TextTruncate = Enum.TextTruncate.AtEnd
				Label.TextSize = 15
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.Text = Prop.Name
				Label.Font = Enum.Font.Gotham

				local UIGradient = Instance.new("UIGradient")
				UIGradient.Rotation = 90
				UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))})
				UIGradient.Parent = Label

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = Label
				
				Label.Parent = In
			end
			
			function TabFunctions:Button(Prop)
				Prop.Name = Prop.Name or "Unknown"
				Prop.Size = Prop.Size or UDim2.new(1, 0, 0, 30)
				Prop.Callback = Prop.Callback or function() end
				
				local Button = Instance.new("TextButton")
				Button.Name = "Button" .. Prop.Name
				Button.Selectable = false
				Button.Size = Prop.Size
				Button.Active = false
				Button.BorderSizePixel = 0
				Button.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Button.FontSize = Enum.FontSize.Size18
				Button.TextTruncate = Enum.TextTruncate.AtEnd
				Button.TextSize = 15
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.Text = Prop.Name
				Button.Font = Enum.Font.Gotham

				local UIGradient = Instance.new("UIGradient")
				UIGradient.Rotation = 90
				UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))})
				UIGradient.Parent = Button

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = Button
				
				Button.MouseButton1Click:Connect(Prop.Callback)

				Button.Parent = In
			end
			
			function TabFunctions:Toggle(Prop)
				Prop.Name = Prop.Name or "Unknown"
				Prop.Default = Prop.Default or false
				Prop.Callback = Prop.Callback or function() end
				
				local Toggle = Instance.new("TextLabel")
				Toggle.Name = "Toggle"
				Toggle.AutomaticSize = Enum.AutomaticSize.Y
				Toggle.Size = UDim2.new(1, 0, 0, 30)
				Toggle.BackgroundTransparency = 1
				Toggle.BorderSizePixel = 0
				Toggle.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Toggle.FontSize = Enum.FontSize.Size18
				Toggle.TextTruncate = Enum.TextTruncate.AtEnd
				Toggle.TextSize = 15
				Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.Text = Prop.Name
				Toggle.Font = Enum.Font.Gotham
				Toggle.TextXAlignment = Enum.TextXAlignment.Left

				local UIGradient = Instance.new("UIGradient")
				UIGradient.Rotation = 90
				UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))})
				UIGradient.Parent = Toggle

				local UIPadding = Instance.new("UIPadding")
				UIPadding.PaddingLeft = UDim.new(0, 5)
				UIPadding.Parent = Toggle

				local Button = Instance.new("Frame")
				Button.Name = "Button"
				Button.Selectable = true
				Button.AnchorPoint = Vector2.new(1, 0.5)
				Button.Size = UDim2.new(0, 15, 0, 15)
				Button.BackgroundTransparency = 1
				Button.Position = UDim2.new(1, -5, 0.5, 0)
				Button.Active = true
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.Parent = Toggle

				local UIStroke = Instance.new("UIStroke")
				UIStroke.Transparency = 0.75
				UIStroke.Color = Color3.fromRGB(255, 255, 255)
				UIStroke.Parent = Button

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = Button

				local Checkmark = Instance.new("ImageButton")
				Checkmark.Name = "Checkmark"
				Checkmark.AnchorPoint = Vector2.new(0.5, 0.5)
				Checkmark.Size = UDim2.new(1, -3, 1, -3)
				Checkmark.BackgroundTransparency = 1
				Checkmark.Position = UDim2.new(0.5, 0, 0.5, 0)
				Checkmark.BorderSizePixel = 0
				Checkmark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Checkmark.ImageTransparency = 1
				Checkmark.Image = "rbxassetid://7072706620"
				Checkmark.Parent = Button

				local LocalScript = Instance.new("LocalScript")
				LocalScript.Parent = Checkmark

				local UICorner1 = Instance.new("UICorner")
				UICorner1.CornerRadius = UDim.new(0, 6)
				UICorner1.Parent = Toggle

				Checkmark.MouseButton1Click:Connect(function()
					Checkmark.ImageTransparency = Checkmark.ImageTransparency == 1 and 0 or 1
					
					if Checkmark.ImageTransparency == 1 then
						Prop.Callback(false)
					else
						Prop.Callback(true)
					end
				end)
				
				Toggle.Parent = In
			end
			
			function TabFunctions:Textbox(Prop)
				Prop.Name = Prop.Name or "Unknown"
				Prop.Default = Prop.Default or "Text"
				Prop.Placeholder = Prop.Placeholder or "Text"
				Prop.Callback = Prop.Callback or function() end
				
				local Textbox = Instance.new("Frame")
				Textbox.Name = "Textbox" .. Prop.Name
				Textbox.Size = UDim2.new(1, 0, 0, 30)
				Textbox.BackgroundTransparency = 1
				Textbox.BorderSizePixel = 0
				Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				local Text = Instance.new("TextLabel")
				Text.Name = "Text"
				Text.AutomaticSize = Enum.AutomaticSize.Y
				Text.Size = UDim2.new(0.5, 0, 0, 30)
				Text.BackgroundTransparency = 1
				Text.BorderSizePixel = 0
				Text.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Text.FontSize = Enum.FontSize.Size18
				Text.TextTruncate = Enum.TextTruncate.AtEnd
				Text.TextSize = 15
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.Text = Prop.Name
				Text.TextWrapped = true
				Text.Font = Enum.Font.Gotham
				Text.TextWrap = true
				Text.TextXAlignment = Enum.TextXAlignment.Left
				Text.Parent = Textbox

				local UIPadding = Instance.new("UIPadding")
				UIPadding.PaddingBottom = UDim.new(0, 5)
				UIPadding.PaddingLeft = UDim.new(0, 5)
				UIPadding.PaddingRight = UDim.new(0, 5)
				UIPadding.Parent = Textbox

				local Box = Instance.new("TextBox")
				Box.Name = "Box"
				Box.Selectable = false
				Box.AnchorPoint = Vector2.new(1, 0.5)
				Box.AutomaticSize = Enum.AutomaticSize.X
				Box.Size = UDim2.new(0, 0, 0, 25)
				Box.BackgroundTransparency = 0.95
				Box.Position = UDim2.new(1, 0, 0.5, 0)
				Box.Active = false
				Box.BorderSizePixel = 0
				Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Box.FontSize = Enum.FontSize.Size14
				Box.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
				Box.TextSize = 14
				Box.TextColor3 = Color3.fromRGB(255, 255, 255)
				Box.TextTransparency = 0.5
				Box.Text = Prop.Default
				Box.PlaceholderText = Prop.Placeholder
				Box.Font = Enum.Font.Gotham
				Box.TextXAlignment = Enum.TextXAlignment.Right
				Box.Parent = Textbox

				local UIPadding1 = Instance.new("UIPadding")
				UIPadding1.PaddingLeft = UDim.new(0, 10)
				UIPadding1.PaddingRight = UDim.new(0, 10)
				UIPadding1.Parent = Box

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = Box

				local UIStroke = Instance.new("UIStroke")
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Transparency = 0.85
				UIStroke.Color = Color3.fromRGB(255, 255, 255)
				UIStroke.Parent = Box
				
				Box.FocusLost:Connect(function()
					Prop.Callback(Box.Text)
				end)
				
				Textbox.Parent = In
			end
			
			function TabFunctions:Dropdown(Prop)
				Prop.Name = Prop.Name or "Unknown"
				Prop.List = Prop.List or {"None"}
				Prop.Default = Prop.Default or Prop.List[1]
				Prop.Callback = Prop.Callback or function() end
				
				local Dropdown = Instance.new("Frame")
				Dropdown.Name = "Dropdown" .. Prop.Name
				Dropdown.Size = UDim2.new(1, 0, 0, 30)
				Dropdown.BackgroundTransparency = 1
				Dropdown.BorderSizePixel = 0
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				local Text = Instance.new("TextLabel")
				Text.Name = "Text"
				Text.AutomaticSize = Enum.AutomaticSize.Y
				Text.Size = UDim2.new(0.5, 0, 0, 30)
				Text.BackgroundTransparency = 1
				Text.BorderSizePixel = 0
				Text.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Text.FontSize = Enum.FontSize.Size18
				Text.TextTruncate = Enum.TextTruncate.AtEnd
				Text.TextSize = 15
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.Text = Prop.Name
				Text.TextWrapped = true
				Text.Font = Enum.Font.Gotham
				Text.TextWrap = true
				Text.TextXAlignment = Enum.TextXAlignment.Left
				Text.Parent = Dropdown

				local UIPadding = Instance.new("UIPadding")
				UIPadding.PaddingBottom = UDim.new(0, 5)
				UIPadding.PaddingLeft = UDim.new(0, 5)
				UIPadding.PaddingRight = UDim.new(0, 5)
				UIPadding.Parent = Dropdown

				local Selection = Instance.new("Frame")
				Selection.Name = "Selection"
				Selection.AnchorPoint = Vector2.new(1, 0)
				Selection.Size = UDim2.new(0.5, 0, 0, 20)
				Selection.BackgroundTransparency = 1
				Selection.Position = UDim2.new(1, 0, 0, 5)
				Selection.BorderSizePixel = 0
				Selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Selection.Parent = Dropdown

				local UIStroke = Instance.new("UIStroke")
				UIStroke.Transparency = 0.95
				UIStroke.Thickness = 2
				UIStroke.Color = Color3.fromRGB(255, 255, 255)
				UIStroke.Parent = Selection

				local Opener = Instance.new("TextButton")
				Opener.Name = "Opener"
				Opener.Selectable = false
				Opener.AnchorPoint = Vector2.new(1, 0)
				Opener.Size = UDim2.new(1, 0, 0, 20)
				Opener.BackgroundTransparency = 1
				Opener.Position = UDim2.new(1, 0, 0, 0)
				Opener.Active = false
				Opener.BorderSizePixel = 0
				Opener.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Opener.FontSize = Enum.FontSize.Size14
				Opener.TextTruncate = Enum.TextTruncate.AtEnd
				Opener.TextSize = 14
				Opener.TextColor3 = Color3.fromRGB(255, 255, 255)
				Opener.Text = "Select"
				Opener.Font = Enum.Font.Gotham
				Opener.TextXAlignment = Enum.TextXAlignment.Left
				Opener.Parent = Selection

				local UIPadding1 = Instance.new("UIPadding")
				UIPadding1.PaddingLeft = UDim.new(0, 5)
				UIPadding1.PaddingRight = UDim.new(0, 5)
				UIPadding1.Parent = Opener

				local Arrow = Instance.new("ImageLabel")
				Arrow.Name = "Arrow"
				Arrow.AnchorPoint = Vector2.new(1, 0.5)
				Arrow.Size = UDim2.new(0, 15, 0, 15)
				Arrow.BackgroundTransparency = 1
				Arrow.Position = UDim2.new(1, 0, 0.5, 0)
				Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Arrow.Image = "rbxassetid://7072706663"
				Arrow.Parent = Opener

				local LocalScript = Instance.new("LocalScript")
				LocalScript.Parent = Opener

				local Inner = Instance.new("Frame")
				Inner.Name = "In"
				Inner.Size = UDim2.new(1, 0, 0, 0)
				Inner.ClipsDescendants = true
				Inner.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Inner.BackgroundTransparency = 1
				Inner.Position = UDim2.new(0, 0, 0, 20)
				Inner.BorderSizePixel = 0
				Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Inner.Parent = Selection

				local UIListLayout = Instance.new("UIListLayout")
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Parent = Inner

				local UIPadding2 = Instance.new("UIPadding")
				UIPadding2.PaddingLeft = UDim.new(0, 10)
				UIPadding2.PaddingRight = UDim.new(0, 10)
				UIPadding2.Parent = Inner

				local UIStroke1 = Instance.new("UIStroke")
				UIStroke1.Transparency = 0.99
				UIStroke1.Thickness = 2
				UIStroke1.Color = Color3.fromRGB(255, 255, 255)
				UIStroke1.Parent = Inner

				Opener.MouseButton1Click:Connect(function()
					Arrow.Rotation = Arrow.Rotation == 180 and 0 or 180

					Inner.AutomaticSize = Arrow.Rotation == 180 and Enum.AutomaticSize.Y or Enum.AutomaticSize.None
					Selection.AutomaticSize = Arrow.Rotation == 180 and Enum.AutomaticSize.Y or Enum.AutomaticSize.None
					Dropdown.AutomaticSize = Arrow.Rotation == 180 and Enum.AutomaticSize.Y or Enum.AutomaticSize.None
				end)
				
				for _, a in pairs(Prop.List) do
					a = tostring(a)
					
					local Select = Instance.new("TextButton")
					Select.Name = "Select" .. a
					Select.Size = UDim2.new(1, 0, 0, 30)
					Select.BackgroundTransparency = 1
					Select.BorderSizePixel = 0
					Select.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
					Select.FontSize = Enum.FontSize.Size14
					Select.TextTransparency = 0.5
					Select.TextTruncate = Enum.TextTruncate.AtEnd
					Select.TextSize = 14
					Select.TextColor3 = Color3.fromRGB(255, 255, 255)
					Select.Text = a
					Select.Font = Enum.Font.Gotham
					Select.TextXAlignment = Enum.TextXAlignment.Left
					Select.Parent = Inner
					
					Select.MouseButton1Click:Connect(function()
						for _, b in pairs(Inner:GetChildren()) do
							if b:IsA("TextButton") then
								b.TextTransparency = 0.5
							end
						end
						
						Arrow.Rotation = 0
						Select.TextTransparency = 0
						
						Opener.Text = a
						
						Inner.AutomaticSize = Enum.AutomaticSize.None
						Selection.AutomaticSize = Enum.AutomaticSize.None
						Dropdown.AutomaticSize = Enum.AutomaticSize.None
						
						Prop.Callback(a)
					end)
				end

				Dropdown.Parent = In
			end
			
			function TabFunctions:Slider(Prop)
				Prop.Name = Prop.Name or "Unknown"
				Prop.Minimum = Prop.Minimum or -100
				Prop.Maximum = Prop.Maximum or 100
				Prop.Default = Prop.Default or 0
                Prop.Callback = Prop.Callback or function() end
				
				local Slider = Instance.new("Frame")
				Slider.Name = "Slider"
				Slider.Size = UDim2.new(1, 0, 0, 55)
				Slider.BackgroundTransparency = 1
				Slider.BorderSizePixel = 0
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Slider.Parent = In

				local Text = Instance.new("TextLabel")
				Text.Name = "Text"
				Text.AutomaticSize = Enum.AutomaticSize.XY
				Text.Size = UDim2.new(0, 0, 0, 30)
				Text.BackgroundTransparency = 1
				Text.BorderSizePixel = 0
				Text.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Text.FontSize = Enum.FontSize.Size18
				Text.TextTruncate = Enum.TextTruncate.AtEnd
				Text.TextSize = 15
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.Text = "This is a Slider"
				Text.Font = Enum.Font.Gotham
				Text.TextXAlignment = Enum.TextXAlignment.Left
				Text.Parent = Slider

				local Number = Instance.new("TextBox")
				Number.Name = "Number"
				Number.AnchorPoint = Vector2.new(1, 0)
				Number.AutomaticSize = Enum.AutomaticSize.XY
				Number.Size = UDim2.new(0, 0, 0, 30)
				Number.BackgroundTransparency = 1
				Number.Position = UDim2.new(1, 0, 0, 0)
				Number.BorderSizePixel = 0
				Number.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Number.FontSize = Enum.FontSize.Size18
				Number.TextTransparency = 0.5
				Number.TextTruncate = Enum.TextTruncate.AtEnd
				Number.TextSize = 15
				Number.TextColor3 = Color3.fromRGB(255, 255, 255)
				Number.Text = tostring(Prop.Default)
				Number.Font = Enum.Font.Gotham
				Number.TextXAlignment = Enum.TextXAlignment.Left
				Number.Parent = Slider

				local UIPadding = Instance.new("UIPadding")
				UIPadding.PaddingLeft = UDim.new(0, 5)
				UIPadding.PaddingRight = UDim.new(0, 5)
				UIPadding.Parent = Slider

				local Inner = Instance.new("TextButton")
				Inner.Name = "Inner"
				Inner.Selectable = false
				Inner.AnchorPoint = Vector2.new(0.5, 0.5)
				Inner.Size = UDim2.new(1, 0, 0, 10)
				Inner.Position = UDim2.new(0.5, 0, 0.5, 10)
				Inner.Active = false
				Inner.BorderSizePixel = 0
				Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Inner.AutoButtonColor = false
				Inner.TextTransparency = 1
				Inner.Text = ""
				Inner.Parent = Slider

				local Outer = Instance.new("Frame")
				Outer.Name = "Outer"
				Outer.ZIndex = 2
				Outer.AnchorPoint = Vector2.new(0, 0.5)
				Outer.Size = UDim2.new(0, 0, 1, 0)
				Outer.Position = UDim2.new(0, 0, 0.5, 0)
				Outer.BorderSizePixel = 0
				Outer.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
				Outer.Parent = Inner

				local UIGradient = Instance.new("UIGradient")
				UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))})
				UIGradient.Parent = Outer

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(1, 0)
				UICorner.Parent = Outer

				local UICorner1 = Instance.new("UICorner")
				UICorner1.CornerRadius = UDim.new(1, 0)
				UICorner1.Parent = Inner

				--Inner

                local dragging = false 
                        
                Number.FocusLost:Connect(function()
                    local valtext = tonumber(Number.Text)
                    
                    if not Number.Text or Number.Text == "" or not tonumber(Number.Text) then
                        Number.Text = Def
                    elseif valtext < tonumber(Prop.Minimum) then
                        Number.Text = Prop.Minimum
                    elseif valtext > tonumber(Prop.Maximum) then
                        Number.Text = Prop.Maximum
                    end
                    
                    Outer:TweenSize(UDim2.new(((tonumber(Number.Text) or Prop.Minimum) - Prop.Minimum) / (Prop.Maximum - Prop.Minimum), 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                    Prop.Callback(Number.Text)
                end)

                local function slide(input)
                    local pos = UDim2.new(math.clamp((input.Position.X - Inner.AbsolutePosition.X) / Inner.AbsoluteSize.X, 0, 1), 0, 1, 0)
                    Outer:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                    local value = ((pos.X.Scale * Prop.Maximum) / Prop.Maximum) * (Prop.Maximum - Prop.Minimum) + Prop.Minimum
                    value2 = string.format("%.1f", value)
                    Number.Text = tostring(value2)
                    Prop.Callback(value2)
                end

                Inner.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        slide(input)
                        dragging = true
                    end
                end)
    
                Inner.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end)
    
                UserInputService.InputChanged:Connect(function(input)
                    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        slide(input)
                    end
                end)

                local SliderFuncs = {}

                function SliderFuncs:UpdateSlider(Def)
                    Number:CaptureFocus()
                    Number:SetTextFromInput(Def)
                    Number:ReleaseFocus()
                end

                return SliderFuncs
			end
			
			
			
			return TabFunctions
		end
		
		return WindowFunctions
	end
	
	return MainFunctions
end
