--[[
@tollonis get thes models for it to work
https://www.roblox.com/library/1345003780/prison
https://www.roblox.com/library/1255455698/drone
https://www.roblox.com/library/1255292752/heart
]]--
local focused = false
game:GetService('UserInputService').TextBoxFocusReleased:connect(function()
	focused = false
end)
game:GetService('UserInputService').TextBoxFocused:connect(function()
	focused = true
end)

local player = game:GetService('Players').LocalPlayer
local prisoners = Instance.new("Team")
prisoners.Name = "Prisoners of the super cool guy "..player.Name
prisoners.TeamColor = BrickColor.new("Cloudy grey")
local usables = nil
local guud = false
local blacklisted = false
local ismustard = false
local localhwid = nil
local room = nil
local banning = false
local icing = false
local childlock = true
local ruhroh = false
local pressed = false 
local rooming = false
local continuestabbing = false
local continuestab = false
local stabb = false
local lastpos = CFrame.new(0,0,0)
local bans = {}
local version = "1.2.2"
local updates = [[ == 1.2.2 == 
>Added finish (replaced stab, still has multi-stab)
*Added some effects to the nuke
*Revamped some text-based graphics
!!oh hey securescript was fixed again
he̶l͏l ̵is ͡re͡al͢
!!13,000 lines
	
 == 1.2.1 ==
*quick bug fixes
	
 == 1.2.0 ==
>P R E D A T O R   D R O N E
>Added the option of a more sadistic stab (rapidly click after stabbing a target)
>Added kidnap mode
*Attempt to fix stabbed targets being able to move/fall
*Removed taser, was extremely broken.
!!12k lines holy shit
	
 == 1.1.7 ==
>Added taser mode
*Fixed stuff with scaling
*Fixed a few sounds being LOUD AF
*Fixed ragdoll to work with big bois
!!wtf we used every single key on the keyboard for gun mode
	
 == 1.1.6 ==
>Added stab mode
*Made Q with katana do something cool when you hit more than one person
*Minor bug patches
	
 == 1.1.5 == 
*Fixed some stuff with the R6 switcher
*Fixed childlock

 == 1.1.4 == 
*Fixed throwing knives not detecting HumanoidRootParts
*Made it automatically change you to R6 when R15

 == 1.1.3 == 
>Added fisticuffs mode
*fixed all gun modes, oof.
	
 == 1.1.2 == 
>Added a christmas mode, press N (pressing M will deactivate it, vice versa)
>Added explosion quality customization
*Made childlock done through bot DMs
*Made bullet holes actual bullet holes and not weird black dots
*Changed the changelogs to be a scrolling frame
*oh hey securescript was fixed finally
*fixed certain keystrokes not processing after death

 == 1.1.1 == 
*Fixed ragdolls
*Changed some stuff with hang mode

 == 1.1.0 (The 10k Update) == 
>Added hang mode
>Added firework mode
>Added laser mode
>Added infection gas
>Added infection injectors
>Added blacklist and shit
*Made getting the gun faster
(disclaimer: we're actually at 9658 lines, fuck off)

 == 1.0.1 == 
*Quick fix for the HWID whitelist

 == 1.0.0 (The Revamp Update) == 
>Added gun mode
>Added molotovs
>Added mustard gas
>Added paralyze mode
*Changed the whitelist to be HWID-based
*New loadup GUI
*Added credits, shoutouts, and changelogs]]

function wtflmao()
-- Objects

local memes = Instance.new("ScreenGui")
local krabs = Instance.new("TextLabel")
local OHYEAH = Instance.new("ImageLabel")

-- Properties

memes.Name = "memes"
memes.Parent = game:GetService('Players').LocalPlayer.PlayerGui
pcall(function()
	memes.Parent = game:GetService('CoreGui')
end)

krabs.Name = "krabs"
krabs.Parent = memes
krabs.BackgroundColor3 = Color3.new(0, 0, 0)
krabs.Size = UDim2.new(1, 0, 1, 0)
krabs.Font = Enum.Font.SourceSansLight
krabs.FontSize = Enum.FontSize.Size48
krabs.Text = " "
krabs.TextColor3 = Color3.new(1, 1, 1)
krabs.TextScaled = true
krabs.Active = true
krabs.TextStrokeColor3 = Color3.new(0.588235, 0.588235, 0.588235)
krabs.TextStrokeTransparency = 0.75
krabs.ZIndex = 2
local unhh = krabs:Clone()
unhh.ZIndex = 1
unhh.Parent = krabs.Parent
unhh.AnchorPoint = Vector2.new(0.5,0.5)
unhh.Size = UDim2.new(5,0,5,0)
unhh.Position = UDim2.new(0,0,0,0)

OHYEAH.Name = "OHYEAH"
OHYEAH.Parent = memes
OHYEAH.BackgroundColor3 = Color3.new(1, 0, 0)
OHYEAH.BackgroundTransparency = 1
OHYEAH.Active = true
OHYEAH.AnchorPoint = Vector2.new(0.5,0.5)
OHYEAH.Position = UDim2.new(0,0,0,0)
OHYEAH.SizeConstraint = Enum.SizeConstraint.RelativeYY
OHYEAH.Size = UDim2.new(5, 0, 5, 0)
OHYEAH.Image = "rbxassetid://105445938"
OHYEAH.ImageTransparency = 1
OHYEAH.ScaleType = Enum.ScaleType.Tile

countAs = false

boop = krabs

egg = Instance.new("Sound", game:GetService('Players').LocalPlayer.PlayerGui)
egg.SoundId = "rbxassetid://191040613"
egg.Volume = 1

local eggo = Instance.new("Sound", game:GetService('Players').LocalPlayer.PlayerGui)
eggo.SoundId = "rbxassetid://345287845"
eggo.Volume = 1

local relief = Instance.new("Sound", game:GetService('Players').LocalPlayer.PlayerGui)
relief.SoundId = "rbxassetid://374355709"
relief.Volume = 1.5

local waittime = 0.5

local egge = Instance.new("Sound", game:GetService('Players').LocalPlayer.PlayerGui)
egge.SoundId = "rbxassetid://291394633"
egge.Volume = 1

local eggl = Instance.new("Sound", game:GetService('Players').LocalPlayer.PlayerGui)
eggl.SoundId = "rbxassetid://1016708777"
eggl.PlaybackSpeed = 1
eggl.Looped = true
eggl:Play()

local lotsound = Instance.new("Sound", game:GetService('Players').LocalPlayer.PlayerGui)
lotsound.SoundId = "rbxassetid://345563471"
lotsound.Volume = 1

local rip = Instance.new("Sound", game:GetService('Players').LocalPlayer.PlayerGui)
rip.Volume = 1
rip.SoundId = "rbxassetid://702631545"

local cor = coroutine.wrap(function()
	while eggl.Volume < 3 do
		eggl.Volume = eggl.Volume + 0.02
		eggl.PlaybackSpeed = eggl.PlaybackSpeed + 0.01
		eggl:Resume()
		wait()
	end
	while eggl.Volume > 0 do
		eggl.Volume = eggl.Volume - 0.05
		eggl.PlaybackSpeed = eggl.PlaybackSpeed - 0.005
		eggl:Resume()
		wait()
	end
	eggl:Stop()
end)

relief:Play()

eggo:Play()
wait(0.4)

boop.Text = "OH"
wait(0.5)
boop.Text = "YEAH"
wait(0.5)
boop.Text = "MIS"
wait(0.17)
boop.Text = "TER"
wait(0.3)
boop.Text = "K R A B S"
boop.TextSize = 60
boop.TextStrokeColor3 = Color3.fromRGB(150, 0, 0)
boop.TextStrokeTransparency = 0
wait(0.5)
boop.Text = ""
wait(0.5)

cor()

boop.TextStrokeTransparency = 0.75
boop.TextStrokeColor3 = Color3.fromRGB(150, 150, 150)
boop.TextSize = 40
boop.TextWrapped = true
boop.TextXAlignment = "Left"
boop.TextYAlignment = "Top"
krabs.BorderSizePixel = 0
krabs.Size = UDim2.new(1,0,0.075,0)
local acount = ""
local countup = coroutine.wrap(function()
	while countAs == true do
		local cap = math.random(0, 4)
		if cap == 2 then
			acount = acount.."a"
		else
			acount = acount.."A"
		end
		boop.Text = acount
		wait()
	end
end)
tilelevel = 1

local zoOMOUT = coroutine.wrap(function()
	while tilelevel > 0.1 do
		tilelevel = tilelevel - 0.01
		boop.TextTransparency = boop.TextTransparency + 0.01
		boop.TextStrokeTransparency = boop.TextStrokeTransparency + 0.02
		OHYEAH.TileSize = UDim2.new(tilelevel, 0, tilelevel, 0)
		wait()
	end
end)

local ohhYEAh = coroutine.wrap(function()
	while OHYEAH.ImageTransparency < 1 do
		OHYEAH.Rotation = OHYEAH.Rotation + 5
		OHYEAH.ImageTransparency = OHYEAH.ImageTransparency + 0.003
		wait()
	end
end)

countAs = true
countup()

while waittime > 0.3 do
	waittime = waittime - 0.05
	egg:Play()
	wait(waittime)
end

wait(0.2)
OHYEAH.ZIndex = 3
krabs.Size = UDim2.new(1,0,1,0)
countAs = false
boop.TextSize = 80
boop.TextWrapped = true
boop.TextXAlignment = "Center"
boop.TextYAlignment = "Top"
boop.Text = "congratulations!"
OHYEAH.ImageTransparency = 0.5
ohhYEAh()
zoOMOUT()
rip:Play()
egg:Play()
egge:Play()
wait(1)
boop.Text = "congratulations! \nyou now have: "
egge:Play()
wait(1)
boop.Text = "congratulations! \nyou now have: \nFULL BLOWN STAPLER INDUCED   A I D S ! ! !"
egge:Play()
wait(3)
egg:Play()
boop.TextYAlignment = Enum.TextYAlignment.Top
boop.Text = "\n\n\nCONGRATULATIONS!"
relief:Stop()
boop.TextTransparency = 0
boop.TextSize = 30
boop.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

local glowything = coroutine.wrap(function()
	while true do
		while boop.TextStrokeTransparency > 0 do
			boop.TextStrokeTransparency = boop.TextStrokeTransparency - 0.05
			wait()
		end
		while boop.TextStrokeTransparency < 1 do
			boop.TextStrokeTransparency = boop.TextStrokeTransparency + 0.05
			wait()
		end
	end
end)
glowything()

wait(2)
boop.Text = "\n\n\nCONGRATULATIONS!\n\nyou were robbed of your anal virginity by jack's office stapler!"
local sound3 = Instance.new("Sound",workspace)
sound3.Volume = 1
sound3.SoundId = "rbxassetid://702631545"
sound3:Play()
wait(0.2)
local sound = Instance.new('Sound',workspace)
sound.SoundId = 'rbxassetid://959679286'
sound:Play()

wait(2)
boop.Text = "\n\n\nCONGRATULATIONS!\n\nyou were robbed of your anal virginity by jack's office stapler!\nyou contracted:"
wait(1)
boop.Text = "\n\n\nCONGRATULATIONS!\n\nyou were robbed of your anal virginity by jack's office stapler!\nyou contracted:\n S T A P L E R   I N D U C E D   A I D S !"
lotsound:Play()
wait(3)
boop.Text = "\n\n\nCONGRATULATIONS!\n\nyou were robbed of your anal virginity by jack's office stapler!\nyou contracted:\n S T A P L E R   I N D U C E D   A I D S !\n\nthank you for choosing jack's office supply shit, america's #1\nS T A P L E R   I N D U C E D   A I D S\ndistributer!"
wait(3)
boop.Text = "\n\n\nCONGRATULATIONS!\n\nyou were robbed of your anal virginity by jack's office stapler!\nyou contracted:\n S T A P L E R   I N D U C E D   A I D S !\n\nthank you for choosing jack's office supply shit, america's #1\nS T A P L E R   I N D U C E D   A I D S\ndistributer!\n\n\n(C)opyright JACK'S OFFICE SUPPLY SHIT"
wait(3)
boop.Text = "\n\n\nCONGRATULATIONS!\n\nyou were robbed of your anal virginity by jack's office stapler!\nyou contracted:\n S T A P L E R   I N D U C E D   A I D S !\n\nthank you for choosing jack's office supply shit, america's #1\nS T A P L E R   I N D U C E D   A I D S\ndistributer!\n\n\n(C)opyright JACK'S OFFICE SUPPLY SHIT\nforcing the Make a Wish Foundation to give children with STAPLER AIDS and their parents false hope since 2003!"
wait(2)
end
local correct = true

guud = true
childlock = false
--LOGIN GUI AND STUFF

local V4Gui = Instance.new("ScreenGui")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ExitButton = Instance.new("ImageButton")
local MainFrame = Instance.new("Frame")
local Tab1Frame = Instance.new("Frame")
local Run = Instance.new("TextButton")
local Aesthetics = Instance.new("Frame")
local Aesthetics_2 = Instance.new("Frame")
local Aesthetics_3 = Instance.new("Frame")
local Aesthetics_4 = Instance.new("Frame")
local Welcome = Instance.new("TextLabel")
local You = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local Tab2Frame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local copythatstuff = Instance.new("TextButton")
local Tab3Frame = Instance.new("Frame")
local ChangeFrame = Instance.new("ScrollingFrame")
local TextLabel_4 = Instance.new("TextLabel")
local Tab4Frame = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Tab5Frame = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local Tab1 = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")
local Tab3 = Instance.new("TextButton")
local Tab4 = Instance.new("TextButton")
local Tab5 = Instance.new("TextButton")

V4Gui.Name = "V4Gui"
V4Gui.ResetOnSpawn = false
V4Gui.Parent = player.PlayerGui
pcall(function()
V4Gui.Parent = game:GetService('CoreGui')
end)

Top.Name = "Top"
Top.Parent = V4Gui
Top.Active = true
Top.AnchorPoint = Vector2.new(0.5, 0.5)
Top.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
Top.BorderSizePixel = 0
Top.Draggable = true
Top.Position = UDim2.new(0.5, 0, 0.150000006, 0)
Top.Size = UDim2.new(0.75, 0, 0.0399999991, 0)

Title.Name = "Title"
Title.Parent = Top
Title.Active = true
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0.25, 0, 1, 0)
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Grab Knife V4"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextTransparency = 0.5
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

ExitButton.Name = "ExitButton"
ExitButton.Parent = Top
ExitButton.Active = true
ExitButton.AnchorPoint = Vector2.new(1, 0)
ExitButton.BackgroundColor3 = Color3.new(1, 1, 1)
ExitButton.BackgroundTransparency = 1
ExitButton.Position = UDim2.new(1, 0, 0, 0)
ExitButton.Size = UDim2.new(1, 0, 1, 0)
ExitButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
ExitButton.Image = "rbxassetid://1138478513"
ExitButton.ImageTransparency = 0.5

MainFrame.Name = "MainFrame"
MainFrame.Parent = Top
MainFrame.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0, 0, 2, 0)
MainFrame.Active = true
MainFrame.Size = UDim2.new(1, 0, 15, 0)

Tab1Frame.Name = "Tab1Frame"
Tab1Frame.Parent = MainFrame
Tab1Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Tab1Frame.BackgroundTransparency = 1
Tab1Frame.Size = UDim2.new(1, 0, 1, 0)

Run.Name = "Run"
Run.Parent = Tab1Frame
Run.BackgroundColor3 = Color3.new(0, 0.686275, 0)
Run.BorderSizePixel = 0
Run.Position = UDim2.new(0.349999994, 0, 0.550000012, 0)
Run.Size = UDim2.new(0.300000012, 0, 0.200000003, 0)
Run.Font = Enum.Font.SourceSans
Run.FontSize = Enum.FontSize.Size14
Run.Text = "Run Script"
Run.TextColor3 = Color3.new(1, 1, 1)
Run.TextScaled = true
Run.TextSize = 14
Run.TextWrapped = true
if guud == false then
	Run.BackgroundColor3 = Color3.new(0.686275,0,0)
end
if blacklisted then
	Run.BackgroundColor3 = Color3.new(0.15,0.15,0.15)
end
if correct == false then
	Run.BackgroundColor3 = Color3.new(0.15,0.15,0.15)
	Run.Text = "Outdated Version"
end

Aesthetics.Name = "Aesthetics"
Aesthetics.Parent = Run
Aesthetics.BackgroundColor3 = Color3.new(1, 1, 1)
Aesthetics.BackgroundTransparency = 0.75
Aesthetics.BorderSizePixel = 0
Aesthetics.Size = UDim2.new(1, 0, 0.0500000007, 0)

Aesthetics_2.Name = "Aesthetics"
Aesthetics_2.Parent = Run
Aesthetics_2.BackgroundColor3 = Color3.new(1, 1, 1)
Aesthetics_2.BackgroundTransparency = 0.75
Aesthetics_2.BorderSizePixel = 0
Aesthetics_2.Size = UDim2.new(0.0149999997, 0, 1, 0)

Aesthetics_3.Name = "Aesthetics"
Aesthetics_3.Parent = Run
Aesthetics_3.AnchorPoint = Vector2.new(1, 0)
Aesthetics_3.BackgroundColor3 = Color3.new(0, 0, 0)
Aesthetics_3.BackgroundTransparency = 0.75
Aesthetics_3.BorderSizePixel = 0
Aesthetics_3.Position = UDim2.new(1, 0, 0, 0)
Aesthetics_3.Size = UDim2.new(0.0149999997, 0, 1, 0)

Aesthetics_4.Name = "Aesthetics"
Aesthetics_4.Parent = Run
Aesthetics_4.AnchorPoint = Vector2.new(0, 1)
Aesthetics_4.BackgroundColor3 = Color3.new(0, 0, 0)
Aesthetics_4.BackgroundTransparency = 0.75
Aesthetics_4.BorderSizePixel = 0
Aesthetics_4.Position = UDim2.new(0, 0, 1, 0)
Aesthetics_4.Size = UDim2.new(1, 0, 0.0500000007, 0)

Welcome.Name = "Welcome"
Welcome.Parent = Tab1Frame
Welcome.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome.BackgroundTransparency = 1
Welcome.Position = UDim2.new(0.100000001, 0, 0.224999994, 0)
Welcome.Size = UDim2.new(0.150000006, 0, 0.100000001, 0)
Welcome.Font = Enum.Font.SourceSansLight
Welcome.FontSize = Enum.FontSize.Size14
Welcome.Text = "Welcome,"
Welcome.TextColor3 = Color3.new(1, 1, 1)
Welcome.TextScaled = true
Welcome.TextSize = 14
Welcome.TextWrapped = true
Welcome.TextXAlignment = Enum.TextXAlignment.Right

You.Name = "You"
You.Parent = Tab1Frame
You.BackgroundColor3 = Color3.new(1, 1, 1)
You.BackgroundTransparency = 1
You.Position = UDim2.new(0.25999999, 0, 0.150000006, 0)
You.Size = UDim2.new(0.649999976, 0, 0.25, 0)
You.Font = Enum.Font.SourceSansLight
You.FontSize = Enum.FontSize.Size14
You.Text = player.Name.."!"
You.TextColor3 = Color3.new(1, 1, 1)
You.TextScaled = true
You.TextSize = 14
You.TextWrapped = true
You.TextXAlignment = Enum.TextXAlignment.Left
You.TextYAlignment = Enum.TextYAlignment.Top

TextLabel.Parent = Tab1Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.915000021, 0)
TextLabel.Size = UDim2.new(0.5, 0, 0.075000003, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "*DISCLAIMER: By using this script, you allow access to your (hashed) HWID."
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextTransparency = 0.5
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Right
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

Tab2Frame.Name = "Tab2Frame"
Tab2Frame.Parent = MainFrame
Tab2Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Tab2Frame.BackgroundTransparency = 1
Tab2Frame.Size = UDim2.new(1, 0, 1, 0)
Tab2Frame.Visible = false

TextLabel_2.Parent = Tab2Frame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.200000003, 0, 0.0500000007, 0)
TextLabel_2.Size = UDim2.new(0.600000024, 0, 0.400000006, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "If you haven't already set one up, a HWID whitelist is required to use this script. HWIDs are computer-based, so you will have to change it whenever you switch computers. To set one up, DM the bot \"!setwhitelist [code seen below]\""
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Tab2Frame
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.125, 0, 0.45, 0)
TextLabel_3.Size = UDim2.new(0.75, 0, 0.25, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = "EIGHTEENCHARACTERS"
if localhwid then
	TextLabel_3.Text = localhwid
end
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

copythatstuff.Name = "copythatstuff"
copythatstuff.Parent = Tab2Frame
copythatstuff.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
copythatstuff.BorderSizePixel = 0
copythatstuff.Position = UDim2.new(0.349999994, 0, 0.75, 0)
copythatstuff.Size = UDim2.new(0.300000012, 0, 0.200000003, 0)
copythatstuff.Font = Enum.Font.SourceSans
copythatstuff.FontSize = Enum.FontSize.Size14
copythatstuff.Text = "Copy to Clipboard"
copythatstuff.TextColor3 = Color3.new(1, 1, 1)
copythatstuff.TextScaled = true
copythatstuff.TextSize = 14
copythatstuff.TextWrapped = true

Tab3Frame.Name = "Tab3Frame"
Tab3Frame.Parent = MainFrame
Tab3Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Tab3Frame.BackgroundTransparency = 1
Tab3Frame.Size = UDim2.new(1, 0, 1, 0)
Tab3Frame.Visible = false

ChangeFrame.Parent = Tab3Frame
ChangeFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ChangeFrame.BackgroundTransparency = 1
ChangeFrame.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
ChangeFrame.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
ChangeFrame.Size = UDim2.new(1, 0, 1, 0)

TextLabel_4.Parent = ChangeFrame
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Size = UDim2.new(1, 0, 1, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = updates
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextScaled = false
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = false
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top
local lastchanged = 0
Tab3Frame.Changed:connect(function(prop)
	lastchanged = lastchanged+1
	local ree = lastchanged
	TextLabel_4.TextSize = Tab3Frame.AbsoluteSize.X/30
	ChangeFrame.CanvasSize = UDim2.new(0,TextLabel_4.TextBounds.X,0,TextLabel_4.TextBounds.Y)
end)


Tab4Frame.Name = "Tab4Frame"
Tab4Frame.Parent = MainFrame
Tab4Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Tab4Frame.BackgroundTransparency = 1
Tab4Frame.Size = UDim2.new(1, 0, 1, 0)
Tab4Frame.Visible = false

TextLabel_5.Parent = Tab4Frame
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Size = UDim2.new(1, 0, 1, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.FontSize = Enum.FontSize.Size14
TextLabel_5.Text = "\n == Created by: == \n\n mustardfoot\n   -attack functions\n   -practical functions (e.g. ragdoll & glass breaking)\n   -whitelist system\n   -almost everything\n\ntollonis\n   -animations\n   -weapon models\n   -various functions"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_5.TextYAlignment = Enum.TextYAlignment.Top

Tab5Frame.Name = "Tab5Frame"
Tab5Frame.Parent = MainFrame
Tab5Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Tab5Frame.BackgroundTransparency = 1
Tab5Frame.Size = UDim2.new(1, 0, 1, 0)
Tab5Frame.Visible = false

TextLabel_6.Parent = Tab5Frame
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.Size = UDim2.new(1, 0, 1, 0)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.FontSize = Enum.FontSize.Size14
TextLabel_6.Text = "  Shoutout to:\n\n  you - you gave us money\n\n  that one syndicate guy - he leaked it before we got too far so we fixed a big vulnerability (basically since he was an idiot he helped us)\n\n  3dsboy08 - he made a super cool exploit that hosts the b̶r̶o̶k̶e̶n scriptsecure making v4 harder to crack\n\n  youtubers who showcase v4 - they helped get this popular with the skids\n\n  discord staff - letting us actually work on the script without having to deal with skids (mentioned above)\n\n  trello - hosting the whitelist list and shit\n\n  heroku & github - hosting the bot for our discord server\n\n  god - staying out of our way"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_6.TextYAlignment = Enum.TextYAlignment.Top

Tab1.Name = "Tab1"
Tab1.Parent = Top
Tab1.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
Tab1.BorderColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Tab1.BorderSizePixel = 0
Tab1.Position = UDim2.new(0, 0, 1, 0)
Tab1.Size = UDim2.new(0.2, 0, 1, 0)
Tab1.Font = Enum.Font.SourceSansLight
Tab1.FontSize = Enum.FontSize.Size14
Tab1.Text = "Home"
Tab1.TextColor3 = Color3.new(1, 1, 1)
Tab1.TextScaled = true
Tab1.TextSize = 14
Tab1.Active = true
Tab1.TextWrapped = true

Tab2.Name = "Tab2"
Tab2.Parent = Top
Tab2.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
Tab2.BorderColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Tab2.BorderSizePixel = 0
Tab2.Position = UDim2.new(0.2, 0, 1, 0)
Tab2.Size = UDim2.new(0.2, 0, 1, 0)
Tab2.Font = Enum.Font.SourceSansLight
Tab2.FontSize = Enum.FontSize.Size14
Tab2.Text = "HWID Setup"
Tab2.TextColor3 = Color3.new(1, 1, 1)
Tab2.TextScaled = true
Tab2.Active = true
Tab2.TextSize = 14
Tab2.TextTransparency = 0.5
Tab2.TextWrapped = true

Tab3.Name = "Tab3"
Tab3.Parent = Top
Tab3.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
Tab3.BorderColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Tab3.BorderSizePixel = 0
Tab3.Position = UDim2.new(0.4, 0, 1, 0)
Tab3.Size = UDim2.new(0.2, 0, 1, 0)
Tab3.Font = Enum.Font.SourceSansLight
Tab3.FontSize = Enum.FontSize.Size14
Tab3.Text = "Changelogs"
Tab3.TextColor3 = Color3.new(1, 1, 1)
Tab3.TextScaled = true
Tab3.Active = true
Tab3.TextSize = 14
Tab3.TextTransparency = 0.5
Tab3.TextWrapped = true

Tab4.Name = "Tab4"
Tab4.Parent = Top
Tab4.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
Tab4.BorderColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Tab4.BorderSizePixel = 0
Tab4.Position = UDim2.new(0.6, 0, 1, 0)
Tab4.Size = UDim2.new(0.2, 0, 1, 0)
Tab4.Font = Enum.Font.SourceSansLight
Tab4.FontSize = Enum.FontSize.Size14
Tab4.Text = "Credits"
Tab4.TextColor3 = Color3.new(1, 1, 1)
Tab4.TextScaled = true
Tab4.Active = true
Tab4.TextSize = 14
Tab4.TextTransparency = 0.5
Tab4.TextWrapped = true

Tab5.Name = "Tab5"
Tab5.Parent = Top
Tab5.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
Tab5.BorderColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Tab5.BorderSizePixel = 0
Tab5.Position = UDim2.new(0.8, 0, 1, 0)
Tab5.Size = UDim2.new(0.2, 0, 1, 0)
Tab5.Font = Enum.Font.SourceSansLight
Tab5.Active = true
Tab5.FontSize = Enum.FontSize.Size14
Tab5.Text = "Shoutouts"
Tab5.TextColor3 = Color3.new(1, 1, 1)
Tab5.TextScaled = true
Tab5.TextSize = 14
Tab5.TextTransparency = 0.5
Tab5.TextWrapped = true

Run.MouseButton1Click:connect(function()
	if pressed == false then
	pressed = true
	local texts = {"lol","dude","dude","why'd","you","press","this?","this?","it","being","black","should","have","given","you","a","hint","that","ur","blacklisted.","blacklisted.","get","it?","it?","it?","Blacklisted?","BLacklisted?","BLAcklisted?","BLACklisted?","BLACKlisted?","BLACKlisted?","BLACKlisted?"}
	if blacklisted == true then
		for i,v in pairs(texts) do
			Run.Text = v
			wait(0.2)
		end
		wtflmao()
		while true do
    		spawn(function()
        		egg = Instance.new("Sound", workspace)
       			egg.SoundId = "rbxassetid://345287845"
       		 	egg:Play()
    		end)
    		spawn(function()
       			game:OpenScreenshotsFolder()
        		game:OpenVideosFolder()
    		end)
			wait()
		end
	elseif guud == true then
		usables = true
	end
	end
end)

copythatstuff.MouseButton1Click:connect(function()
	pcall(function()
		Synapse:CopyString(localhwid)
	end)
end)

ExitButton.MouseButton1Click:connect(function()
	usables = false
end)

Tab1.MouseButton1Click:connect(function()
	Tab1.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Tab2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab5.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab1.TextTransparency = 0
	Tab2.TextTransparency = 0.5
	Tab3.TextTransparency = 0.5
	Tab4.TextTransparency = 0.5
	Tab5.TextTransparency = 0.5
	Tab1Frame.Visible = true
	Tab2Frame.Visible = false
	Tab3Frame.Visible = false
	Tab4Frame.Visible = false
	Tab5Frame.Visible = false
end)
Tab2.MouseButton1Click:connect(function()
	Tab2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Tab1.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab5.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab2.TextTransparency = 0
	Tab1.TextTransparency = 0.5
	Tab3.TextTransparency = 0.5
	Tab4.TextTransparency = 0.5
	Tab5.TextTransparency = 0.5
	Tab1Frame.Visible = false
	Tab2Frame.Visible = true
	Tab3Frame.Visible = false
	Tab4Frame.Visible = false
	Tab5Frame.Visible = false
end)
Tab3.MouseButton1Click:connect(function()
	Tab3.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Tab2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab1.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab5.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab3.TextTransparency = 0
	Tab2.TextTransparency = 0.5
	Tab1.TextTransparency = 0.5
	Tab4.TextTransparency = 0.5
	Tab5.TextTransparency = 0.5
	Tab2Frame.Visible = false
	Tab3Frame.Visible = true
	Tab1Frame.Visible = false
	Tab4Frame.Visible = false
	Tab5Frame.Visible = false
end)
Tab4.MouseButton1Click:connect(function()
	Tab4.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Tab2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab1.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab5.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab4.TextTransparency = 0
	Tab2.TextTransparency = 0.5
	Tab3.TextTransparency = 0.5
	Tab1.TextTransparency = 0.5
	Tab5.TextTransparency = 0.5
	Tab2Frame.Visible = false
	Tab4Frame.Visible = true
	Tab1Frame.Visible = false
	Tab3Frame.Visible = false
	Tab5Frame.Visible = false
end)
Tab5.MouseButton1Click:connect(function()
	Tab5.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Tab2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab1.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Tab5.TextTransparency = 0
	Tab2.TextTransparency = 0.5
	Tab3.TextTransparency = 0.5
	Tab4.TextTransparency = 0.5
	Tab1.TextTransparency = 0.5
	Tab2Frame.Visible = false
	Tab5Frame.Visible = true
	Tab1Frame.Visible = false
	Tab3Frame.Visible = false
	Tab4Frame.Visible = false
end)

--LOGIN GUI AND STUFF END

repeat wait() until usables ~= nil
V4Gui:Destroy()
if usables == true then
local v = '1255292752'
local HeartOriginal = nil
if game:GetService('RunService'):IsStudio() then
	HeartOriginal = game:GetService('InsertService'):LoadAsset(v)["Heart"]
else
end
local kidnaproom = nil
if game:GetService('RunService'):IsStudio() then
	kidnaproom = game:GetService('InsertService'):LoadAsset('1345003780')["oof"]
else
end


local curbloodnum = {}
local maxbloodnum = 100
local rightclone = Instance.new('Motor6D')
rightclone.Name = "Right Shoulder"
rightclone.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rightclone.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local leftclone = Instance.new('Motor6D')
leftclone.Name = "Left Shoulder"
leftclone.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
leftclone.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local leftlegclone = Instance.new('Motor6D')
leftlegclone.Name = "Left Hip"
leftlegclone.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
leftlegclone.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local rightlegclone = Instance.new('Motor6D')
rightlegclone.Name = "Right Hip"
rightlegclone.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rightlegclone.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local torsoclone = Instance.new('Motor6D')
torsoclone.Name = "RootJoint"
torsoclone.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
torsoclone.C1 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local mouse = player:GetMouse()
local rag1 = false
local rag2 = false
local firsttime = true
local firsttime2 = true
local firsttime3 = true
local firsttime4 = true
local firsttime5 = true
local firsttime6 = true
local firsttime7 = true
local math1 = math.random(1,5)
math1 = math1+(math.random(0,9)/10)
local math2 = math.random(1,15)
math2 = math2+(math.random(0,9)/10)
local math3 = math.random(1,10)
math3 = math3+(math.random(0,9)/10)
local math4 = math.random(5,100)
math4 = math4+(math.random(0,9)/10)
local answer = (math4+(math1*math3))/(math1*math2)
answer = math.floor((answer*10)+0.5)
answer = answer/10
print([[To be fair, you have to have a very high IQ to understand Rick and Morty.
The humor is extremely subtle, and without a solid grasp of theoretical physics most of the jokes will go over a typical viewer's head.
There's also Rick's nihilistic outlook, which is deftly woven into his characterisation -
his personal philosophy draws heavily from Narodnaya Volya literature, for instance.
The fans understand this stuff;
they have the intellectual capacity to truly appreciate the depths of these jokes, to realize that they're not just funny- they say something deep about LIFE.
As a consequence people who dislike Rick and Morty truly ARE idiots-
of course they wouldn't appreciate, for instance, the humour in Rick's existencial catchphrase "Wubba Lubba Dub Dub," which itself is a cryptic reference to Turgenev's Russian epic Fathers and Sons.
I'm smirking right now just imagining one of those addlepated simpletons scratching their heads in confusion as Dan Harmon's genius unfolds itself on their television screens.
What fools... how I pity them.
And yes by the way, I DO have a Rick and Morty tattoo.
And no, you cannot see it.
It's for the ladies' eyes only-
And even they have to demonstrate that they're within 5 IQ points of my own (preferably lower) beforehand.
Boom boom shoom shoom potato tomato ass tass meme team.]])
local rekt = {}
local spooking = false
local tracking = nil
local raybeam = nil
local pathree = nil
local linetracking = nil
local pathfinding = nil
local redmode = true
local getdamaged = {}

-- Objects pls

local MainGUI = Instance.new("ScreenGui")
local Customize = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local R = Instance.new("TextBox")
local G = Instance.new("TextBox")
local B = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local Slider = Instance.new("Frame")
local Slidee = Instance.new("ImageButton")
local TextLabel_5 = Instance.new("TextLabel")
local mathz = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Black = Instance.new('Frame')
local fps = Instance.new('TextLabel')
local maxamnt = Instance.new("TextBox")
local maxamnttext = Instance.new("TextLabel")
local SecondPart = Instance.new("Frame")
local Low = Instance.new("TextButton")
local Medium = Instance.new("TextButton")
local High = Instance.new("TextButton")
local ExpQuality = Instance.new("TextLabel")
-- Objects

local Tracking = Instance.new("Frame")
local Framey = Instance.new("Frame")
local Parent = Instance.new("TextLabel")
local RelativePosition = Instance.new("TextLabel")
local WorldPosition = Instance.new("TextLabel")
local Distance = Instance.new("TextLabel")
local Health = Instance.new("TextLabel")
local Tools = Instance.new("TextLabel")
local ToggleTracking = Instance.new("TextButton")
local TogglePath = Instance.new("TextButton")
local DroneThem = Instance.new("TextButton")
local TextLabely = Instance.new("TextLabel")

-- Properties
local ranstr = ""
local ree = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0"}
local maxree = #ree
for i=1,20 do
	ranstr = ranstr..ree[math.random(1,maxree)]
end

MainGUI.Name = "MainGUI"
MainGUI.ResetOnSpawn = false
pcall(function()
	MainGUI.Parent = player.PlayerGui
end)
pcall(function()
	MainGUI.Parent = game:GetService('CoreGui')
end)

spawn(function()
	while wait(1) do
		pcall(function()
			game:GetService('CoreGui').RobloxGui.Backpack.Hotbar.AnchorPoint = Vector2.new(0.5,0.5)
			game:GetService('CoreGui').RobloxGui.Backpack.Hotbar.Position = UDim2.new(0.5,0,0.85,0)
			game:GetService('CoreGui').RobloxGui.Backpack.Inventory.AnchorPoint = Vector2.new(0.5,0.5)
			game:GetService('CoreGui').RobloxGui.Backpack.Inventory.Position = UDim2.new(0.5,0,0.6,0)
		end)
	end
end)


Customize.Name = "Customize"
Customize.Parent = MainGUI
Customize.BackgroundColor3 = Color3.new(0, 0.776471, 0.282353)
Customize.BorderSizePixel = 0
Customize.Position = UDim2.new(0.15, 0, 0.9, 0)
Customize.Size = UDim2.new(0.699999988, 0, 0.100000001, 0)
Customize.Font = Enum.Font.SourceSans
Customize.FontSize = Enum.FontSize.Size14
Customize.Text = "Customize V4"
Customize.TextColor3 = Color3.new(1, 1, 1)
Customize.TextScaled = true
Customize.TextSize = 14
Customize.TextWrapped = true

Frame.Parent = Customize
Frame.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(1, 0, 6.5, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0.100000001, 0)
TextLabel.Size = UDim2.new(0.300000012, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Blood Color: [255, 255, 255]"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Right

Frame_2.Parent = TextLabel
Frame_2.BackgroundColor3 = Color3.new(0.458824, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(1.04999995, 0, 0, 0)
Frame_2.Size = UDim2.new(1, 0, 1, 0)
Frame_2.SizeConstraint = Enum.SizeConstraint.RelativeYY

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_3.BackgroundTransparency = 1
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0500000007, 0, 0.449999988, 0)
Frame_3.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame_3.SizeConstraint = Enum.SizeConstraint.RelativeYY

ImageLabel.Parent = Frame_3
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://328298876"

R.Name = "R"
R.Parent = Frame_3
R.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
R.BorderSizePixel = 0
R.Position = UDim2.new(1.39999998, 0, 0, 0)
R.Size = UDim2.new(0.75, 0, 0.300000012, 0)
R.Font = Enum.Font.SourceSans
R.FontSize = Enum.FontSize.Size14
R.Text = ""
R.PlaceholderText = "Input"
R.TextColor3 = Color3.new(1, 1, 1)
R.TextScaled = true
R.TextSize = 14
R.TextWrapped = true
R.TextXAlignment = Enum.TextXAlignment.Left

G.Name = "G"
G.Parent = Frame_3
G.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
G.BorderSizePixel = 0
G.Position = UDim2.new(1.39999998, 0, 0.349999994, 0)
G.Size = UDim2.new(0.75, 0, 0.300000012, 0)
G.Font = Enum.Font.SourceSans
G.FontSize = Enum.FontSize.Size14
G.Text = ""
G.PlaceholderText = "Input"
G.TextColor3 = Color3.new(1, 1, 1)
G.TextScaled = true
G.TextSize = 14
G.TextWrapped = true
G.TextXAlignment = Enum.TextXAlignment.Left

B.Name = "B"
B.Parent = Frame_3
B.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
B.BorderSizePixel = 0
B.Position = UDim2.new(1.39999998, 0, 0.699999988, 0)
B.Size = UDim2.new(0.75, 0, 0.300000012, 0)
B.Font = Enum.Font.SourceSans
B.FontSize = Enum.FontSize.Size14
B.Text = ""
B.PlaceholderText = "Input"
B.TextColor3 = Color3.new(1, 1, 1)
B.TextScaled = true
B.TextSize = 14
B.TextWrapped = true
B.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Frame_3
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(1.04999995, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "R"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame_3
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(1.04999995, 0, 0.349999994, 0)
TextLabel_3.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
TextLabel_3.Font = Enum.Font.SourceSansLight
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = "G"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Frame_3
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(1.04999995, 0, 0.699999988, 0)
TextLabel_4.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
TextLabel_4.Font = Enum.Font.SourceSansLight
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = "B"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

Slider.Name = "Slider"
Slider.Parent = Frame
Slider.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Slider.Position = UDim2.new(0.0500000007, 0, 0.375, 0)
Slider.Size = UDim2.new(0.230000004, 0, 0.00999999978, 0)

Slidee.Name = "Slidee"
Slidee.Parent = Slider
Slidee.AnchorPoint = Vector2.new(0.5, 0.5)
Slidee.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
Slidee.BorderSizePixel = 0
Slidee.Size = UDim2.new(0.0299999993, 0, 7, 0)
Slidee.ImageTransparency = 1

fps.Name = "fps"
fps.Parent = Frame
fps.BackgroundColor3 = Color3.new(1, 1, 1)
fps.BackgroundTransparency = 1
fps.Size = UDim2.new(0.75, 0, 0.05, 0)
fps.ZIndex = 3
fps.Font = Enum.Font.SourceSansLight
fps.FontSize = Enum.FontSize.Size14
fps.Text = "FPS: N/A"
fps.TextColor3 = Color3.new(1, 1, 1)
fps.TextScaled = true
fps.TextSize = 14
fps.TextWrapped = true
fps.TextXAlignment = Enum.TextXAlignment.Left

Black.Size = UDim2.new(1,0,1,0)
Black.BackgroundTransparency = 1
Black.BorderSizePixel = 0
Black.BackgroundColor3 = Color3.new(0,0,0)
Black.Parent = Frame_3

maxamnt.Name = "maxamnt"
maxamnt.Parent = Frame
maxamnt.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
maxamnt.BorderSizePixel = 0
maxamnt.Position = UDim2.new(0.449999988, 0, 0.200000003, 0)
maxamnt.Size = UDim2.new(0.25, 0, 0.150000006, 0)
maxamnt.Font = Enum.Font.SourceSans
maxamnt.FontSize = Enum.FontSize.Size14
maxamnt.Text = ""
maxamnt.PlaceholderText = "100"
maxamnt.TextColor3 = Color3.new(1, 1, 1)
maxamnt.TextScaled = true
maxamnt.TextSize = 14
maxamnt.TextWrapped = true
maxamnt.TextXAlignment = Enum.TextXAlignment.Left

maxamnttext.Name = "maxamnttext"
maxamnttext.Parent = Frame
maxamnttext.BackgroundColor3 = Color3.new(1, 1, 1)
maxamnttext.BackgroundTransparency = 1
maxamnttext.Position = UDim2.new(0.449999988, 0, 0, 0)
maxamnttext.Size = UDim2.new(0.25, 0, 0.150000006, 0)
maxamnttext.Font = Enum.Font.SourceSans
maxamnttext.FontSize = Enum.FontSize.Size14
maxamnttext.Text = "Max Amount of Blood Particles"
maxamnttext.TextColor3 = Color3.new(1, 1, 1)
maxamnttext.TextScaled = true
maxamnttext.TextSize = 14
maxamnttext.TextWrapped = true

SecondPart.Name = "SecondPart"
SecondPart.Parent = Frame
SecondPart.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
SecondPart.BorderSizePixel = 0
SecondPart.Position = UDim2.new(0.7, 0, 0, 0)
SecondPart.Size = UDim2.new(0.3, 0, 1, 0)

Low.Name = "Low"
Low.Parent = SecondPart
Low.AnchorPoint = Vector2.new(0.5, 0)
Low.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Low.BorderSizePixel = 0
Low.Position = UDim2.new(0.5, 0, 0.200000003, 0)
Low.Size = UDim2.new(0.75, 0, 0.200000003, 0)
Low.Font = Enum.Font.SourceSans
Low.FontSize = Enum.FontSize.Size14
Low.Text = "Low"
Low.TextColor3 = Color3.new(1, 1, 1)
Low.TextScaled = true
Low.TextSize = 14
Low.TextTransparency = 0.75
Low.TextWrapped = true

Medium.Name = "Medium"
Medium.Parent = SecondPart
Medium.AnchorPoint = Vector2.new(0.5, 0)
Medium.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Medium.BorderSizePixel = 0
Medium.Position = UDim2.new(0.5, 0, 0.449999988, 0)
Medium.Size = UDim2.new(0.75, 0, 0.200000003, 0)
Medium.Font = Enum.Font.SourceSans
Medium.FontSize = Enum.FontSize.Size14
Medium.Text = "Medium"
Medium.TextColor3 = Color3.new(1, 1, 1)
Medium.TextScaled = true
Medium.TextSize = 14
Medium.TextWrapped = true

High.Name = "High"
High.Parent = SecondPart
High.AnchorPoint = Vector2.new(0.5, 0)
High.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
High.BorderSizePixel = 0
High.Position = UDim2.new(0.5, 0, 0.699999988, 0)
High.Size = UDim2.new(0.75, 0, 0.200000003, 0)
High.Font = Enum.Font.SourceSans
High.FontSize = Enum.FontSize.Size14
High.Text = "High"
High.TextColor3 = Color3.new(1, 1, 1)
High.TextScaled = true
High.TextSize = 14
High.TextTransparency = 0.75
High.TextWrapped = true

ExpQuality.Name = "ExpQuality"
ExpQuality.Parent = SecondPart
ExpQuality.BackgroundColor3 = Color3.new(1, 1, 1)
ExpQuality.BackgroundTransparency = 1
ExpQuality.Position = UDim2.new(0, 0, 0.0500000007, 0)
ExpQuality.Size = UDim2.new(1, 0, 0.100000001, 0)
ExpQuality.Font = Enum.Font.SourceSans
ExpQuality.FontSize = Enum.FontSize.Size14
ExpQuality.Text = "Explosion Crater Quality"
ExpQuality.TextColor3 = Color3.new(1, 1, 1)
ExpQuality.TextScaled = true
ExpQuality.TextSize = 14
ExpQuality.TextWrapped = true

Tracking.Name = "Tracking"
Tracking.Parent = MainGUI
Tracking.BackgroundColor3 = Color3.new(0, 0.776471, 0.282353)
Tracking.BorderSizePixel = 0
Tracking.Position = UDim2.new(0.800000012, 0, 0.400000006, 0)
Tracking.Active = true
Tracking.Draggable = true
Tracking.Size = UDim2.new(0.200000003, 0, 0.0500000007, 0)

Framey.Parent = Tracking
Framey.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Framey.BorderSizePixel = 0
Framey.Position = UDim2.new(0, 0, 1, 0)
Framey.Size = UDim2.new(1, 0, 11.1499996, 0)

Parent.Name = "Parent"
Parent.Parent = Framey
Parent.BackgroundColor3 = Color3.new(1, 1, 1)
Parent.BackgroundTransparency = 1
Parent.Position = UDim2.new(0.0799999982, 0, 0, 0)
Parent.Size = UDim2.new(0.850000024, 0, 0.075000003, 0)
Parent.Font = Enum.Font.SourceSans
Parent.FontSize = Enum.FontSize.Size14
Parent.Text = "Parent: nil"
Parent.TextColor3 = Color3.new(1, 1, 1)
Parent.TextScaled = true
Parent.TextSize = 14
Parent.TextWrapped = true
Parent.TextXAlignment = Enum.TextXAlignment.Left

RelativePosition.Name = "RelativePosition"
RelativePosition.Parent = Framey
RelativePosition.BackgroundColor3 = Color3.new(1, 1, 1)
RelativePosition.BackgroundTransparency = 1
RelativePosition.Position = UDim2.new(0.0799999982, 0, 0.075000003, 0)
RelativePosition.Size = UDim2.new(0.850000024, 0, 0.075000003, 0)
RelativePosition.Font = Enum.Font.SourceSans
RelativePosition.FontSize = Enum.FontSize.Size14
RelativePosition.Text = "Relative Position: 0,0,0"
RelativePosition.TextColor3 = Color3.new(1, 1, 1)
RelativePosition.TextScaled = true
RelativePosition.TextSize = 14
RelativePosition.TextWrapped = true
RelativePosition.TextXAlignment = Enum.TextXAlignment.Left

WorldPosition.Name = "WorldPosition"
WorldPosition.Parent = Framey
WorldPosition.BackgroundColor3 = Color3.new(1, 1, 1)
WorldPosition.BackgroundTransparency = 1
WorldPosition.Position = UDim2.new(0.0799999982, 0, 0.224999994, 0)
WorldPosition.Size = UDim2.new(0.850000024, 0, 0.075000003, 0)
WorldPosition.Font = Enum.Font.SourceSans
WorldPosition.FontSize = Enum.FontSize.Size14
WorldPosition.Text = "World Position: 0,0,0"
WorldPosition.TextColor3 = Color3.new(1, 1, 1)
WorldPosition.TextScaled = true
WorldPosition.TextSize = 14
WorldPosition.TextWrapped = true
WorldPosition.TextXAlignment = Enum.TextXAlignment.Left

Distance.Name = "Distance"
Distance.Parent = Framey
Distance.BackgroundColor3 = Color3.new(1, 1, 1)
Distance.BackgroundTransparency = 1
Distance.Position = UDim2.new(0.0799999982, 0, 0.150000006, 0)
Distance.Size = UDim2.new(0.850000024, 0, 0.075000003, 0)
Distance.Font = Enum.Font.SourceSans
Distance.FontSize = Enum.FontSize.Size14
Distance.Text = "Distance: 0.0"
Distance.TextColor3 = Color3.new(1, 1, 1)
Distance.TextScaled = true
Distance.TextSize = 14
Distance.TextWrapped = true
Distance.TextXAlignment = Enum.TextXAlignment.Left

Health.Name = "Health"
Health.Parent = Framey
Health.BackgroundColor3 = Color3.new(1, 1, 1)
Health.BackgroundTransparency = 1
Health.Position = UDim2.new(0.0799999982, 0, 0.300000012, 0)
Health.Size = UDim2.new(0.850000024, 0, 0.075000003, 0)
Health.Font = Enum.Font.SourceSans
Health.FontSize = Enum.FontSize.Size14
Health.Text = "Health: 0/0"
Health.TextColor3 = Color3.new(1, 1, 1)
Health.TextScaled = true
Health.TextSize = 14
Health.TextWrapped = true
Health.TextXAlignment = Enum.TextXAlignment.Left

Tools.Name = "Tools"
Tools.Parent = Framey
Tools.BackgroundColor3 = Color3.new(1, 1, 1)
Tools.BackgroundTransparency = 1
Tools.Position = UDim2.new(0.0799999982, 0, 0.375, 0)
Tools.Size = UDim2.new(0.850000024, 0, 0.075, 0)
Tools.Font = Enum.Font.SourceSans
Tools.FontSize = Enum.FontSize.Size14
Tools.Text = "Tools: None"
Tools.TextColor3 = Color3.new(1, 1, 1)
Tools.TextScaled = true
Tools.TextSize = 14
Tools.TextWrapped = true
Tools.TextXAlignment = Enum.TextXAlignment.Left
Tools.TextYAlignment = Enum.TextYAlignment.Top

ToggleTracking.Name = "ToggleTracking"
ToggleTracking.Parent = Framey
ToggleTracking.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
ToggleTracking.BorderSizePixel = 0
ToggleTracking.Position = UDim2.new(0.0799999982, 0, 0.475, 0)
ToggleTracking.Size = UDim2.new(0.850000024, 0, 0.150000006, 0)
ToggleTracking.Font = Enum.Font.SourceSans
ToggleTracking.FontSize = Enum.FontSize.Size14
ToggleTracking.Text = "Toggle Tracking (Off)"
ToggleTracking.TextColor3 = Color3.new(1, 1, 1)
ToggleTracking.TextScaled = true
ToggleTracking.TextSize = 14
ToggleTracking.TextWrapped = true

TogglePath.Name = "TogglePath"
TogglePath.Parent = Framey
TogglePath.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TogglePath.BorderSizePixel = 0
TogglePath.Position = UDim2.new(0.0799999982, 0, 0.65, 0)
TogglePath.Size = UDim2.new(0.850000024, 0, 0.150000006, 0)
TogglePath.Font = Enum.Font.SourceSans
TogglePath.FontSize = Enum.FontSize.Size14
TogglePath.Text = "Toggle Pathfinding (Off)"
TogglePath.TextColor3 = Color3.new(1, 1, 1)
TogglePath.TextScaled = true
TogglePath.TextSize = 14
TogglePath.TextWrapped = true

DroneThem.Name = "DroneThem"
DroneThem.Parent = Framey
DroneThem.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
DroneThem.BorderSizePixel = 0
DroneThem.Position = UDim2.new(0.0799999982, 0, 0.827, 0)
DroneThem.Size = UDim2.new(0.850000024, 0, 0.150000006, 0)
DroneThem.Font = Enum.Font.SourceSans
DroneThem.FontSize = Enum.FontSize.Size14
DroneThem.Text = "RELEASE THE DRONE"
DroneThem.TextColor3 = Color3.new(1, 1, 1)
DroneThem.TextScaled = true
DroneThem.TextSize = 14
DroneThem.TextWrapped = true

ToggleTracking.MouseButton1Click:connect(function()
	linetracking = not linetracking
end)
TogglePath.MouseButton1Click:connect(function()
	pathfinding = not pathfinding
end)
DroneThem.MouseButton1Click:connect(function()
	sicthedrone()
end)

TextLabely.Parent = Tracking
TextLabely.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabely.BackgroundTransparency = 1
TextLabely.BorderSizePixel = 0
TextLabely.Size = UDim2.new(1, 0, 1, 0)
TextLabely.Font = Enum.Font.SourceSans
TextLabely.FontSize = Enum.FontSize.Size14
TextLabely.Text = "Tracking Nobody"
TextLabely.TextColor3 = Color3.new(1, 1, 1)
TextLabely.TextScaled = true
TextLabely.TextSize = 14
TextLabely.TextWrapped = true

local mousedown = false
mouse.Button1Down:connect(function()
	mousedown = true
end)
mouse.Button1Up:connect(function()
	mousedown = false
	slidee = false
end)

Slidee.MouseButton1Down:connect(function()
	slidee = true
end)
Slidee.MouseButton1Up:connect(function()
	slidee = false
end)

mouse.Move:connect(function()
	if mousedown then
		if mouse.X >= ImageLabel.AbsolutePosition.X and mouse.X <= ImageLabel.AbsolutePosition.X+ ImageLabel.AbsoluteSize.X and mouse.Y >= ImageLabel.AbsolutePosition.Y and mouse.Y <= ImageLabel.AbsolutePosition.Y+ ImageLabel.AbsoluteSize.Y then
			local newX = ImageLabel.AbsoluteSize.X-(mouse.X-ImageLabel.AbsolutePosition.X)
			local newY = ImageLabel.AbsoluteSize.Y-(mouse.Y-ImageLabel.AbsolutePosition.Y)
			local newcolor = Color3.fromHSV(newX/ImageLabel.AbsoluteSize.X,newY/ImageLabel.AbsoluteSize.Y,Black.Transparency)
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
		end
	end
	if slidee then
		local ree = mouse.X
		if ree < Slider.AbsolutePosition.X then
			ree = Slider.AbsolutePosition.X
		elseif ree > Slider.AbsolutePosition.X+Slider.AbsoluteSize.X then
			ree = Slider.AbsolutePosition.X+Slider.AbsoluteSize.X
		end
		Slidee.Position = UDim2.new(0,ree-Slider.AbsolutePosition.X,0,0)
		Black.Transparency = 1-(Slidee.Position.X.Offset/Slider.AbsoluteSize.X)
	end
end)

maxamnt.FocusLost:connect(function()
	if tonumber(maxamnt.Text) then
		maxbloodnum = tonumber(maxamnt.Text)
	else
		maxamnt.Text = ""
		maxbloodnum = 100
	end
end)

R.FocusLost:connect(function()
	if R.Text ~= "Input" then
		if tonumber(R.Text) then
			if tonumber(R.Text) > 255 then
				R.Text = "255"
			end
			local newcolor = Color3.new(tonumber(R.Text/255),Frame_2.BackgroundColor3.g,Frame_2.BackgroundColor3.b)
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
			R.Text = "Input"
		end
	end
end)
G.FocusLost:connect(function()
	if G.Text ~= "Input" then
		if tonumber(G.Text) then
			if tonumber(G.Text) > 255 then
				G.Text = "255"
			end
			local newcolor = Color3.new(Frame_2.BackgroundColor3.r,tonumber(G.Text/255),Frame_2.BackgroundColor3.b)
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
			G.Text = "Input"
		end
	end
end)
B.FocusLost:connect(function()
	if B.Text ~= "Input" then
		if tonumber(B.Text) then
			if tonumber(B.Text) > 255 then
				B.Text = "255"
			end
			local newcolor = Color3.new(Frame_2.BackgroundColor3.r,Frame_2.BackgroundColor3.g,tonumber(B.Text/255))
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
			B.Text = "Input"
		end
	end
end)

local open = false
local opening = false
Customize.MouseButton1Click:connect(function()
	if opening == false then
		if open == false then
			open = true
			opening = true
			Customize:TweenPosition(UDim2.new(0.15, 0, 0.1, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,1)
			wait(1)
			opening = false
		else
			open = false
			opening = true
			Customize:TweenPosition(UDim2.new(0.15, 0, 0.9, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,1)
			wait(1)
			opening = false
		end
	end
end)

Frame_2.BackgroundColor3 = Color3.fromRGB(117,0,0)

function removewelds(part)
	for i,v in pairs(part:GetChildren()) do
		if v:IsA('Weld') then v:Destroy() end
	end
end
local droneOriginal = nil
local v = '1255455698'
if game:GetService('RunService'):IsStudio() then
	droneOriginal = game:GetService('InsertService'):LoadAsset(v)["drone boi"]
else
end

function sicthedrone()
	if tracking then
		if tracking:FindFirstChildOfClass('Humanoid') and tracking:FindFirstChildOfClass('Humanoid').Health > 0 then
			pcall(function()
			local lol = tracking
			local ree = Instance.new('IntValue')
			ree.Parent = lol
			ree.Name = "bro ur being hunted LOL"
			local drone = droneOriginal:Clone()
			for i,v in pairs(drone:GetChildren()) do
				if v:IsA('BasePart') then
					v.Transparency = 0.75
				end
			end
			drone.Parent = workspace
			drone:SetPrimaryPartCFrame(CFrame.new(player.Character.Head.Position)+Vector3.new(0,3,0))
			local primary = drone.PrimaryPart
			local pos = Instance.new('BodyPosition',primary)
			pos.MaxForce = Vector3.new(1000,100000,1000)
			local reached = false
			repeat
			pos.Position = lol.Head.Position+Vector3.new(0,(lol.Head.Size.Y/2)+2,0)
			if (primary.Position-(lol.Head.Position+Vector3.new(0,(lol.Head.Size.Y/2)+2,0))).magnitude < 0.5 then
				reached = true
			end
			wait()
			until reached or lol == nil or lol:IsDescendantOf(workspace) == false or lol:FindFirstChild('Head') ==nil or drone:IsDescendantOf(workspace) == false or primary:IsDescendantOf(workspace) == false
			pcall(function()
				if lol and lol:IsDescendantOf(workspace) then
					lol.Head.Anchored = true
					primary.Anchored = true
					drone:SetPrimaryPartCFrame(CFrame.new(lol.Head.Position+Vector3.new(0,(lol.Head.Size.Y/2)+2,0)))
					pcall(function()
						drone.ball.BrickColor = BrickColor.new('Really black')
					end)
					pcall(function()
						drone.laser.BrickColor = BrickColor.new('Really red')
						drone.laser.Material = "Neon"
					end)
					pcall(function()
						drone.cylinder.BrickColor = BrickColor.new('Really black')
					end)
					for i=1,50 do
						for _,v in pairs(drone:GetChildren()) do
							v.Transparency = v.Transparency -0.015
						end
						wait()
					end
					wait(0.5)
					-- 2 - Part
					local obj2 = Instance.new("Part")
					obj2.CanCollide = false
					obj2.LeftSurface = Enum.SurfaceType.Weld
					obj2.TopSurface = Enum.SurfaceType.Weld
					obj2.RightSurface = Enum.SurfaceType.Weld
					obj2.FrontSurface = Enum.SurfaceType.Weld
					obj2.BottomSurface = Enum.SurfaceType.Weld
					obj2.Size = Vector3.new(1, 1, 1)
					obj2.BackSurface = Enum.SurfaceType.Weld
					obj2.Anchored = true
					obj2.BrickColor = BrickColor.new("Really black")
					obj2.Friction = 0.30000001192093
					obj2.Shape = Enum.PartType.Block
					obj2.Parent = drone
					obj2.Material = "Glass"
					local weld = Instance.new('Weld',obj2)
					weld.Part0 = obj2
					weld.Part1 = primary
					weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),0,0)
					obj2.Anchored = false
					
					local obj3 = Instance.new("SpecialMesh")
					obj3.MeshType = Enum.MeshType.FileMesh
					obj3.Scale = Vector3.new(0.25, 1, 0.25)
					obj3.Offset = Vector3.new(0,0.5,0)
					obj3.MeshId = "http://www.roblox.com/asset/?id=1033714"
					obj3.VertexColor = Vector3.new(0,0,0)
					obj3.Parent = obj2
					local spike= obj2
					spike.Name = "spike"
					spike.CFrame = CFrame.new(primary.Position)*CFrame.Angles(math.rad(180),0,0)
					for i=1,5 do
						obj3.Scale = obj3.Scale+Vector3.new(0,0.8,0)
						obj3.Offset = obj3.Offset+Vector3.new(0,0.4,0)
						wait()
					end
					local weld = Instance.new('Weld',lol.Head)
					weld.Part0 = lol.Head
					weld.Part1 = primary
					weld.C1 = CFrame.new(0,-2.5-(lol.Head.Size.Y/2),0)
					local sounn = Instance.new("Sound", lol.Head)
					local lipp = math.random(1, 3)
					if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
					if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
					if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
					sounn:Play()
					local ayybleed = Instance.new('Part',lol)
				ayybleed.Size = Vector3.new()
				ayybleed.Transparency = 0
				ayybleed.Color = Frame_2.BackgroundColor3
				ayybleed.Material = Enum.Material.SmoothPlastic
				ayybleed.CanCollide = false
				ayybleed.CFrame = lol.Head.CFrame
				ayybleed:BreakJoints()
				ayybleed.Name = "ayybleed"
				local attachment1 = Instance.new('Attachment',ayybleed)
				attachment1.Position = Vector3.new(0,lol.Head.Size.Y/1.9,0)
				attachment1.Orientation = Vector3.new(0,0,0)
				local attachment0 = Instance.new('Attachment',lol.Head)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = lol
				end
				local bleedBLEED= coroutine.wrap(function()
					bleed(ayybleed)
				end)
				bleedBLEED()
					pcall(function()
						ragdollpart(lol,"Left Arm")
						ragdollpart(lol,"Left Leg")
						ragdollpart(lol,"Right Arm")
						ragdollpart(lol,"Right Leg")
					end)
					pcall(function()
						ragdollpart(lol,"LeftUpperLeg")
						ragdollpart(lol,"RightUpperLeg")
						ragdollpart(lol,"LeftUpperArm")
						ragdollpart(lol,"RightUpperArm")
					end)
					lol.Head.Anchored = false
					for i,v in pairs(lol:GetChildren()) do
						pcall(function()
							v.Anchored = false
						end)
					end
					primary.Anchored = false
					local reached2 = false
					local repeated = 0
					repeat
						repeated = repeated+1
						pos.Position = player.Character.Head.Position+Vector3.new(0,(player.Character.Head.Size.Y/2)+3,0)+(player.Character.Head.CFrame.lookVector*5)
						if (primary.Position-(player.Character.Head.Position+Vector3.new(0,(player.Character.Head.Size.Y/2)+3,0)+(player.Character.Head.CFrame.lookVector*5))).magnitude < 0.5 then
							reached2 = true
						end
						wait()
					until repeated > 500 or reached2 or lol == nil or lol:IsDescendantOf(workspace) == false or lol:FindFirstChild('Head') ==nil or drone:IsDescendantOf(workspace) == false or primary:IsDescendantOf(workspace) == false
					primary.Anchored = true
					drone:SetPrimaryPartCFrame(CFrame.new(player.Character.Head.Position+Vector3.new(0,(player.Character.Head.Size.Y/2)+3.5,0)+(player.Character.Head.CFrame.lookVector*5)))
					wait(0.5)	
					pcall(function()
						ragdollpart(lol,"Head")
					end)
					obj2:Destroy()
					for i=1,20 do
						for _,v in pairs(drone:GetChildren()) do
							v.Transparency = v.Transparency+0.05
						end
						wait()
					end
				end
			end)
			drone:Destroy()
			end)
		else
			tracking = nil
		end
	end
end

local function setR6()
	local p = game.Players.LocalPlayer
	local c =p.Character
	local num = -0.05
	repeat
		num = num+0.05
		wait(0.05)
	until num >= 1 or c:FindFirstChild('Torso')
	if c:FindFirstChild('R6') == nil and c:FindFirstChild('Torso') == nil then
		local thing = c:WaitForChild('Animate')
		thing.Disabled =true
		thing.Parent = nil
		local thing2 = c:WaitForChild('Health')
		thing2.Disabled =true
		thing2.Parent = nil
		local r = game:GetService("InsertService"):LoadLocalAsset('rbxassetid://1235403914')
		r.Name = p.Name
		r.Parent = workspace
		r.HumanoidRootPart.CFrame = CFrame.new(c.HumanoidRootPart.Position)
		r:WaitForChild("Body Colors")
		c:WaitForChild("Body Colors")
		local b1 = r["Body Colors"]
		local b2 = c["Body Colors"]
		b1.HeadColor = b2.HeadColor
		b1.LeftArmColor = b2.LeftArmColor
		b1.LeftLegColor = b2.LeftLegColor
		b1.RightArmColor = b2.RightArmColor
		b1.RightLegColor = b2.RightLegColor
		b1.TorsoColor = b2.TorsoColor
		r:WaitForChild("Head"):WaitForChild("face").Texture = c.Head.face.Texture
		for _,h in pairs(c:GetChildren()) do
			if h.ClassName == "Accessory" or h.ClassName == "Hat" or h.ClassName == "Shirt" or h.ClassName == "Pants" or h.ClassName == "Shirt Graphic" then
				h.Parent = workspace
				h.Parent = r
			end
		end
		c:Destroy()
		p.Character = r
		workspace.CurrentCamera.CameraSubject = p.Character:FindFirstChildOfClass('Humanoid')
		workspace.CurrentCamera.CameraType = "Custom"
		p.Character:FindFirstChildOfClass('Humanoid').DisplayDistanceType = "None"
		wait()
		p.Character.Animate:Destroy()
		thing.Parent= p.Character
		thing2.Parent= p.Character
		thing2.Disabled = false
		for i,v in pairs(thing:GetChildren()) do
			v:Destroy()
		end
		local aaa = game:GetService("InsertService"):LoadLocalAsset('rbxassetid://01235668916')
		for i,v in pairs(aaa) do
			v.Parent = thing
		end
		thing.Disabled = false
	end
end

function demonnotify(msg,remove,largeoof)
	local coru= coroutine.wrap(function()
	for i,v in pairs(MainGUI:GetChildren()) do
		if v:IsA('TextLabel') then v:Destroy() end
	end
	if msg then
	local TextLabel = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")

	-- Properties

	TextLabel.Parent = MainGUI
	TextLabel.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
	if largeoof == true then
		TextLabel.BackgroundColor3 = Color3.fromRGB(151, 0, 0)
	end
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.1, 0, 0.25, -10)
	TextLabel.Size = UDim2.new(1, 0, 0.1, 0)
	TextLabel.Font = Enum.Font.Antique
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 15
	TextLabel.Transparency = 1
	TextLabel.TextScaled = true
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel.Text = ""
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	uhavga = Instance.new("Sound", MainGUI)
	uhavga.SoundId = "rbxassetid://690607937"
	uhavga.Pitch = 2

	Frame.Parent = TextLabel
	Frame.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
	if largeoof == true then
		Frame.BackgroundColor3 = Color3.fromRGB(117, 0, 0)
	end
	Frame.BorderSizePixel = 0
	Frame.Transparency = 1
	Frame.Position = UDim2.new(0, 0, 1,0)
	Frame.Size = UDim2.new(1, 0, 0, 5)
	for i=1,4 do
		TextLabel.Transparency = TextLabel.Transparency-0.2
		TextLabel.Position = TextLabel.Position+UDim2.new(0,0,0,2)
		Frame.Transparency = Frame.Transparency-0.2
		wait()
	end
	for i=1,#msg do
		if largeoof then
			TextLabel.Position = UDim2.new(0.25, math.random(-50,50), 0.05, -10+math.random(-50,50))
		end
		TextLabel.Text = string.sub(msg,3,i)
		uhavga.Pitch = math.random(20, 50) / 10
		uhavga:Play()
		wait()
	end
	wait(1)
	if remove ~= true then
	for i=1,5 do
		TextLabel.Transparency = TextLabel.Transparency+0.2
		TextLabel.Position = TextLabel.Position-UDim2.new(0,0,0,2)
		Frame.Transparency = Frame.Transparency+0.2
		wait()
	end
	TextLabel:Destroy()
	end
	end
	end)
	coru()
end

function notify(msg,remove,largeoof)
	local coru= coroutine.wrap(function()
	for i,v in pairs(MainGUI:GetChildren()) do
		if v:IsA('TextLabel') then v:Destroy() end
	end
	if msg then
	local TextLabel = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")

	-- Properties

	TextLabel.Parent = MainGUI
	TextLabel.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
	if largeoof == true then
		TextLabel.BackgroundColor3 = Color3.fromRGB(151, 0, 0)
	end
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.2, 0, 0.05, -10)
	TextLabel.Size = UDim2.new(0.6, 0, 0.1, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.FontSize = Enum.FontSize.Size60
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 35
	TextLabel.TextScaled = true
	TextLabel.Transparency = 1
	TextLabel.TextYAlignment = Enum.TextYAlignment.Center
	TextLabel.Text = ""
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Frame.Parent = TextLabel
	Frame.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	if largeoof == true then
		Frame.BackgroundColor3 = Color3.fromRGB(117, 0, 0)
	end
	Frame.BorderSizePixel = 0
	Frame.Transparency = 1
	Frame.Position = UDim2.new(0, 0, 1,0)
	Frame.Size = UDim2.new(1, 0, 0, 5)
	for i=1,8 do
		TextLabel.Transparency = TextLabel.Transparency-0.1
		TextLabel.Position = TextLabel.Position+UDim2.new(0,0,0,1)
		Frame.Transparency = Frame.Transparency-0.1
		wait()
	end
	msg = "  || " .. msg
	for i=1,#msg do
		if largeoof then
			TextLabel.Position = UDim2.new(0.25, math.random(-50,50), 0.05, -10+math.random(-50,50))
		end
		TextLabel.Text = string.sub(msg,1,i)
		wait()
	end
	wait(1)
	if remove ~= true then
	for i=1,8 do
		TextLabel.Transparency = TextLabel.Transparency+0.1
		TextLabel.Position = TextLabel.Position-UDim2.new(0,0,0,2)
		Frame.Transparency = Frame.Transparency+0.1
		wait()
	end
	TextLabel:Destroy()
	end
	end
	end)
	coru()
end
if workspace.FilteringEnabled == false then
	setR6()
	if workspace:PGSIsEnabled() then
		notify('Press P to equip || Created by mustardfoot and tollonis.',true)
	else
		notify('(this game is really old or something and has the shitty physics so a lot of things wont work sorry) Press P to equip. Created by mustardfoot and Tollonis.',true)
	end
else
	notify("it's filtering enabled lol it literally wont work here")
end

local handProperties = {
	{"LimitsEnabled", true};
	{"UpperAngle",0};
	{"LowerAngle",0};
}
local shinProperties = {
	{"LimitsEnabled", true};
	{"UpperAngle", 0};
	{"LowerAngle", -75};
}
local footProperties = {
	{"LimitsEnabled", true};
	{"UpperAngle", 15};
	{"LowerAngle", -45};
}

cfn,ang,mr,int=CFrame.new,CFrame.Angles,math.rad,Instance.new
bc=BrickColor.new
local minimumsize = Vector3.new(0.6,0.6,0.6)
local surface_between_splitted_parts = 'SmoothNoOutlines'
local fragmentable = workspace
local list = {}
local brickcount = 0
local storage = {}
local fillup = 1000
local maximumstorage = 2000
local storage_position = Vector3.new(0,0,5000)
local stored_partsize = Vector3.new(1,1,1)
local parts_created_per_frame = 5

Low.MouseButton1Click:connect(function()
	minimumsize = Vector3.new(1,1,1)
	Low.TextTransparency = 0
	Medium.TextTransparency = 0.75
	High.TextTransparency = 0.75
end)
Medium.MouseButton1Click:connect(function()
	minimumsize = Vector3.new(0.6,0.6,0.6)
	Medium.TextTransparency = 0
	Low.TextTransparency = 0.75
	High.TextTransparency = 0.75
end)
High.MouseButton1Click:connect(function()
	minimumsize = Vector3.new(0.2,0.2,0.2)
	High.TextTransparency = 0
	Medium.TextTransparency = 0.75
	Low.TextTransparency = 0.75
end)
function literallyafuckingnuke()
	notify("secret unlocked || literally a fucking nuke")
	ohshit = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
	ohshit.SoundId = "rbxassetid://690607937"
	ohshit.PlaybackSpeed = 0.7
	ohshit.Volume = 1
	ohshit:Play()
	wait(2.5)
	sound2 = Instance.new("Sound", game.Workspace)
	sound2.SoundId = "rbxassetid://1534314061"
	sound2.PlaybackSpeed = 0.8
	sound2.Volume = 4
	sound2:Play()
	wait(2.5)
	
	local disorientd = Instance.new('BloomEffect',game:GetService('Lighting'))
	disorientd.Intensity = 0.45
	disorientd.Size = 0
	disorientd.Threshold = 0.8
	
	local color = Instance.new('ColorCorrectionEffect',game:GetService('Lighting'))
	color.Brightness = 0
	
	for i = 1, 60 do
		disorientd.Size = disorientd.Size + 1
		color.Brightness = color.Brightness + 0.005
		wait()
	end
	color:Destroy()
	disorientd:Destroy()
	
	local sound = Instance.new('Sound',game.Workspace)
	sound.SoundId = 'rbxassetid://926261373'
	sound.Volume = 2
	sound.PlaybackSpeed = 0.75
	sound.TimePosition = 0.05
	raped = Instance.new("Sound", game.Workspace)
	raped.SoundId = "rbxassetid://903641424"
	raped.PlaybackSpeed = 0.8
	raped.Volume = 4
	raped:Play()
	sound:Play()
	local blur = Instance.new('BlurEffect',game:GetService('Lighting'))
	blur.Size = 0
	local color = Instance.new('ColorCorrectionEffect',game:GetService('Lighting'))
	color.Brightness = 1
	blur.Size = 56
	local bloom = Instance.new('BloomEffect',game:GetService('Lighting'))
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA('BasePart') then
			v.Material = Enum.Material.CorrodedMetal
			if v.Name ~= "Baseplate" then
				v:BreakJoints()
				v.Velocity = Vector3.new(math.random(-150, 150), math.random(0, 150), math.random(-150, 150))
				fatniggafuck = Instance.new("Trail", v)
				fatniggafuck.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 63, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 31, 0))})
				fatniggafuck.LightEmission = 1
				fatniggafuck.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
				fatniggafuck.Lifetime = 9
				fatniggafuck.FaceCamera = false
				fatniggafuck.Texture = "rbxassetid://286293993"
				
				p1 = v.Size.Y / 3
				p2 = p1 - (p1*3)
				
				at0 = Instance.new("Attachment", v)
				at0.Position = Vector3.new(p1, p1, p1)
				at1 = Instance.new("Attachment", v)
				at1.Position = Vector3.new(p2, p2, p2)
				fatniggafuck.Attachment0 = at0
				fatniggafuck.Attachment1 = at1
			end
		end
		if v:IsA('Humanoid') then
			v.Health = 0
			fucked = v.Parent
			for i, e in pairs(fucked:GetChildren()) do
				if e:IsA("Part") then
					e.BrickColor = BrickColor.new("Maroon")
					e.Material = Enum.Material.Pebble
					e.Velocity = Vector3.new(math.random(-50, 50), math.random(0, 50), math.random(-50, 50))
				end
			end
		end
	end
	wait(1)
	local fallout = Instance.new('ColorCorrectionEffect',game:GetService('Lighting'))
	fallout.TintColor = Color3.fromRGB(255,147,58)
	fallout.Brightness = -.2
	local disoriented = Instance.new('BloomEffect',game:GetService('Lighting'))
	disoriented.Intensity = 0.45
	disoriented.Size = 56
	disoriented.Threshold = 0.8
	for i=1,50 do
		blur.Size = blur.Size - 1.12
		color.Brightness = color.Brightness-0.02
		wait()
	end
	blur:Destroy()
	color:Destroy()
end
function kick(PLAYER2)
	spawn(function()
		local function Kick(PLAYER)
			if PLAYER and PLAYER.Character and PLAYER.Character:FindFirstChild('HumanoidRootPart') then
				PLAYER.Character.HumanoidRootPart.Position = Vector3.new(math.random(999000, 1001000), 10000, 0)
				local Plat = Instance.new('SkateboardPlatform', PLAYER.Character) Plat.Position = PLAYER.Character.HumanoidRootPart.Position
				Plat.Name = 'IYkick'
				Plat.Size = Vector3.new(100, 1, 100)
				local PART = Instance.new('Part', PLAYER.Character)
				PART.Position = Plat.Position - Vector3.new(0, 3, 0)
				PART.Size = Vector3.new(100, 1, 100)
				PART.Anchored = true

				PART.Transparency = 1
				Plat.Transparency = 1

				repeat wait(1)
					if PLAYER.Character and PLAYER.Character:FindFirstChild('HumanoidRootPart') then
						Plat.Position = PLAYER.Character.HumanoidRootPart.Position
					end
				until PLAYER.Character == nil or PLAYER.Character:FindFirstChild('HumanoidRootPart') == nil or Plat == nil
			end
		end
		spawn(function()
		repeat wait(1)
			Kick(PLAYER2)
		until not game:GetService('Players'):findFirstChild(PLAYER2.Name)
		end)
		Kick(PLAYER2)
	end)
end

function fragmentate(cframe,size,color,explosion_position,explosion_blastradius,backsurface,bottomsurface,frontsurface,leftsurface,rightsurface,topsurface,transparency,reflectance,material,anchored,heck,ree,same)
    local xi = size.X >= minimumsize.X*(1+explosion_blastradius/16) and 2 or 1
    local yi = size.Y >= minimumsize.Y*(1+explosion_blastradius/16) and 2 or 1
    local zi = size.Z >= minimumsize.Z*(1+explosion_blastradius/16) and 2 or 1
    if xi == 1 and yi == 1 and zi == 1 or (cframe.p-explosion_position).magnitude > size.magnitude/2 + explosion_blastradius then
        if xi == 1 and yi == 1 and zi == 1 then return end
            local p = Instance.new("Part",fragmentable)
            p.BrickColor = color
            p.FormFactor = "Custom"
			if heck then
            	p.Anchored = anchored
			else
				p.Anchored = false
			end
            p.Size = size
            p.BackSurface = backsurface
            p.BottomSurface = bottomsurface
            p.FrontSurface = frontsurface
            p.LeftSurface = leftsurface
            p.RightSurface = rightsurface
			if heck ~= true or ree == true then
				local int = Instance.new('IntValue',p)
				int.Name = 'already broken u pleb'
			end
            p.TopSurface = topsurface
			if redmode and ree and same ~= true then
				spawn(function()
					repeat
						p.Color = Color3.new(1,0,0)
						p.Material = Enum.Material.Neon
						wait()
					until p.Color == Color3.new(1,0,0) and p.Material == Enum.Material.Neon
				end)
			end
            p.Transparency = transparency
            p.Material = material
			if heck ~= true or ree then
				game:GetService('Debris'):AddItem(p,10)
			end
            p.CFrame = cframe
            p.Reflectance = reflectance
            p:BreakJoints()
        return
    end
    local mody = math.random(-125,125)/1000
    for y = 1,yi do
        if math.random()> 0.5 then
            local modx = math.random(-125,125)/1000
            for x = 1,xi do
                local modz = math.random(-125,125)/1000
                for z = 1,zi do --offset = x/xi-0.75+modx)
                    fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
                        Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
                        zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z),color,explosion_position,explosion_blastradius,
                        z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
                        z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
                        y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material,anchored,heck,ree,same)
                end
               
            end
        else
            local modz = math.random(-125,125)/1000
            for z = 1,zi do
                local modx = math.random(-125,125)/1000
                for x = 1,xi do
                    fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
                        Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
                        zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z),color,explosion_position,explosion_blastradius,
                        z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
                        z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
                        y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material,anchored,heck,ree,same)
                end
            end
        end
    end            
end
 
function start_fragmentation(position,radius,bigoof,smoloof,samecolor)
	if bigoof then
		workspace:FindFirstChildOfClass('Terrain'):FillBall(position,radius*2,Enum.Material.Air)
	end
    local search = Region3.new(position-Vector3.new(radius,radius,radius)*1.1,position+Vector3.new(radius,radius,radius)*1.1)
    repeat
    local finish = false
    local parts = workspace:FindPartsInRegion3WithIgnoreList(search,list,100)
    for i = 1,#parts do
        table.insert(list,1,parts[i])
    end
    finish = true
    until #parts < 100 and finish
    local t = tick()
    for i = 1,#list do
        local p = list[i]
        if p:FindFirstChild('already broken u pleb') == nil and p:IsA('CornerWedgePart') == false and p:IsA('TrussPart') == false and p:IsA('WedgePart') == false and p.Parent and p.Parent.Name ~= "Projectile" and p:IsDescendantOf(fragmentable) and (p:GetMass()<50000 or p.Anchored == true) and p.Name ~= "Baseplate" and (p.Transparency>0.285 or (bigoof == true and (samecolor ~= true or p.Parent:FindFirstChildOfClass('Humanoid')))) and p.Name~='Base' and (p.Parent:FindFirstChildOfClass('Humanoid') == nil or smoloof == true) and (p.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil or smoloof == true) then
			if bigoof ~= true then
				local thingy = p
				local humm = p.Parent
				thingy.Parent = nil
				spawn(function()
					wait(10)
					thingy.Parent = humm
				end)
			else
				p:Destroy()
			end
            fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material,p.Anchored,bigoof,smoloof,samecolor)
        end
    end
    list = {}
end

function bleed(frick,OwO)
	local good = true
	frick.AncestryChanged:connect(function()
		good = false
	end)
    while frick.Parent ~= nil and good == true do
    local reeee = coroutine.wrap(function()
	if #curbloodnum < maxbloodnum then
    local thing = Instance.new('Part',workspace)
    thing.Size = Vector3.new(0.2,0.2,0.2)
    thing.CFrame = frick.CFrame
    thing.Transparency = 1
    thing.BrickColor = BrickColor.new(Frame_2.BackgroundColor3)
    thing.Material = Enum.Material.SmoothPlastic
    thing.Name = "Blood"
    thing.CanCollide =false
	thing:BreakJoints()
	local int = Instance.new('IntValue',thing)
	int.Name = 'already broken u pleb'
	table.insert(curbloodnum,thing)
    local rawrxd = Instance.new('BodyForce',thing)
    rawrxd.Force = frick.CFrame.upVector*(math.random()*2)+Vector3.new(math.random(-5, 5)/10,1.5,0)
    local coru = coroutine.wrap(function()
        wait(0.01)
        rawrxd:Destroy()
    end)
    coru()
    local ree = Instance.new('ParticleEmitter',thing)
	if OwO ~= true then
    	ree.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Frame_2.BackgroundColor3),ColorSequenceKeypoint.new(1,Frame_2.BackgroundColor3)})
	else
		ree.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,1,1)),ColorSequenceKeypoint.new(1,Color3.new(1,1,1))})
	end
    ree.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.1),NumberSequenceKeypoint.new(1,0.1)})
    ree.Texture = 'rbxassetid://867743272'
    ree.Lifetime = NumberRange.new(0.4)
    ree.Rate = 50
    ree.LockedToPart = true
    ree.Speed = NumberRange.new(0, 2)  
    thing.Touched:connect(function(tou)
        if tou.Parent and tou.Name ~= "ayybleed" and tou.Parent:IsA('Tool') == false and tou.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Name ~= "Blood" and tou.Parent.Name ~= "Projectile" and tou.Parent.Name ~= "big ass knife" and tou.Parent ~= player.Character and tou.Parent.ClassName ~= "Accessory" and tou.Parent.Name ~= "bitch ass knife" and tou.Parent.Name ~= 'handle' and tou.Name ~= "blade" and tou.Name ~= 'handle' and tou.Name ~= "Projectile" and tou.Parent.Name ~= "Projectile" then
            local pos = Vector3.new(thing.Position.X,(tou.Position.Y+(tou.Size.Y/2))+0.02,thing.Position.Z)
			local Point1 = pos-Vector3.new(0.01,0.01,0.01)
			local Point2 = pos+Vector3.new(0.01,0.01,0.01)
			local Region = Region3.new(Point1,Point2)
			for _,Part in pairs(workspace:FindPartsInRegion3(Region,nil,math.huge)) do
				if Part.Name == "BloodPuddle" then
					tou = Part
				end
			end
			for i,v in pairs(curbloodnum) do
				if v == thing then
					table.remove(curbloodnum,i)
				end
			end
            thing:Destroy()
            if tou.Name == "BloodPuddle" then
				if tou.Size.X < 1 then
				pcall(function()
					tou.Sound:Play()
				end)
				end
                local reee = tou.CFrame
                if tou.Transparency > -0.2 then
                    tou.Transparency = tou.Transparency -0.1
                end
                if tou.Size.X < 5 then
                    tou.Size = tou.Size+Vector3.new(0.1,0,0.1)
                    tou.CFrame = reee
                end
            elseif tou.CanCollide == true then
                local bloodlol = Instance.new('Part',workspace)
				local sound = Instance.new('Sound',bloodlol)
				sound.SoundId = 'rbxassetid://685857471'
				sound.Volume = 0.025
				sound:Play()
                bloodlol.Size=Vector3.new(1,0.2,1)
                bloodlol.Name = "BloodPuddle"
                bloodlol.Anchored = true
                bloodlol.CanCollide = false
                bloodlol.Material = Enum.Material.SmoothPlastic
				if OwO ~= true then
                	bloodlol.Color = Frame_2.BackgroundColor3
				else
					bloodlol.Color = Color3.new(1,1,1)
				end
				local int = Instance.new('IntValue',bloodlol)
				int.Name = 'already broken u pleb'
                local cyl = Instance.new('CylinderMesh',bloodlol)
                cyl.Scale = Vector3.new(1,0.1,1)
                bloodlol.CFrame = CFrame.new(pos)
                local coru=coroutine.wrap(function()
                    while bloodlol.Parent ~= nil do
                        if bloodlol.Transparency < 1 then
                            bloodlol.Transparency = bloodlol.Transparency+0.05
                        else
                            bloodlol:Destroy()
                        end
                        wait(0.1)
                    end
                end)
                coru()
            end
        end
    end)
    local coru = coroutine.wrap(function()
        wait(1)
		for i,v in pairs(curbloodnum) do
			if v == thing then
				table.remove(curbloodnum,i)
			end
		end
        thing:Destroy()
    end)
    coru()
	end
    end)
    reeee()
    wait()
    end
end

function stun(char)
	local found = false
	pcall(function()
		char:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Physics)
	end)
	for i,v in pairs(rekt) do
		if v == char then
			found = true
		end
	end
	if found == false then
		table.insert(rekt,char)
	end
end
function unstun(char)
	for i,v in pairs(rekt) do
		if v == char then
			if v:FindFirstChildOfClass('Humanoid') and v:FindFirstChildOfClass('Humanoid').Health>0 then
				v:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Running)
				v:FindFirstChildOfClass('Humanoid').PlatformStand = false
				v:FindFirstChildOfClass('Humanoid').Sit = false
				v:FindFirstChildOfClass('Humanoid').JumpPower = 50
				v:FindFirstChildOfClass('Humanoid').Jump = true
				v:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
				v:FindFirstChildOfClass('Humanoid').Name = "Humanoid"
			end
			table.remove(rekt,i)
		end
	end
end
function infect(BRO)
	if BRO ~= player.Character and BRO:FindFirstChildOfClass('Humanoid') and BRO:FindFirstChildOfClass('Humanoid').Health > 0 and BRO:FindFirstChild('this boi infected') == nil then
		local thisboi = Instance.new('IntValue',BRO)
		thisboi.Name = 'this boi infected'
		for i,v in pairs(BRO:GetDescendants()) do
			if v:IsA('BasePart') then
				v.BrickColor = BrickColor.new("Camo")
				v.Changed:connect(function(prop)
					if prop == "BrickColor" then
						v.BrickColor = BrickColor.new("Camo")
					end
				end)
			end
		end
		pcall(function()
			table.insert(getdamaged,BRO)
			BRO.Health:Destroy()
		end)
		for i,v in pairs(BRO:GetChildren()) do
            if v:IsA('Shirt') or v:IsA('Pants') or v:IsA('CharacterMesh') or v:IsA('Accessory') then
                v:Destroy()
            end
        end
        local shirt = Instance.new('Shirt',BRO)
        shirt.ShirtTemplate = 'rbxassetid://518181941'
        local pants = Instance.new('Pants',BRO)
        pants.PantsTemplate = 'rbxassetid://523716071'
        if BRO:FindFirstChild('Head') and BRO.Head:FindFirstChildOfClass('Decal') then
            BRO.Head:FindFirstChildOfClass('Decal'):Destroy()
        end
        if BRO:FindFirstChild('Head') then
			spawn(function()
				wait(math.random(1,100)/50)
				local UM = Instance.new('Sound',BRO.Head)
				UM.Pitch = 0.75
				UM.SoundId = 'rbxassetid://130764607'
				UM.Looped = true
				UM.Volume = 1
				UM.MaxDistance = 200
				UM:Play()
			end)
            local face = Instance.new('Decal',BRO.Head)
            face.Texture = 'rbxassetid://629946036'
            if BRO.Head:FindFirstChildOfClass('SpecialMesh') then
                BRO.Head:FindFirstChildOfClass('SpecialMesh').MeshType = Enum.MeshType.Head
                BRO.Head:FindFirstChildOfClass('SpecialMesh').Scale = Vector3.new(1.25,1.25,1.25)
            end
        end
        if BRO:FindFirstChild('Torso') or BRO:FindFirstChild('UpperTorso') then
            if BRO:FindFirstChild('Left Arm') then
				pcall(function()
                local larm = Instance.new('Weld',BRO.Torso)
                larm.Name = 'Left Zombie'
                larm.Part0 = BRO.Torso
                larm.Part1 = BRO["Left Arm"]
                larm.C0 = CFrame.new(-1.5, 0.5, -0.500000954)*CFrame.Angles(math.rad(90),0,0)
                BRO["Left Arm"].Touched:connect(function(hit)
                    if hit.Parent:FindFirstChildOfClass('Humanoid') then
                        infect(hit.Parent)
                    end
                end)
				end)
            elseif BRO:FindFirstChild('LeftUpperArm') then
				pcall(function()
                local larm = Instance.new('Weld',BRO.UpperTorso)
                larm.Name = 'Left Zombie'
                larm.Part0 = BRO.UpperTorso
                larm.Part1 = BRO["LeftUpperArm"]
                larm.C0 = CFrame.new(-1.5, 0.5, -0.500000954)*CFrame.Angles(math.rad(90),0,0)
                if BRO:FindFirstChild('LeftHand') then
                    BRO["LeftHand"].Touched:connect(function(hit)
                        if hit.Parent:FindFirstChildOfClass('Humanoid') then
                            infect(hit.Parent)
                        end
                    end)
                end
				end)
            end
            if BRO:FindFirstChild('Right Arm') then
				pcall(function()
                local larm = Instance.new('Weld',BRO.Torso)
                larm.Name = 'Right Zombie'
                larm.Part0 = BRO.Torso
                larm.Part1 = BRO["Right Arm"]
                larm.C0 = CFrame.new(1.5, 0.5, -0.500000954)*CFrame.Angles(math.rad(90),0,0)
                BRO["Right Arm"].Touched:connect(function(hit)
                    if hit.Parent:FindFirstChildOfClass('Humanoid') then
                        infect(hit.Parent)
                    end
                end)
				end)
            elseif BRO:FindFirstChild('RightUpperArm') then
				pcall(function()
                local larm = Instance.new('Weld',BRO.UpperTorso)
                larm.Name = 'Left Zombie'
                larm.Part0 = BRO.UpperTorso
                larm.Part1 = BRO["RightUpperArm"]
                larm.C0 = CFrame.new(1.5, 0.5, -0.500000954)*CFrame.Angles(math.rad(90),0,0)
                if BRO:FindFirstChild('RightHand') then
                    BRO["RightHand"].Touched:connect(function(hit)
                        if hit.Parent:FindFirstChildOfClass('Humanoid') then
                            infect(hit.Parent)
                        end
                    end)
                end
				end)
            end
        end
	end
end
function fire(part2)
	local part = part2.Parent:FindFirstChild('Torso')
	if part == nil then part = part2.Parent:FindFirstChild('UpperTorso') end
	if part.Parent ~= player.Character and part.Parent:FindFirstChildOfClass('Humanoid') and part and part:FindFirstChild('Flame') == nil then
		pcall(function()
			local umm = Instance.new('Sound',part.Parent.Head)
			umm.SoundId = 'rbxassetid://192104941'
			umm.MaxDistance = 100
			umm.SoundId = 'rbxassetid://192104941'
			umm.Volume = 5
			umm:Play()
			part.Parent:FindFirstChildOfClass('Humanoid').Died:connect(function()
				umm:Stop()
			end)
			for i,v in pairs(part.Parent.Head:GetChildren()) do
				if v:IsA('Decal') then v:Destroy() end
			end
			local AAAA = Instance.new('Decal',part.Parent.Head)
			AAAA.Texture = 'rbxassetid://321234100'
		end)
		for i,v in pairs(part.Parent:GetDescendants()) do
			if v:IsA('BasePart') then
				v.BrickColor = BrickColor.new("Black")
				v.Touched:connect(function(hit)
					if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') then
						fire(hit)
					end
				end)
				v.Changed:connect(function(prop)
					if prop == "BrickColor" then
						part.BrickColor = BrickColor.new("Black")
					end
				end)
			end
		end
		-- 3 - Flame
local obj3 = Instance.new("ParticleEmitter")
obj3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1, 0.494118, 0.239216)),ColorSequenceKeypoint.new(1,Color3.new(1, 0.572549, 0.223529))})
obj3.ZOffset = 3
obj3.Lifetime = NumberRange.new(2,2.25)
obj3.Speed = NumberRange.new(2,2)
obj3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,3,1.5),NumberSequenceKeypoint.new(1,1.1200000047684,0.31999999284744)})
obj3.Acceleration = Vector3.new(0, 2.5, 0)
obj3.RotSpeed = NumberRange.new(-200,200)
obj3.Rate = 100
obj3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.10000000149012,0.5,0.10000000149012),NumberSequenceKeypoint.new(0.25,0.25,0.25),NumberSequenceKeypoint.new(0.5,0.25,0.25),NumberSequenceKeypoint.new(0.80000001192093,0.5,0.10000002384186),NumberSequenceKeypoint.new(1,1,0)})
obj3.Name = "Flame"
obj3.LightEmission = 0.75
obj3.Rotation = NumberRange.new(-180,180)
obj3.Texture = "rbxassetid://716847870"
obj3.Parent = part

-- 4 - Sparks
local obj4 = Instance.new("ParticleEmitter")
obj4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1, 0.72549, 0.482353)),ColorSequenceKeypoint.new(1,Color3.new(1, 0.72549, 0.482353))})
obj4.ZOffset = 3
obj4.Lifetime = NumberRange.new(1,3)
obj4.Speed = NumberRange.new(2,3)
obj4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.29899999499321,0.075000002980232,0),NumberSequenceKeypoint.new(1,0.025000000372529,0)})
obj4.Acceleration = Vector3.new(0, 2.5, 0)
obj4.Rate = 60
obj4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.125,0,0),NumberSequenceKeypoint.new(0.75,0,0),NumberSequenceKeypoint.new(1,1,0)})
obj4.Name = "Sparks"
obj4.SpreadAngle = Vector2.new(22.5, 22.5)
obj4.LightEmission = 0.5
obj4.Rotation = NumberRange.new(-180,180)
obj4.Texture = "http://www.roblox.com/asset/?id=301261210"
obj4.Parent = part
		spawn(function()
			wait(10)
			ragdollpart(part.Parent,"Head")
		end)
	end
end

function recurse(root,callback,i)
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)
		
		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end
	
	return i
end

function ragdollJoint(character, part0, part1, attachmentName, className, properties)
	if character:FindFirstChild("RagdollConstraint"..part1.Name) == nil then
	if character:FindFirstChild('HumanoidRootPart')then
		character.HumanoidRootPart.CanCollide = false
	end
	for i,v in pairs(character:GetChildren()) do
		if v:IsA("MeshPart") and (v.MeshId == 'http://www.roblox.com/asset/?id=553602991' or v.MeshId == 'http://www.roblox.com/asset/?id=553602977' or v.MeshId == 'http://www.roblox.com/asset/?id=553602987') then
			v.Size = Vector3.new(1,1,1)
		end
	end
	recurse(character, function(_,v)
		if v:IsA("Attachment") and v.Parent.Name ~= "ayybleed" then
			v.Axis = Vector3.new(0, 1, 0)
			v.SecondaryAxis = Vector3.new(0, 0, 1)
			v.Rotation = Vector3.new(0, 0, 0)
		end
	end)
	if part1:FindFirstChildOfClass('Motor6D') then
		part1:FindFirstChildOfClass('Motor6D'):Destroy()
	end
	if attachmentName ~= "NeckAttachment" then
		attachmentName = attachmentName.."RigAttachment"
	end
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name
	if character:FindFirstChildOfClass('Humanoid').Health > 0 then
	local collidepart = Instance.new('Part',part1)
	collidepart.Size = part1.Size/2
	if string.find(string.lower(part1.Name),"upper") then
		if string.find(string.lower(part1.Name),"leg") then
			collidepart.Size = part1.Size/3
		else
			collidepart.Size = part1.Size/2.5
		end
	end
	collidepart.CanCollide = true
	collidepart.Name = "Collision"
	collidepart.Anchored = false
	collidepart.Transparency = 1
	collidepart.CFrame = part1.CFrame
	collidepart:BreakJoints()
	local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	if string.find(string.lower(part1.Name),"upper") then
		if string.find(string.lower(part1.Name),"leg") then
			attachment0.Position = Vector3.new(0,0.01,0)
		else
			attachment0.Position = Vector3.new(0,0.25,0)
		end
	else
		attachment0.Position = Vector3.new(0,-0.1,0)
	end
	end
	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end
	
	constraint.Parent = character
	end
end

function R6ragdollJoint(character,limbname,attached,heded,spaz)
	pcall(function()
	if limbname == "Right Arm" and character:FindFirstChild("Right Arm") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Right ArmRagdollConstraint") == nil and character[limbname]:FindFirstChild("Right ArmRagdollConstraint") == nil then
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(character.Torso.Size.X*0.75,character.Torso.Size.Y*0.384,0)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(character[limbname].Size.X*0.086, character[limbname].Size.Y*0.3775, 0)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "RightArmRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		if spaz ~= true then
			collidepart.Size = part1.Size/1.5
		else
			collidepart.Size = part1.Size*1.5
		end
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Right Shoulder') then
			character.Torso:FindFirstChild('Right Shoulder'):Destroy()
		end
	elseif limbname == "Left Arm" and character:FindFirstChild("Left Arm") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Left ArmRagdollConstraint") == nil and character[limbname]:FindFirstChild("Left ArmRagdollConstraint") == nil then
		
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(character.Torso.Size.X*-0.75,character.Torso.Size.Y*0.384,0)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(character[limbname].Size.X*-0.086, character[limbname].Size.Y*0.3775, 0)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "LeftArmRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		if spaz ~= true then
			collidepart.Size = part1.Size/1.5
		else
			collidepart.Size = part1.Size*1.5
		end
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Left Shoulder') then
			character.Torso:FindFirstChild('Left Shoulder'):Destroy()
		end
		
	elseif limbname == "Right Leg" and attached ~= false and character:FindFirstChild("Right Leg") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Right LegRagdollConstraint") == nil and character[limbname]:FindFirstChild("Right LegRagdollConstraint") == nil then
		stun(character)
		
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(character.Torso.Size.X*0.2, character.Torso.Size.Y*-0.621, 0)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(character[limbname].Size.X*-0.086, character[limbname].Size.Y*0.3775, 0)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "RightLegRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		if spaz ~= true then
			collidepart.Size = part1.Size/1.5
		else
			collidepart.Size = part1.Size*1.5
		end
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Right Hip') then
			character.Torso:FindFirstChild('Right Hip'):Destroy()
		end
		
	elseif limbname == "Left Leg" and attached ~= false and character:FindFirstChild("Left Leg") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Left LegRagdollConstraint") == nil and character[limbname]:FindFirstChild("Left LegRagdollConstraint") == nil then
		stun(character)
		
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(character.Torso.Size.X*-0.3, character.Torso.Size.Y*-0.621, 0)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(character[limbname].Size.X*-0.086, character[limbname].Size.Y*0.3775, 0)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "LeftLegRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		if spaz ~= true then
			collidepart.Size = part1.Size/1.5
		else
			collidepart.Size = part1.Size*1.5
		end
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Left Hip') then
			character.Torso:FindFirstChild('Left Hip'):Destroy()
		end
		
	elseif (limbname == "Head" or limbname == "Torso") and character:FindFirstChildOfClass('Humanoid') and character:FindFirstChild("Head") and character:FindFirstChild("Torso") and character.Head:FindFirstChild("Neck") == nil then
		local sound = Instance.new('Sound',character["Head"])
		sound.SoundId = 'rbxassetid://178646271'
		sound.MaxDistance = 500
		sound.Volume = 2
		character["Head"].Touched:connect(function(v)
			if v.CanCollide and v:IsDescendantOf(character) == false and character["Head"].Velocity.magnitude > 10 then
				sound:Play()
			end
		end)
		spawn(function()
			if banning then
				local um = game:GetService('Players'):GetPlayerFromCharacter(character)
				wait(4)
				if um then
					table.insert(bans,um.Name)
					kick(um)
				end
			end
		end)
		if character:FindFirstChildOfClass('Humanoid') then
			character:FindFirstChildOfClass('Humanoid').Health = 0
			character:BreakJoints()
		end
		spawn(function()
			while character and character.Parent ~= nil and character:FindFirstChildOfClass('Humanoid') do
				if character and character:FindFirstChildOfClass('Humanoid') then
					character:FindFirstChildOfClass('Humanoid').Health = 0
					character:BreakJoints()
				end
				wait()
			end
		end)
		if character:FindFirstChild('HumanoidRootPart') then
			character.HumanoidRootPart:Destroy()
		end
		if game:GetService('Players'):GetPlayerFromCharacter(character) == nil then
			game:GetService('Debris'):AddItem(character,10)
		end
		for _,child in next,character:GetChildren() do
		if child:IsA("Accoutrement") then
			for _,part in next,child:GetChildren() do
				if part:IsA("BasePart") then
					for _,c in pairs(part:GetChildren()) do
						if c:IsA('Weld') then c:Destroy() end
					end
					local attachment1 = part:FindFirstChildOfClass("Attachment")
					local attachment0 = getAttachment0(character,attachment1.Name)
					if attachment0 and attachment1 then
						local constraint = Instance.new("HingeConstraint")
						constraint.Attachment0 = attachment0
						constraint.Attachment1 = attachment1
						constraint.LimitsEnabled = true
						constraint.UpperAngle = 0
						constraint.LowerAngle = 0
						constraint.Parent = character
					end
				end
			end
		end
		end
		for i,v in pairs(character:GetChildren()) do
			if v:IsA('MeshPart') or v:IsA('BasePart') then
				for _,c in pairs(v:GetChildren()) do
					if c.Name == "Collision" then c:Destroy() end
				end
			end
		end
		if character.Torso:FindFirstChild('Neck') then
			character.Torso.Neck:Destroy()
		end
		if character:FindFirstChild('Torso') then
			local collidepart = Instance.new('Part',character.Torso)
			if spaz ~= true then
			collidepart.Size = character.Torso.Size/1.5
		else
			collidepart.Size = character.Torso.Size*1.5
		end
			collidepart.CanCollide = true
			collidepart.Name = "Collision"
			collidepart.Anchored = false
			collidepart.Transparency = 1
			collidepart.CFrame = character.Torso.CFrame
			collidepart:BreakJoints()
			local attachment0 = Instance.new('Attachment',character.Torso)
			local attachment1 = Instance.new('Attachment',collidepart)
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
		end
		if character:FindFirstChild('Torso') and character:FindFirstChild('Head') then
			local neck = Instance.new('Attachment',character.Torso)
			neck.Name = "NeckAttachment"
			neck.Position = Vector3.new(0, character.Torso.Size.Y/2, 0)
			ragdollJoint(character,character.Torso, character.Head, "NeckAttachment", "Hinge", {
			{"LimitsEnabled",true};
			{"UpperAngle",50};
			{"LowerAngle",-50};
			})
		end
		
		if attached ~= false then
			ragdollpart(character, "Right Leg")
			ragdollpart(character, "Left Leg")
		end
		ragdollpart(character, "Right Arm")
		ragdollpart(character, "Left Arm")
	end
	end)
end

function getAttachment0(character,attachmentName)
	for _,child in next,character:GetChildren() do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment
		end
	end
end

local function buildJoint(parentAttachment, partForJointAttachment)
    local jointName = parentAttachment.Name:gsub("RigAttachment", "")
    local motor = partForJointAttachment.Parent:FindFirstChild(jointName)
    if not motor then
        motor = Instance.new("Motor6D")
    end
	motor.Name = jointName
 
    motor.Part0 = parentAttachment.Parent
    motor.Part1 = partForJointAttachment.Parent
 
	motor.C0 = parentAttachment.CFrame
    motor.C1 = partForJointAttachment.CFrame
 
    motor.Parent = partForJointAttachment.Parent
end
 
function buildRigFromAttachments(last, part)
	for _, attachment in pairs(part:GetChildren()) do
		if attachment:IsA("Attachment") and string.find(attachment.Name, "RigAttachment") then
			for _, sibling in pairs(part.Parent:GetChildren()) do
				if sibling ~= part and sibling ~= last then
					local matchingAttachment = sibling:FindFirstChild(attachment.Name)
					if matchingAttachment then
						buildJoint(attachment, matchingAttachment)
						buildRigFromAttachments(part, matchingAttachment.Parent)
					end
				end
			end
		end
	end
end
 
local function getOldCharacterMesh(character, newCharacterMesh)
    for _, obj in pairs(character:GetChildren()) do
        if obj:IsA("CharacterMesh") and obj.BodyPart == newCharacterMesh.BodyPart then
            return obj
        end 
    end
    return nil
end
 
function applyBodyPart(character, r15Folder, r6Folder)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
	if (character:FindFirstChild('HumanoidRootPart') == nil and character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15) or humanoid == nil then return end
    if humanoid.RigType == Enum.HumanoidRigType.R15 then
        for _, part in pairs(r15Folder:GetChildren()) do
            local oldPart = character:FindFirstChild(part.Name)
            part:Clone().Parent = character
            oldPart.Name = ""
            oldPart:Destroy()
        end
        buildRigFromAttachments(nil, character.HumanoidRootPart)
    else
        for _, characterMesh in pairs(r6Folder:GetChildren()) do
            local oldCharacterMesh = getOldCharacterMesh(character, characterMesh)
            if oldCharacterMesh then
                oldCharacterMesh:Destroy()
            end
            characterMesh.Parent = character
        end
    end
end

function ragdollpart(character,partname,attached,heded,spaz)
	spawn(function()
	if character == nil or character:FindFirstChild('HE BEEN SPOOKED') or type(partname) ~= "string" then return end
	local foundree = false
	for i,v in pairs(character:GetDescendants()) do
		if v.Name == partname then
			foundree = true
		end
	end
	if partname == "HumanoidRootPart" or (character:FindFirstChild(partname) == nil and foundree == true) then
		if character:FindFirstChild('Torso') then
			partname = "Torso"
		else
			partname = "UpperTorso"
		end
	end
	if (partname == "Head" or partname == "Torso" or partname == "UpperTorso" or partname == "LowerTorso" or attached == false) and spooking and character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local lolk = Instance.new('IntValue',character)
		lolk.Name = "HE BEEN SPOOKED"
		for i,v in pairs(character:GetChildren()) do
			if v:IsA('CharacterMesh') or v:IsA('Accessory') then v:Destroy() end
			if string.find(string.lower(v.Name),"ragdoll") and character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then v:Destroy() end
		end
		for i,v in pairs(game:GetService("AssetService"):GetAssetIdsForPackage(36781547)) do
			pcall(function()
				spawn(function()
					if game:GetService('RunService'):IsStudio() then
						local things = game:GetService('InsertService'):LoadAsset(v)
						applyBodyPart(character,things.R15,things.R6)
						things:Destroy()
					else
						local things = game:GetService("InsertService"):LoadLocalAsset('rbxassetid://'..v)
						applyBodyPart(character,things[1],things[2])
						things:Destroy()
					end
				end)
			end)
		end
		pcall(function()
			spawn(function()
				if game:GetService('RunService'):IsStudio() then
					game:GetService('InsertService'):LoadAsset(517261392):FindFirstChildOfClass('Accessory').Parent = character
				else
					game:GetService("InsertService"):LoadLocalAsset('rbxassetid://517261392').Parent = character
				end
			end)
		end)
		pcall(function()
			unstun(character)
			character:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
			character:FindFirstChildOfClass('Humanoid').JumpPower = 0
			character:FindFirstChildOfClass('Humanoid').Changed:connect(function(prop)
				if prop == "WalkSpeed" or prop == "JumpPower" then
					character:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
					character:FindFirstChildOfClass('Humanoid').JumpPower = 0
				end
			end)
		end)
		pcall(function()
			local animation = Instance.new("Animation")
			local umm = math.random(1,30)
			if character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R6 then
				if umm > 20 then
					animation.AnimationId = "http://www.roblox.com/asset/?id=130018893"
				elseif umm > 10 then
					animation.AnimationId = "http://www.roblox.com/asset/?id=160934142"
				else
					animation.AnimationId = "http://www.roblox.com/asset/?id=160934530"
				end
			else
				if umm > 20 then
					animation.AnimationId = "http://www.roblox.com/asset/?id=507771955"
				elseif umm > 10 then
					animation.AnimationId = "http://www.roblox.com/asset/?id=507776720"
				else
					animation.AnimationId = "http://www.roblox.com/asset/?id=507777451"
				end
			end
			local animTrack = character:FindFirstChildOfClass('Humanoid'):LoadAnimation(animation)
			animTrack.Looped = true
			animTrack.Priority = Enum.AnimationPriority.Core
			animTrack:Play()
			spawn(function()
				wait(animTrack.Length)
				while character and character.Parent and character:FindFirstChildOfClass('Humanoid') and character:FindFirstChildOfClass('Humanoid').Health > 0 do
					animTrack = character:FindFirstChildOfClass('Humanoid'):LoadAnimation(animation)
					animTrack.Looped = true
					animTrack.Priority = Enum.AnimationPriority.Core
					animTrack:Play()
					wait(animTrack.Length)
				end
			end)
			if character:FindFirstChild('HumanoidRootPart') and character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RootJoint') then
				local thing = character.HumanoidRootPart
				local asdf = thing.Orientation.Y
				local thingy = Instance.new('BodyGyro',thing)
				thingy.CFrame = CFrame.Angles(0,math.rad(asdf),0)
			end
		end)
		character.ChildAdded:connect(function(oh)
			if oh:IsA('Tool') then
				oh.ManualActivationOnly = true
				pcall(function()
					wait()
					oh.Parent = game:GetService('Players'):GetPlayerFromCharacter(character)
				end)
			end
		end)
		wait(5)
	end
	if (partname == "Head" or partname == "Torso" or partname == "UpperTorso" or partname == "LowerTorso" or attached == false) and icing and character:FindFirstChildOfClass('Humanoid').Health > 0 and character:FindFirstChild('wew u got iced') == nil then
		local lolk = Instance.new('IntValue',character)
		lolk.Name = "wew u got iced"
		pcall(function()
			character:FindFirstChild('HumanoidRootPart'):Destroy()
		end)
		pcall(function()
			character:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
			character:FindFirstChildOfClass('Humanoid').JumpPower = 0
		end)
		local last = nil
		character.ChildAdded:connect(function(oh)
			if oh:IsA('Tool') then
				oh.ManualActivationOnly = true
				pcall(function()
					wait()
					oh.Parent = game:GetService('Players'):GetPlayerFromCharacter(character)
				end)
			end
		end)
		for i,v in pairs(character:GetDescendants()) do
			if v:IsA('BasePart') then
				if last then
					last.Anchored = true
					v.Anchored = true
					local weld = Instance.new('Weld',v)
					weld.Part0 = v
					weld.Part1 = last
					weld.C0 = v.CFrame:inverse() * last.CFrame
					last.Anchored = false
					v.Anchored = false
				end
				v.Material = Enum.Material.Ice
				if v.CanCollide == false then
					local clone = v:Clone()
					clone.Name = v.Name.."Collide"
					clone.CanCollide = true
					clone.Parent = v.Parent
					clone.Transparency = 1
					local collideweld = Instance.new('Weld',v)
					collideweld.Part0 = v
					collideweld.Part1 = clone
				end
				if v.Transparency < 1 then v.Transparency = 0.25 end
				v.BrickColor = BrickColor.new('Light blue')
				last = v
			elseif v:IsA('SpecialMesh') then
				v.TextureId = ''
			elseif v:IsA('Shirt') or v:IsA('Pants') then v:Destroy()
			end
		end
		wait(5)
		partname = "nevermind lol"
		for i,v in pairs(character:GetDescendants()) do
			if v:IsA('BasePart') then
				if string.sub(v.Name,#v.Name-6,#v.Name) ~= "Collide" then
					start_fragmentation(v.Position,0.05,true,true,true)
				else
					v:Destroy()
				end
				
			end
		end
	end
	if heded ~= false then
		local neck = Instance.new('Attachment',character.Head)
		neck.Name = "NeckAttachment"
		neck.Position = Vector3.new(0,-character.Head.Size.Y/2,0)
		else
			local force = Instance.new('BodyForce',character.Head)
			force.Force = Vector3.new(0,500*character.Head.Size.Y,0)
			game:GetService('Debris'):AddItem(force,0.25)
			pcall(function()
			local asdf = Instance.new('Attachment',character.Head)
			asdf.Position = Vector3.new(0,-character.Head.Size.Y/2,0)
			local last = asdf
			for i=1,14 do
				local bONE = Instance.new('Part',character)
				bONE.BrickColor = BrickColor.new('Institutional white')
				bONE.Size = Vector3.new(character.Head.Size.Y*0.1,character.Head.Size.Y*0.1,character.Head.Size.Y*0.1)
				bONE.CFrame = character.Head.CFrame+(character.Head.CFrame.upVector*-(character.Head.Size.Y))
				local lole = Instance.new('Attachment',bONE)
				local hangurself = Instance.new('RopeConstraint',bONE)
				hangurself.Attachment0 = lole
				hangurself.Attachment1 = last
				hangurself.Visible = true
				hangurself.Thickness = 0.05*character.Head.Size.Y
				hangurself.Color = BrickColor.new('Bright red')
				hangurself.Length = 0.2*character.Head.Size.Y
				last = lole
			end
			local bleedee = Instance.new('Part',character.Head)
			bleedee.Size = Vector3.new(character.Head.Size.Z*0.75,character.Head.Size.Y*0.22,character.Head.Size.Z*0.75)
			bleedee.CanCollide = false
			bleedee.Color = Frame_2.BackgroundColor3
			bleedee.CFrame = character.Head.CFrame
			local mehs = Instance.new('CylinderMesh',bleedee)
			bleedee:BreakJoints()
			local attachment1 = Instance.new('Attachment',bleedee)
				attachment1.Position = Vector3.new(0,character.Head.Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,180)
				local attachment0 = Instance.new('Attachment',character.Head)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				spawn(function()
					bleed(bleedee)
				end)
			end)
			local thing = "Torso"
			if character:FindFirstChild(thing) == nil then
				thing = "UpperTorso"
			end
			pcall(function()
				local bleedee = Instance.new('Part',character[thing])
			bleedee.Size = Vector3.new(character.Head.Size.Z*0.75,character.Head.Size.Y*0.15,character.Head.Size.Z*0.75)
			bleedee.CanCollide = false
			bleedee.Color = Frame_2.BackgroundColor3
			bleedee.CFrame = character[thing].CFrame
			local mehs = Instance.new('CylinderMesh',bleedee)
			bleedee:BreakJoints()
			local attachment1 = Instance.new('Attachment',bleedee)
				attachment1.Position = Vector3.new(0,-character[thing].Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,180)
				local attachment0 = Instance.new('Attachment',character[thing])
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				spawn(function()
					bleed(bleedee)
				end)
			end)
		end
	pcall(function()
		if workspace.PGSPhysicsSolverEnabled == false then
			workspace.PGSPhysicsSolverEnabled = true
		end
	end)
	if attached == false and character:FindFirstChildOfClass('Humanoid') and character:FindFirstChildOfClass('Humanoid').Health > 0 then
		partname="Head"
		local int = Instance.new('IntValue',character)
		int.Name = "CHOPPED"
			local sounn = Instance.new("Sound", character.Head)
			local lipp = math.random(1, 3)
			if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
			if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
			if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
			sounn:Play()
			local last = nil
			local hm = character:FindFirstChild('UpperTorso')
			if hm == nil then hm = character:FindFirstChild('Torso') end
			local att = Instance.new('Attachment',hm)
			att.Position = Vector3.new(hm.Size.X*0.3,-hm.Size.Y/2.2,0)
			last = att
			for i=1,15 do
				local oofed = Instance.new('Part',character)
				oofed.BrickColor = BrickColor.new('Bright red')
				oofed.Material = Enum.Material.SmoothPlastic
				oofed.Shape = Enum.PartType.Ball
				oofed.Size = Vector3.new(0.35,0.35,0.35)
				oofed.CFrame = hm.CFrame+(hm.CFrame.upVector)
				local lole = Instance.new('Attachment',oofed)
				local hangurself = Instance.new('RopeConstraint',oofed)
				hangurself.Attachment0 = lole
				hangurself.Attachment1 = last
				hangurself.Visible = true
				hangurself.Thickness = 0.3
				hangurself.Color = oofed.BrickColor
				hangurself.Length = 0.4
				last = lole
			end
		if character:FindFirstChild('UpperTorso') then
			pcall(function()
				character.UpperTorso.WaistRigAttachment:Destroy()
			end)
			pcall(function()
				local ayybleed = Instance.new('Part',character)
				ayybleed.Size = Vector3.new(character.UpperTorso.Size.X,0,character.UpperTorso.Size.Z)
				ayybleed.Transparency = 0
				ayybleed.Color = Frame_2.BackgroundColor3
				ayybleed.Material = Enum.Material.SmoothPlastic
				ayybleed.CanCollide = false
				ayybleed.CFrame = character.UpperTorso.CFrame
				ayybleed:BreakJoints()
				ayybleed.Name = "ayybleed"
				local attachment1 = Instance.new('Attachment',ayybleed)
				attachment1.Position = Vector3.new(0,-character.UpperTorso.Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,180)
				local attachment0 = Instance.new('Attachment',character.UpperTorso)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				local bleedBLEED= coroutine.wrap(function()
					bleed(ayybleed)
				end)
				bleedBLEED()
			end)
			pcall(function()
				local ayybleed = Instance.new('Part',character)
				ayybleed.Size = Vector3.new(character.LowerTorso.Size.X-0.1,0.1,character.LowerTorso.Size.Z-0.1)
				ayybleed.Transparency = 0
				ayybleed.Color = Frame_2.BackgroundColor3
				ayybleed.Material = Enum.Material.SmoothPlastic
				ayybleed.CanCollide = false
				ayybleed.CFrame = character.LowerTorso.CFrame
				ayybleed:BreakJoints()
				ayybleed.Name = "ayybleed"
				local attachment1 = Instance.new('Attachment',ayybleed)
				attachment1.Position = Vector3.new(0,-character.LowerTorso.Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,0)
				local attachment0 = Instance.new('Attachment',character.LowerTorso)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				local bleedBLEED= coroutine.wrap(function()
					bleed(ayybleed)
				end)
				bleedBLEED()
			end)
		end
		pcall(function()
			local ree = character["Torso"]
			local thang = "Torso"
			local ayybleed = Instance.new('Part',character)
			ayybleed.Size = Vector3.new(character[thang].Size.X,0.1,character[thang].Size.Z)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.CanCollide = false
			ayybleed.Transparency = 0
			ayybleed.TopSurface = Enum.SurfaceType.Smooth
			ayybleed.BottomSurface = Enum.SurfaceType.Smooth
			ayybleed.CFrame = character[thang].CFrame
			ayybleed:BreakJoints()
			local attachment1 = Instance.new('Attachment',ayybleed)
			attachment1.Position = Vector3.new(0,(-character[thang].Size.Y/2)+0.045,0)
			attachment1.Orientation = Vector3.new(0,0,180)
			local attachment0 = Instance.new('Attachment',character[thang])
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
			local bleedBLEED= coroutine.wrap(function()
				bleed(ayybleed)
			end)
			bleedBLEED()
		end)
		pcall(function()
			local ree = character["Right Leg"]
			local thang = "Right Leg"
			local ayybleed = Instance.new('Part',character)
			ayybleed.Size = Vector3.new(character[thang].Size.X-0.1,0.1,character[thang].Size.Z-0.1)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.CanCollide = false
			ayybleed.Transparency = 0
			ayybleed.CFrame = character[thang].CFrame
			ayybleed:BreakJoints()
			local attachment1 = Instance.new('Attachment',ayybleed)
			attachment1.Position = Vector3.new(0,(-character[thang].Size.Y/2)+0.045,0)
			attachment1.Orientation = Vector3.new(0,0,0)
			local attachment0 = Instance.new('Attachment',character[thang])
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
			local bleedBLEED= coroutine.wrap(function()
				bleed(ayybleed)
			end)
			bleedBLEED()
		end)
		pcall(function()
			local ree = character["Left Leg"]
			local thang = "Left Leg"
			local ayybleed = Instance.new('Part',character)
			ayybleed.Size = Vector3.new(character[thang].Size.X-0.1,0.1,character[thang].Size.Z-0.1)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.CanCollide = false
			ayybleed.Transparency = 0
			ayybleed.CFrame = character[thang].CFrame
			ayybleed:BreakJoints()
			local attachment1 = Instance.new('Attachment',ayybleed)
			attachment1.Position = Vector3.new(0,(-character[thang].Size.Y/2)+0.045,0)
			attachment1.Orientation = Vector3.new(0,0,0)
			local attachment0 = Instance.new('Attachment',character[thang])
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end				
			local bleedBLEED= coroutine.wrap(function()
				bleed(ayybleed)
			end)
			bleedBLEED()
		end)
	end
	if partname == "RightHand" or partname == "RightLowerArm" or partname == "RightUpperArm" then
		if character:FindFirstChild('RightLowerArm') and character:FindFirstChild('RightHand') then
			ragdollJoint(character,character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)
		end
		if character:FindFirstChild('UpperTorso') and character:FindFirstChild('RightUpperArm') then
			ragdollJoint(character, character.UpperTorso, character["RightUpperArm"], "RightShoulder", "BallSocket")
		end
		if character:FindFirstChild('RightUpperArm') and character:FindFirstChild('RightLowerArm') then
			ragdollJoint(character, character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
		end
	elseif partname == "LeftHand" or partname == "LeftLowerArm" or partname == "LeftUpperArm" then
		if character:FindFirstChild('LeftLowerArm') and character:FindFirstChild('LeftHand') then
			ragdollJoint(character,character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
		end
		if character:FindFirstChild('UpperTorso') and character:FindFirstChild('LeftUpperArm') then
			ragdollJoint(character, character.UpperTorso, character["LeftUpperArm"], "LeftShoulder", "BallSocket")
		end
		if character:FindFirstChild('LeftUpperArm') and character:FindFirstChild('LeftLowerArm') then
			ragdollJoint(character, character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
		end
	elseif partname == "RightFoot" or partname == "RightUpperLeg" or partname == "RightLowerLeg" then
		stun(character)
		if character:FindFirstChild('RightUpperLeg') and character:FindFirstChild('RightLowerLeg') then
			ragdollJoint(character,character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)
		end
		if character:FindFirstChild('RightLowerLeg') and character:FindFirstChild('RightFoot') then
			ragdollJoint(character,character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
		end
		if character:FindFirstChild('LowerTorso') and character:FindFirstChild('RightUpperLeg') then
			ragdollJoint(character,character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
		end
	elseif partname == "LeftFoot" or partname == "LeftUpperLeg" or partname == "LeftLowerLeg" then
		stun(character)
		if character:FindFirstChild('LeftUpperLeg') and character:FindFirstChild('LeftLowerLeg') then
			ragdollJoint(character,character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
		end
		if character:FindFirstChild('LeftLowerLeg') and character:FindFirstChild('LeftFoot') then
			ragdollJoint(character,character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
		end
		if character:FindFirstChild('LowerTorso') and character:FindFirstChild('LeftUpperLeg') then
			ragdollJoint(character,character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
		end
	elseif partname == "Head" or partname == "UpperTorso" or partname == "LowerTorso" then
		if character:FindFirstChildOfClass('Humanoid') and character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		local sound = Instance.new('Sound',character["Head"])
		sound.SoundId = 'rbxassetid://178646271'
		sound.MaxDistance = 500
		sound.Volume = 2
		character["Head"].Touched:connect(function(v)
			if v.CanCollide and v:IsDescendantOf(character) == false and character["Head"].Velocity.magnitude > 10 then
				sound:Play()
			end
		end)
		spawn(function()
			if banning then
				local um = game:GetService('Players'):GetPlayerFromCharacter(character)
				wait(4)
				if um then
					table.insert(bans,um.Name)
					kick(um)
				end
			end
		end)
		if character:FindFirstChildOfClass('Humanoid') then
			character:FindFirstChildOfClass('Humanoid').Health = 0
			character:BreakJoints()
		end
		if character:FindFirstChild('HumanoidRootPart') then
			character.HumanoidRootPart:Destroy()
		end
		spawn(function()
			while character and character.Parent ~= nil and character:FindFirstChildOfClass('Humanoid') do
				if character and character:FindFirstChildOfClass('Humanoid') then
					character:FindFirstChildOfClass('Humanoid').Health = 0
					character:BreakJoints()
				end
				wait()
			end
		end)
		if game:GetService('Players'):GetPlayerFromCharacter(character) == nil then
			game:GetService('Debris'):AddItem(character,10)
		end
		for _,child in next,character:GetChildren() do
		if child:IsA("Accoutrement") then
			for _,part in next,child:GetChildren() do
				if part:IsA("BasePart") then
					for _,c in pairs(part:GetChildren()) do
						if c:IsA('Weld') then c:Destroy() end
					end
					local attachment1 = part:FindFirstChildOfClass("Attachment")
					local attachment0 = getAttachment0(character,attachment1.Name)
					if attachment0 and attachment1 then
						local constraint = Instance.new("HingeConstraint")
						constraint.Attachment0 = attachment0
						constraint.Attachment1 = attachment1
						constraint.LimitsEnabled = true
						constraint.UpperAngle = 0
						constraint.LowerAngle = 0
						constraint.Parent = character
					end
				end
			end
		end
		end
		for i,v in pairs(character:GetChildren()) do
			if v:IsA('MeshPart') or v:IsA('BasePart') then
				for _,c in pairs(v:GetChildren()) do
					if c.Name == "Collision" then c:Destroy() end
				end
			end
		end
	if heded == false then
		pcall(function()
			pcall(function()
				character.UpperTorso.NeckRigAttachment:Destroy()
			end)
			local asdf = Instance.new('Attachment',character.Head)
			asdf.Position = Vector3.new(0,-character.Head.Size.Y/2,0)
			local last = asdf
			character.Head.Neck:Destroy()
			character.UpperTorso:FindFirstChild('NeckAttachment'):Destroy()
		end)
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('LowerTorso') then
	ragdollJoint(character,character.LowerTorso, character.UpperTorso, "Waist", "BallSocket", {
		{"LimitsEnabled",true};
		{"UpperAngle",5};
		{"Radius",5};
	})
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('Head') then
	ragdollJoint(character,character.UpperTorso, character.Head, "Neck", "Hinge", {
		{"LimitsEnabled",true};
		{"UpperAngle",50};
		{"LowerAngle",-50};
	})
	end
	
	local handProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle",0};
		{"LowerAngle",0};
	}
	if character:FindFirstChild('LeftLowerArm') and character:FindFirstChild('LeftHand') then
	ragdollJoint(character,character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
	end
	if character:FindFirstChild('RightLowerArm') and character:FindFirstChild('RightHand') then
	ragdollJoint(character,character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)
	end
	
	local shinProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 0};
		{"LowerAngle", -75};
	}
	if character:FindFirstChild('LeftUpperLeg') and character:FindFirstChild('LeftLowerLeg') then
	ragdollJoint(character,character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
	end
	if character:FindFirstChild('RightUpperLeg') and character:FindFirstChild('RightLowerLeg') then
	ragdollJoint(character,character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)
	end
	
	local footProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 15};
		{"LowerAngle", -45};
	}
	if character:FindFirstChild('LeftLowerLeg') and character:FindFirstChild('LeftFoot') then
	ragdollJoint(character,character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
	end
	if character:FindFirstChild('RightLowerLeg') and character:FindFirstChild('RightFoot') then
	ragdollJoint(character,character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('LeftUpperArm') then
	ragdollJoint(character,character.UpperTorso, character.LeftUpperArm, "LeftShoulder", "BallSocket")
	end
	if character:FindFirstChild('LeftLowerArm') and character:FindFirstChild('LeftUpperArm') then
	ragdollJoint(character,character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('RightUpperArm') then
	ragdollJoint(character,character.UpperTorso, character.RightUpperArm, "RightShoulder", "BallSocket")
	end
	if character:FindFirstChild('RightUpperArm') and character:FindFirstChild('RightLowerArm') then
	ragdollJoint(character,character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
	end
	if character:FindFirstChild('LowerTorso') and character:FindFirstChild('LeftUpperLeg') then
	ragdollJoint(character,character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
	end
	if character:FindFirstChild('LowerTorso') and character:FindFirstChild('RightUpperLeg') then
	ragdollJoint(character,character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
	end
	if character:FindFirstChild('HumanoidRootPart') then
		character.HumanoidRootPart:Destroy()
	end
		else
			R6ragdollJoint(character,partname,attached,heded,spaz)
		end
	else
		R6ragdollJoint(character,partname,attached,heded,spaz)
	end
	end)
end
local kidnapped = false
local lastpos = CFrame.new(0,0,0)
function gotohouse(char)
	pcall(function()
		if kidnapped == false then
			if kidnaproom:IsDescendantOf(workspace) then
				kidnapped = true
				lastpos = char.PrimaryPart.CFrame
				char:SetPrimaryPartCFrame(kidnaproom.SpawnHere.CFrame+Vector3.new(0,5,0))
			end
		else
			kidnapped = false
			char:SetPrimaryPartCFrame(lastpos)
		end
	end)
end
function makeROOM(char)
	if room then room:Destroy() room = nil end
	if rooming == false then
	if bans then
	rooming = true
	pcall(function()
		local reepos = char.HumanoidRootPart.CFrame
		lastpos = reepos
	end)
	notify("You have been transported to the bans dimension. Kill a hologram here to unban them.")
	local obj1 = Instance.new("Model")
	obj1.Name = "the BEAN room"
	obj1.Parent = workspace
	room = obj1
	local obj2 = Instance.new("Part")
	obj2.CFrame = CFrame.new(Vector3.new(-6187.2998, 0.500003994, -7382.84814)) * CFrame.Angles(-0, 0, -0)
	obj2.Transparency = 1
	obj2.TopSurface = Enum.SurfaceType.Smooth
	obj2.BottomSurface = Enum.SurfaceType.Smooth
	obj2.Size = Vector3.new(100, 1, 100)
	obj2.Anchored = true
	obj2.Friction = 0.30000001192093
	obj2.Shape = Enum.PartType.Block
	obj2.Parent = obj1
	local int = Instance.new('IntValue',obj2)
	int.Name = 'already broken u pleb'
	local obj3 = Instance.new("Part")
	obj3.Size = Vector3.new(2, 1.20000005, 2)
	obj3.CFrame = obj2.CFrame
	obj3.CanCollide = false
	obj3.TopSurface = Enum.SurfaceType.Smooth
	obj3.BottomSurface = Enum.SurfaceType.Smooth
	obj3.Locked = true
	obj3.Anchored = true
	obj3.BrickColor = BrickColor.new("Really red")
	obj3.Friction = 0.30000001192093
	obj3.Shape = Enum.PartType.Block
	obj3.Name = "The Effect"
	obj3.Parent = obj1
	local int2 = Instance.new('IntValue',obj3)
	int2.Name = 'already broken u pleb'
	local obj4 = Instance.new("SpecialMesh")
	obj4.VertexColor = Vector3.new(1, 0, 0)
	obj4.MeshType = Enum.MeshType.FileMesh
	obj4.Scale = Vector3.new(-150, -150, -150)
	obj4.MeshId = "http://www.roblox.com/asset/?id=1527559"
	obj4.TextureId = "http://www.roblox.com/asset/?id=1529460"
	obj4.Parent = obj3
	pcall(function()
		char.HumanoidRootPart.CFrame = obj2.CFrame+Vector3.new(0,3,0)
	end)
	for i,v in pairs(bans) do
		local things = nil
		if game:GetService('RunService'):IsStudio() then
			things = game:GetService('InsertService'):LoadAsset(01143615944)
		else
			things = game:GetService("InsertService"):LoadLocalAsset('rbxassetid://01143615944')
		end
		things.Parent = obj1
		things.Name = v
		things.HumanoidRootPart.CFrame = CFrame.new(math.random(-48,48)+obj2.Position.X,obj2.Position.Y+3,math.random(-48,48)+obj2.Position.Z)
		pcall(function()
			things:FindFirstChildOfClass('Humanoid').Died:connect(function()
				for a,c in pairs(bans) do
					if c == v then
						table.remove(bans,a)
					end
				end
			end)
		end)
	end
	end
	else
		notify("You have been transported out of the bans dimension.")
		rooming = false
	pcall(function()
		char.HumanoidRootPart.CFrame = lastpos
	end)
	end
end

function grow(weld,part,endsize,endpos,amntime)
	local start = weld.C1
	local parent = weld.Parent
	local startsize = part.Size
	getplasmasound()
	local particl = Instance.new("ParticleEmitter")
	particl.LightEmission = 3
	particl.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 0, 255)), ColorSequenceKeypoint.new(0.1, Color3.fromRGB(248, 153, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
	particl.LightInfluence = 0.75
	particl.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
	particl.Lifetime = NumberRange.new(0.1, 1)
	particl.Rate = 50
	particl.RotSpeed = NumberRange.new(300, 300)
	particl.Speed = NumberRange.new(0, 1)
	particl.SpreadAngle = Vector2.new(90, 90)
	particl.Parent = part
	for i=1,amntime*100 do
		weld.C1 = start:lerp(endpos,i/(amntime*100))
		part.Size = startsize:lerp(endsize,i/(amntime*100))
		weld.Parent = parent
		wait(0.01)
	end
	particl.Enabled = false
end
function lerp(weld,startpos,endpos,amntime,longatend)
	local waited = 0
	for i=1,amntime*100 do
		if longatend == true then
			startpos = weld.C0
		end
		weld.C0 = startpos:lerp(endpos,i/(amntime*100))
		wait(0.01)
		waited=waited+0.01
	end
end

function spawned()
local usable = true
local working = false
local mode = "kill"
local mode2 = "shoot"
local equipped = false
local char = player.Character
local blademode = "handle"
local swinging = false
local gettingeem = false
local MOAN = false
local poom = false
local sounding = false
local SLESH = false
local ripheart = false
local goteem = nil
local goteem2 = nil
local goteem3 = nil
local grabbing = false
local grabbed = nil
local grabweld = nil
local aidsificating = nil
player.CharacterAdded:connect(function()
	if usable then
		usable = false
	end
end)
if char == nil then return end
local ree = 0
while (char:FindFirstChildOfClass('Humanoid') == nil or char:FindFirstChild('Head') == nil or char:FindFirstChild('Torso') == nil) and ree < 10000 do ree = ree+1 wait() end
char:FindFirstChildOfClass('Humanoid').Died:connect(function() usable = false end)
local badass = Instance.new('Sound',char.Head)
badass.Name = 'Badass'
badass.EmitterSize = player.CameraMaxZoomDistance+1
badass.MaxDistance = player.CameraMaxZoomDistance+1
badass.Volume = 10
badass.Looped=true
badass.SoundId = 'rbxassetid://428902535'
local spook = Instance.new('Sound',char.Head)
spook.Name = 'Spooky'
spook.EmitterSize = player.CameraMaxZoomDistance+1
spook.MaxDistance = player.CameraMaxZoomDistance+1
spook.Volume = 0.5
spook.Looped=true
spook.SoundId = 'rbxassetid://1132149289'
local ice = Instance.new('Sound',char.Head)
ice.Name = 'Icy'
ice.EmitterSize = player.CameraMaxZoomDistance+1
ice.MaxDistance = player.CameraMaxZoomDistance+1
ice.Volume = 10
ice.Looped=true
ice.SoundId = 'rbxassetid://591246253'
if spooking == true then
	spook.Playing = true
end
if icing == true then
	ice.Playing = true
end
local handle = Instance.new("Part", char)
handle.BrickColor = BrickColor.new("Really black")
handle.Material = "Metal"
handle.CanCollide = false
handle.Anchored = false
handle.Shape = "Cylinder"
handle.Size = Vector3.new(1.1, 0.3, 0.3)
handle.BackSurface = "SmoothNoOutlines"
handle.BottomSurface = "SmoothNoOutlines"
handle.FrontSurface = "SmoothNoOutlines"
handle.LeftSurface = "SmoothNoOutlines"
handle.RightSurface = "SmoothNoOutlines"
handle.TopSurface = "SmoothNoOutlines"
handle.Name = "handle"

function getplasmasound()
	local plasmasound = Instance.new("Sound", handle)
	plasmasound.SoundId = "rbxassetid://380490522"
	plasmasound.Volume = 0.03
	plasmasound.EmitterSize = 10
	plasmasound.MaxDistance = 20
	plasmasound.PlaybackSpeed = math.random(5, 20) / 10
	plasmasound:Play()
	game:GetService('Debris'):AddItem(plasmasound,2)
end

local hweld = Instance.new("Weld", char.Torso)
hweld.Part0 = char.Torso
hweld.Part1 = handle
hweld.C0 = CFrame.new(1, -0.8, 0) * CFrame.Angles(0, math.rad(90), 0)

local rdd = false
function track()
	if usable then
		if mouse.Target then
			local hum = mouse.Target.Parent:FindFirstChildOfClass('Humanoid')
			if hum == nil then
				hum = mouse.Target.Parent.Parent:FindFirstChildOfClass('Humanoid')
			end
			if hum then
				tracking = hum.Parent
			else
				tracking = nil
			end
		else
			tracking = nil
		end
	end
end
function oogabooga()
	if rdd == false then
		rdd = true
	pcall(function()
		pcall(function()
		ragdollpart(char,"Right Arm")
		ragdollpart(char,"Right Leg")
		ragdollpart(char,"Left Arm")
		ragdollpart(char,"Left Leg")
		end)
		wait()
		unstun(char)
	end)
	pcall(function()
		pcall(function()
		ragdollpart(char,"RightUpperArm")
		ragdollpart(char,"RightUpperLeg")
		ragdollpart(char,"LeftUpperArm")
		ragdollpart(char,"LeftUpperLeg")
		end)
		wait()
		unstun(char)
	end)
	for i,v in pairs(char:GetChildren()) do
		v.ChildAdded:connect(function(child)
			if rdd == true then
			if child.Name ~= "Neck" and child.Name ~= "RootJoint" and child.Name ~= "Root" and (child:IsA('Motor6D') or child:IsA('Weld')) then 
				if child ~= grabweld then
					spawn(function()
						wait()
						child:Destroy()
					end)
				end
			end
			end
		end)
		if string.find(string.lower(v.Name),'leg') then
			if v:FindFirstChild('Collision') then
				v:FindFirstChild('Collision'):Destroy()
			end
		end
	end
	else
		rdd = false
		for i,v in pairs(char:GetChildren()) do
			if v:IsA('HingeConstraint') or v:IsA('BallSocketConstraint') then
				v:Destroy()
			elseif v:IsA('BasePart') then
				if v:FindFirstChild('Collision') then
					v.Collision:Destroy()
				end
				for a,c in pairs(v:GetChildren()) do
					if string.find(string.lower(c.Name),"ragdoll") then
						c:Destroy()
					end
				end
			end
		end
		pcall(function()
			local ra = rightclone:Clone()
			ra.Parent = char.Torso
			ra.Part0 = char.Torso
			ra.Part1 = char["Right Arm"]
		end)
		pcall(function()
			local la = leftclone:Clone()
			la.Parent = char.Torso
			la.Part0 = char.Torso
			la.Part1 = char["Left Arm"]
		end)
		pcall(function()
			local ll = leftlegclone:Clone()
			ll.Parent = char.Torso
			ll.Part0 = char.Torso
			ll.Part1 = char["Left Leg"]
		end)
		pcall(function()
			local rl = rightlegclone:Clone()
			rl.Parent = char.Torso
			rl.Part0 = char.Torso
			rl.Part1 = char["Right Leg"]
		end)
	end
end
function getrid()
	hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
	if grabbed then
		release()
	end
	pcall(function()
		handle.Transparency= 0
	end)
	blademode = "handle"
	local windyness = Instance.new("Sound", handle)
	windyness.SoundId = "rbxassetid://966888080"
	windyness.PlaybackSpeed = math.random(20, 25) / 10
	windyness:Play()
	for _,ree in pairs(handle:GetChildren()) do
		if ree:IsA('BasePart') then
			local part = Instance.new('Part',workspace)
			part.CFrame = ree.CFrame
			part.Anchored = true
			part.CanCollide = false
			part.Size = ree.Size
			part.Transparency = 1
			ree:Destroy()
			local pe2 = Instance.new("ParticleEmitter")
              pe2.Acceleration = Vector3.new(0, 1, 0)
              pe2.Lifetime = NumberRange.new(0.1, 0.2)
			  pe2.Speed = NumberRange.new(0.5)
              pe2.Rate = 20000
              pe2.RotSpeed = NumberRange.new(-30, 30)
              pe2.Rotation = NumberRange.new(0, 360)
              pe2.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, part.Size.X*2, 0),
				NumberSequenceKeypoint.new(1, 0, 0),
              })
              pe2.Texture = "rbxassetid://244221440"
              pe2.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.9, 0),
                NumberSequenceKeypoint.new(1, 0.5, 0)
              })
              pe2.ZOffset = 5
              pe2.VelocitySpread = 360
              pe2.Parent = part
              pe2.Enabled = true
				local coru=coroutine.wrap(function()
			    wait(0.2)
				pe2.Enabled = false
				game:GetService('Debris'):AddItem(part,0.5)
				end)
				coru()
		elseif ree.ClassName ~= "Sound" then
			ree:Remove()
		end
	end
	local corr = coroutine.wrap(function()
		wait(1)
		windyness:Remove()
	end)
	corr()
	
	l = char["Left Arm"]:FindFirstChild("lweld")
	r = char["Right Arm"]:FindFirstChild("rweld")
	t = char.HumanoidRootPart:FindFirstChild("tweld")
	
	if t ~= nil then
		local cor = coroutine.wrap(function()
			lerp(r,r.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), 0, 0),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(t,t.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		cor()
		cor2()
		lerp(l,l.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), 0, 0),0.08)
		
		l:Remove()
		r:Remove()
		t:Remove()
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
	end
end

function equip()
	equipped = true
	working = true
	if char.Torso:FindFirstChild("Right Shoulder") then
		char.Torso:FindFirstChild("Right Shoulder"):Destroy()
	end
	local weld = Instance.new('Weld', char.Torso)
	weld.Name = "Lerping"
	weld.Part0 = char["Right Arm"]
	weld.Part1 = char.Torso
	weld.C0 = CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0)
	
	lerp(weld,weld.C0,CFrame.new(-1.3, -0.5, 0) * CFrame.Angles(0, 0, math.rad(15)),0.12,true)
	
	wait(0.1)
	
	hweld.Part0 = char["Right Arm"]
	hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
	
	lerp(weld,weld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)  
	
	weld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	working = false
end

function unequip()
	getrid(handle)
	equipped = false
	working = true
	
	if char.Torso:FindFirstChild("Right Shoulder") then
		char.Torso:FindFirstChild("Right Shoulder"):Destroy()
	end
	
	local weld = Instance.new('Weld', char.Torso)
	weld.Name = "Lerping"
	weld.Part0 = char["Right Arm"]
	weld.Part1 = char.Torso
	weld.C0 = CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0)
	
	lerp(weld,weld.C0,CFrame.new(-1.3, -0.5, 0) * CFrame.Angles(0, 0, math.rad(15)),0.12,true)
	
	hweld.Part0 = char["Torso"]
	hweld.C0 = CFrame.new(1, -0.8, 0) * CFrame.Angles(0, math.rad(90), 0)
	lerp(weld,weld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08,true)
	weld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	working = false
end

function dildo()
	blademode = "dildo"
	working = true
	-- 1 - pink toy
local obj1 = Instance.new("Model")
obj1.Name = "pink toy"
obj1.Parent = handle

-- 2 - Model
local obj2 = Instance.new("Model")
obj2.Parent = obj1

-- 3 - Part
local obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(66.8643951, 3.86435986, 7.14990711)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj3.CanCollide = false
obj3.TopSurface = Enum.SurfaceType.Smooth
obj3.BottomSurface = Enum.SurfaceType.Smooth
obj3.Material = Enum.Material.SmoothPlastic
obj3.Size = Vector3.new(1.00000024, 1.00000024, 1.00000024)
obj3.BrickColor = BrickColor.new("Hot pink")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Ball
obj3.Parent = obj2
obj3.Name = "tip"

-- 4 - Part
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(67.8275909, 2.08898449, 7.50048351)) * CFrame.Angles(9.1487750708552e-09, -0.34906616806984, -1.0471986532211)
obj4.CanCollide = false
obj4.TopSurface = Enum.SurfaceType.Smooth
obj4.BottomSurface = Enum.SurfaceType.Smooth
obj4.Material = Enum.Material.SmoothPlastic
obj4.Size = Vector3.new(4.09999943, 1, 1)
obj4.BrickColor = BrickColor.new("Hot pink")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Cylinder
obj4.Parent = obj2

-- 5 - Part
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(66.7104797, 3.86435843, 7.57276678)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj5.CanCollide = false
obj5.TopSurface = Enum.SurfaceType.Smooth
obj5.BottomSurface = Enum.SurfaceType.Smooth
obj5.Material = Enum.Material.SmoothPlastic
obj5.Size = Vector3.new(0.25, 0.25, 0.25)
obj5.BrickColor = BrickColor.new("Hot pink")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Ball
obj5.Parent = obj2

-- 6 - Part
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(68.6905365, 0.83212769, 8.29345417)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.7925276756287)
obj6.CanCollide = false
obj6.TopSurface = Enum.SurfaceType.Smooth
obj6.BottomSurface = Enum.SurfaceType.Smooth
obj6.Material = Enum.Material.SmoothPlastic
obj6.Size = Vector3.new(0.999999762, 0.999999762, 0.999999762)
obj6.BrickColor = BrickColor.new("Hot pink")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Ball
obj6.Parent = obj2

-- 7 - Part
local obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(67.0182953, 3.86435866, 6.72704411)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj7.CanCollide = false
obj7.TopSurface = Enum.SurfaceType.Smooth
obj7.BottomSurface = Enum.SurfaceType.Smooth
obj7.Material = Enum.Material.SmoothPlastic
obj7.Size = Vector3.new(0.25, 0.25, 0.25)
obj7.BrickColor = BrickColor.new("Hot pink")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Ball
obj7.Parent = obj2

-- 8 - Part
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(68.9983597, 0.832128167, 7.44772816)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.7925276756287)
obj8.CanCollide = false
obj8.TopSurface = Enum.SurfaceType.Smooth
obj8.BottomSurface = Enum.SurfaceType.Smooth
obj8.Material = Enum.Material.SmoothPlastic
obj8.Size = Vector3.new(0.999999762, 0.999999762, 0.999999762)
obj8.BrickColor = BrickColor.new("Hot pink")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Ball
obj8.Parent = obj2
local fiREPART = obj8

-- 9 - Part
local obj9 = Instance.new("Part")
obj9.CFrame = CFrame.new(Vector3.new(68.8566208, 0.357954353, 7.87501621)) * CFrame.Angles(9.1487750708552e-09, -0.34906616806984, -1.2217314243317)
obj9.CanCollide = false
obj9.TopSurface = Enum.SurfaceType.Smooth
obj9.BottomSurface = Enum.SurfaceType.Smooth
obj9.Material = Enum.Material.SmoothPlastic
obj9.Size = Vector3.new(0.0999999791, 1.50000036, 2)
obj9.BrickColor = BrickColor.new("Hot pink")
obj9.Friction = 0.30000001192093
obj9.Shape = Enum.PartType.Cylinder
obj9.Parent = obj2

-- 10 - Part
local obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(66.8069, 3.58244801, 7.60786104)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj10.CanCollide = false
obj10.TopSurface = Enum.SurfaceType.Smooth
obj10.BottomSurface = Enum.SurfaceType.Smooth
obj10.Material = Enum.Material.SmoothPlastic
obj10.Size = Vector3.new(0.25, 0.25, 0.25)
obj10.BrickColor = BrickColor.new("Hot pink")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Ball
obj10.Parent = obj2

-- 11 - Part
local obj11 = Instance.new("Part")
obj11.CFrame = CFrame.new(Vector3.new(67.196106, 3.632447, 6.79175806)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj11.CanCollide = false
obj11.TopSurface = Enum.SurfaceType.Smooth
obj11.BottomSurface = Enum.SurfaceType.Smooth
obj11.Material = Enum.Material.SmoothPlastic
obj11.Size = Vector3.new(0.25, 0.25, 0.25)
obj11.BrickColor = BrickColor.new("Hot pink")
obj11.Friction = 0.30000001192093
obj11.Shape = Enum.PartType.Ball
obj11.Parent = obj2

-- 12 - Part
local obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(67.0756683, 3.77002549, 7.63403416)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj12.CanCollide = false
obj12.TopSurface = Enum.SurfaceType.Smooth
obj12.BottomSurface = Enum.SurfaceType.Smooth
obj12.Material = Enum.Material.SmoothPlastic
obj12.Size = Vector3.new(0.25, 0.25, 0.25)
obj12.BrickColor = BrickColor.new("Hot pink")
obj12.Friction = 0.30000001192093
obj12.Shape = Enum.PartType.Ball
obj12.Parent = obj2

-- 13 - Part
local obj13 = Instance.new("Part")
obj13.CFrame = CFrame.new(Vector3.new(67.4108353, 3.27276325, 6.88037825)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj13.CanCollide = false
obj13.TopSurface = Enum.SurfaceType.Smooth
obj13.BottomSurface = Enum.SurfaceType.Smooth
obj13.Material = Enum.Material.SmoothPlastic
obj13.Size = Vector3.new(0.25, 0.25, 0.25)
obj13.BrickColor = BrickColor.new("Hot pink")
obj13.Friction = 0.30000001192093
obj13.Shape = Enum.PartType.Ball
obj13.Parent = obj2

-- 14 - Part
local obj14 = Instance.new("Part")
obj14.CFrame = CFrame.new(Vector3.new(66.868927, 3.43238807, 6.82578087)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj14.CanCollide = false
obj14.TopSurface = Enum.SurfaceType.Smooth
obj14.BottomSurface = Enum.SurfaceType.Smooth
obj14.Material = Enum.Material.SmoothPlastic
obj14.Size = Vector3.new(0.25, 0.25, 0.25)
obj14.BrickColor = BrickColor.new("Hot pink")
obj14.Friction = 0.30000001192093
obj14.Shape = Enum.PartType.Ball
obj14.Parent = obj2

-- 15 - Part
local obj15 = Instance.new("Part")
obj15.CFrame = CFrame.new(Vector3.new(67.1951675, 3.383008, 7.69050598)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj15.CanCollide = false
obj15.TopSurface = Enum.SurfaceType.Smooth
obj15.BottomSurface = Enum.SurfaceType.Smooth
obj15.Material = Enum.Material.SmoothPlastic
obj15.Size = Vector3.new(0.25, 0.25, 0.25)
obj15.BrickColor = BrickColor.new("Hot pink")
obj15.Friction = 0.30000001192093
obj15.Shape = Enum.PartType.Ball
obj15.Parent = obj2

-- 16 - Part
local obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(67.50383, 3.46245813, 7.48069429)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj16.CanCollide = false
obj16.TopSurface = Enum.SurfaceType.Smooth
obj16.BottomSurface = Enum.SurfaceType.Smooth
obj16.Material = Enum.Material.SmoothPlastic
obj16.Size = Vector3.new(0.25, 0.25, 0.25)
obj16.BrickColor = BrickColor.new("Hot pink")
obj16.Friction = 0.30000001192093
obj16.Shape = Enum.PartType.Ball
obj16.Parent = obj2

-- 17 - Part
local obj17 = Instance.new("Part")
obj17.CFrame = CFrame.new(Vector3.new(66.5551376, 3.4628334, 7.33871651)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj17.CanCollide = false
obj17.TopSurface = Enum.SurfaceType.Smooth
obj17.BottomSurface = Enum.SurfaceType.Smooth
obj17.Material = Enum.Material.SmoothPlastic
obj17.Size = Vector3.new(0.25, 0.25, 0.25)
obj17.BrickColor = BrickColor.new("Hot pink")
obj17.Friction = 0.30000001192093
obj17.Shape = Enum.PartType.Ball
obj17.Parent = obj2

-- 18 - Part
local obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(67.3677139, 3.83245182, 7.3331027)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj18.CanCollide = false
obj18.TopSurface = Enum.SurfaceType.Smooth
obj18.BottomSurface = Enum.SurfaceType.Smooth
obj18.Material = Enum.Material.SmoothPlastic
obj18.Size = Vector3.new(0.25, 0.25, 0.25)
obj18.BrickColor = BrickColor.new("Hot pink")
obj18.Friction = 0.30000001192093
obj18.Shape = Enum.PartType.Ball
obj18.Parent = obj2

-- 19 - Part
local obj19 = Instance.new("Part")
obj19.CFrame = CFrame.new(Vector3.new(67.4115601, 3.71535063, 7.01420689)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj19.CanCollide = false
obj19.TopSurface = Enum.SurfaceType.Smooth
obj19.BottomSurface = Enum.SurfaceType.Smooth
obj19.Material = Enum.Material.SmoothPlastic
obj19.Size = Vector3.new(0.25, 0.25, 0.25)
obj19.BrickColor = BrickColor.new("Hot pink")
obj19.Friction = 0.30000001192093
obj19.Shape = Enum.PartType.Ball
obj19.Parent = obj2

-- 20 - Part
local obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(67.6487045, 3.39313889, 7.19381428)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj20.CanCollide = false
obj20.TopSurface = Enum.SurfaceType.Smooth
obj20.BottomSurface = Enum.SurfaceType.Smooth
obj20.Material = Enum.Material.SmoothPlastic
obj20.Size = Vector3.new(0.25, 0.25, 0.25)
obj20.BrickColor = BrickColor.new("Hot pink")
obj20.Friction = 0.30000001192093
obj20.Shape = Enum.PartType.Ball
obj20.Parent = obj2

-- 21 - Part
local obj21 = Instance.new("Part")
obj21.CFrame = CFrame.new(Vector3.new(66.8260422, 4.12417316, 6.81669378)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj21.CanCollide = false
obj21.TopSurface = Enum.SurfaceType.Smooth
obj21.BottomSurface = Enum.SurfaceType.Smooth
obj21.Material = Enum.Material.SmoothPlastic
obj21.Size = Vector3.new(0.25, 0.25, 0.25)
obj21.BrickColor = BrickColor.new("Hot pink")
obj21.Friction = 0.30000001192093
obj21.Shape = Enum.PartType.Ball
obj21.Parent = obj2

-- 22 - Part
local obj22 = Instance.new("Part")
obj22.CFrame = CFrame.new(Vector3.new(67.162117, 3.11433029, 6.8847661)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj22.CanCollide = false
obj22.TopSurface = Enum.SurfaceType.Smooth
obj22.BottomSurface = Enum.SurfaceType.Smooth
obj22.Material = Enum.Material.SmoothPlastic
obj22.Size = Vector3.new(0.25, 0.25, 0.25)
obj22.BrickColor = BrickColor.new("Hot pink")
obj22.Friction = 0.30000001192093
obj22.Shape = Enum.PartType.Ball
obj22.Parent = obj2

-- 23 - Part
local obj23 = Instance.new("Part")
obj23.CFrame = CFrame.new(Vector3.new(66.4981842, 3.63936186, 7.01661682)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj23.CanCollide = false
obj23.TopSurface = Enum.SurfaceType.Smooth
obj23.BottomSurface = Enum.SurfaceType.Smooth
obj23.Material = Enum.Material.SmoothPlastic
obj23.Size = Vector3.new(0.25, 0.25, 0.25)
obj23.BrickColor = BrickColor.new("Hot pink")
obj23.Friction = 0.30000001192093
obj23.Shape = Enum.PartType.Ball
obj23.Parent = obj2

-- 24 - Part
local obj24 = Instance.new("Part")
obj24.CFrame = CFrame.new(Vector3.new(66.6352844, 3.38244724, 7.06651926)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj24.CanCollide = false
obj24.TopSurface = Enum.SurfaceType.Smooth
obj24.BottomSurface = Enum.SurfaceType.Smooth
obj24.Material = Enum.Material.SmoothPlastic
obj24.Size = Vector3.new(0.25, 0.25, 0.25)
obj24.BrickColor = BrickColor.new("Hot pink")
obj24.Friction = 0.30000001192093
obj24.Shape = Enum.PartType.Ball
obj24.Parent = obj2

-- 25 - Part
local obj25 = Instance.new("Part")
obj25.CFrame = CFrame.new(Vector3.new(66.753746, 3.10362744, 7.32704163)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj25.CanCollide = false
obj25.TopSurface = Enum.SurfaceType.Smooth
obj25.BottomSurface = Enum.SurfaceType.Smooth
obj25.Material = Enum.Material.SmoothPlastic
obj25.Size = Vector3.new(0.25, 0.25, 0.25)
obj25.BrickColor = BrickColor.new("Hot pink")
obj25.Friction = 0.30000001192093
obj25.Shape = Enum.PartType.Ball
obj25.Parent = obj2

-- 26 - Part
local obj26 = Instance.new("Part")
obj26.CFrame = CFrame.new(Vector3.new(66.851532, 3.01907969, 7.04717398)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj26.CanCollide = false
obj26.TopSurface = Enum.SurfaceType.Smooth
obj26.BottomSurface = Enum.SurfaceType.Smooth
obj26.Material = Enum.Material.SmoothPlastic
obj26.Size = Vector3.new(0.25, 0.25, 0.25)
obj26.BrickColor = BrickColor.new("Hot pink")
obj26.Friction = 0.30000001192093
obj26.Shape = Enum.PartType.Ball
obj26.Parent = obj2

-- 27 - Part
local obj27 = Instance.new("Part")
obj27.CFrame = CFrame.new(Vector3.new(66.944519, 3.20876789, 7.64748764)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj27.CanCollide = false
obj27.TopSurface = Enum.SurfaceType.Smooth
obj27.BottomSurface = Enum.SurfaceType.Smooth
obj27.Material = Enum.Material.SmoothPlastic
obj27.Size = Vector3.new(0.25, 0.25, 0.25)
obj27.BrickColor = BrickColor.new("Hot pink")
obj27.Friction = 0.30000001192093
obj27.Shape = Enum.PartType.Ball
obj27.Parent = obj2

-- 28 - Part
local obj28 = Instance.new("Part")
obj28.CFrame = CFrame.new(Vector3.new(67.2306061, 4.08936405, 7.28319883)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj28.CanCollide = false
obj28.TopSurface = Enum.SurfaceType.Smooth
obj28.BottomSurface = Enum.SurfaceType.Smooth
obj28.Material = Enum.Material.SmoothPlastic
obj28.Size = Vector3.new(0.25, 0.25, 0.25)
obj28.BrickColor = BrickColor.new("Hot pink")
obj28.Friction = 0.30000001192093
obj28.Shape = Enum.PartType.Ball
obj28.Parent = obj2

-- 29 - Part
local obj29 = Instance.new("Part")
obj29.CFrame = CFrame.new(Vector3.new(66.5712891, 3.99917173, 6.8835969)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj29.CanCollide = false
obj29.TopSurface = Enum.SurfaceType.Smooth
obj29.BottomSurface = Enum.SurfaceType.Smooth
obj29.Material = Enum.Material.SmoothPlastic
obj29.Size = Vector3.new(0.25, 0.25, 0.25)
obj29.BrickColor = BrickColor.new("Hot pink")
obj29.Friction = 0.30000001192093
obj29.Shape = Enum.PartType.Ball
obj29.Parent = obj2

-- 30 - Part
local obj30 = Instance.new("Part")
obj30.CFrame = CFrame.new(Vector3.new(66.7236328, 4.26077843, 7.20509243)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj30.CanCollide = false
obj30.TopSurface = Enum.SurfaceType.Smooth
obj30.BottomSurface = Enum.SurfaceType.Smooth
obj30.Material = Enum.Material.SmoothPlastic
obj30.Size = Vector3.new(0.25, 0.25, 0.25)
obj30.BrickColor = BrickColor.new("Hot pink")
obj30.Friction = 0.30000001192093
obj30.Shape = Enum.PartType.Ball
obj30.Parent = obj2

-- 31 - Part
local obj31 = Instance.new("Part")
obj31.CFrame = CFrame.new(Vector3.new(66.5950623, 4.16077423, 7.05188084)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj31.CanCollide = false
obj31.TopSurface = Enum.SurfaceType.Smooth
obj31.BottomSurface = Enum.SurfaceType.Smooth
obj31.Material = Enum.Material.SmoothPlastic
obj31.Size = Vector3.new(0.25, 0.25, 0.25)
obj31.BrickColor = BrickColor.new("Hot pink")
obj31.Friction = 0.30000001192093
obj31.Shape = Enum.PartType.Ball
obj31.Parent = obj2

-- 32 - Part
local obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(67.0637207, 4.03936481, 7.48850012)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj32.CanCollide = false
obj32.TopSurface = Enum.SurfaceType.Smooth
obj32.BottomSurface = Enum.SurfaceType.Smooth
obj32.Material = Enum.Material.SmoothPlastic
obj32.Size = Vector3.new(0.25, 0.25, 0.25)
obj32.BrickColor = BrickColor.new("Hot pink")
obj32.Friction = 0.30000001192093
obj32.Shape = Enum.PartType.Ball
obj32.Parent = obj2

-- 33 - Part
local obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(66.4686813, 3.99917364, 7.16550922)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj33.CanCollide = false
obj33.TopSurface = Enum.SurfaceType.Smooth
obj33.BottomSurface = Enum.SurfaceType.Smooth
obj33.Material = Enum.Material.SmoothPlastic
obj33.Size = Vector3.new(0.25, 0.25, 0.25)
obj33.BrickColor = BrickColor.new("Hot pink")
obj33.Friction = 0.30000001192093
obj33.Shape = Enum.PartType.Ball
obj33.Parent = obj2

-- 34 - Part
local obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(66.6615219, 4.14917231, 7.3953228)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj34.CanCollide = false
obj34.TopSurface = Enum.SurfaceType.Smooth
obj34.BottomSurface = Enum.SurfaceType.Smooth
obj34.Material = Enum.Material.SmoothPlastic
obj34.Size = Vector3.new(0.25, 0.25, 0.25)
obj34.BrickColor = BrickColor.new("Hot pink")
obj34.Friction = 0.30000001192093
obj34.Shape = Enum.PartType.Ball
obj34.Parent = obj2

-- 35 - Part
local obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(66.8712616, 4.16257238, 7.47166586)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj35.CanCollide = false
obj35.TopSurface = Enum.SurfaceType.Smooth
obj35.BottomSurface = Enum.SurfaceType.Smooth
obj35.Material = Enum.Material.SmoothPlastic
obj35.Size = Vector3.new(0.25, 0.25, 0.25)
obj35.BrickColor = BrickColor.new("Hot pink")
obj35.Friction = 0.30000001192093
obj35.Shape = Enum.PartType.Ball
obj35.Parent = obj2

-- 36 - Part
local obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(66.7165604, 3.82596827, 6.77684546)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj36.CanCollide = false
obj36.TopSurface = Enum.SurfaceType.Smooth
obj36.BottomSurface = Enum.SurfaceType.Smooth
obj36.Material = Enum.Material.SmoothPlastic
obj36.Size = Vector3.new(0.25, 0.25, 0.25)
obj36.BrickColor = BrickColor.new("Hot pink")
obj36.Friction = 0.30000001192093
obj36.Shape = Enum.PartType.Ball
obj36.Parent = obj2

-- 37 - Part
local obj37 = Instance.new("Part")
obj37.CFrame = CFrame.new(Vector3.new(66.9846878, 4.27417517, 7.14047909)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj37.CanCollide = false
obj37.TopSurface = Enum.SurfaceType.Smooth
obj37.BottomSurface = Enum.SurfaceType.Smooth
obj37.Material = Enum.Material.SmoothPlastic
obj37.Size = Vector3.new(0.25, 0.25, 0.25)
obj37.BrickColor = BrickColor.new("Hot pink")
obj37.Friction = 0.30000001192093
obj37.Shape = Enum.PartType.Ball
obj37.Parent = obj2

-- 38 - Part
local obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(67.1641541, 4.10096312, 6.93975735)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj38.CanCollide = false
obj38.TopSurface = Enum.SurfaceType.Smooth
obj38.BottomSurface = Enum.SurfaceType.Smooth
obj38.Material = Enum.Material.SmoothPlastic
obj38.Size = Vector3.new(0.25, 0.25, 0.25)
obj38.BrickColor = BrickColor.new("Hot pink")
obj38.Friction = 0.30000001192093
obj38.Shape = Enum.PartType.Ball
obj38.Parent = obj2

-- 39 - Part
local obj39 = Instance.new("Part")
obj39.CFrame = CFrame.new(Vector3.new(66.792038, 4.26077843, 7.01715183)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj39.CanCollide = false
obj39.TopSurface = Enum.SurfaceType.Smooth
obj39.BottomSurface = Enum.SurfaceType.Smooth
obj39.Material = Enum.Material.SmoothPlastic
obj39.Size = Vector3.new(0.25, 0.25, 0.25)
obj39.BrickColor = BrickColor.new("Hot pink")
obj39.Friction = 0.30000001192093
obj39.Shape = Enum.PartType.Ball
obj39.Parent = obj2

-- 40 - Part
local obj40 = Instance.new("Part")
obj40.CFrame = CFrame.new(Vector3.new(66.5005493, 3.71436262, 7.38994217)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj40.CanCollide = false
obj40.TopSurface = Enum.SurfaceType.Smooth
obj40.BottomSurface = Enum.SurfaceType.Smooth
obj40.Material = Enum.Material.SmoothPlastic
obj40.Size = Vector3.new(0.25, 0.25, 0.25)
obj40.BrickColor = BrickColor.new("Hot pink")
obj40.Friction = 0.30000001192093
obj40.Shape = Enum.PartType.Ball
obj40.Parent = obj2

-- 41 - stretches
local obj41 = Instance.new("Model")
obj41.Name = "stretches"
obj41.Parent = obj1

-- 42 - stretchlol
local obj42 = Instance.new("Part")
obj42.CFrame = CFrame.new(Vector3.new(67.162117, 3.13544774, 6.8847661)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj42.CanCollide = false
obj42.Transparency = 1
obj42.TopSurface = Enum.SurfaceType.Smooth
obj42.BottomSurface = Enum.SurfaceType.Smooth
obj42.Material = Enum.Material.SmoothPlastic
obj42.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj42.BrickColor = BrickColor.new("Pastel brown")
obj42.Friction = 0.30000001192093
obj42.Shape = Enum.PartType.Ball
obj42.Name = "stretchlol"
obj42.Parent = obj41

-- 43 - stretchlol
local obj43 = Instance.new("Part")
obj43.CFrame = CFrame.new(Vector3.new(67.1951675, 3.40412855, 7.69050598)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj43.CanCollide = false
obj43.Transparency = 1
obj43.TopSurface = Enum.SurfaceType.Smooth
obj43.BottomSurface = Enum.SurfaceType.Smooth
obj43.Material = Enum.Material.SmoothPlastic
obj43.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj43.BrickColor = BrickColor.new("Pastel brown")
obj43.Friction = 0.30000001192093
obj43.Shape = Enum.PartType.Ball
obj43.Name = "stretchlol"
obj43.Parent = obj41

-- 44 - stretchlol
local obj44 = Instance.new("Part")
obj44.CFrame = CFrame.new(Vector3.new(67.5038223, 3.48357916, 7.48069382)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj44.CanCollide = false
obj44.Transparency = 1
obj44.TopSurface = Enum.SurfaceType.Smooth
obj44.BottomSurface = Enum.SurfaceType.Smooth
obj44.Material = Enum.Material.SmoothPlastic
obj44.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj44.BrickColor = BrickColor.new("Pastel brown")
obj44.Friction = 0.30000001192093
obj44.Shape = Enum.PartType.Ball
obj44.Name = "stretchlol"
obj44.Parent = obj41

-- 45 - stretchlol
local obj45 = Instance.new("Part")
obj45.CFrame = CFrame.new(Vector3.new(67.1641541, 4.12207699, 6.93975687)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj45.CanCollide = false
obj45.Transparency = 1
obj45.TopSurface = Enum.SurfaceType.Smooth
obj45.BottomSurface = Enum.SurfaceType.Smooth
obj45.Material = Enum.Material.SmoothPlastic
obj45.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj45.BrickColor = BrickColor.new("Pastel brown")
obj45.Friction = 0.30000001192093
obj45.Shape = Enum.PartType.Ball
obj45.Name = "stretchlol"
obj45.Parent = obj41

-- 46 - stretchlol
local obj46 = Instance.new("Part")
obj46.CFrame = CFrame.new(Vector3.new(66.8712616, 4.18368626, 7.47166586)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj46.CanCollide = false
obj46.Transparency = 1
obj46.TopSurface = Enum.SurfaceType.Smooth
obj46.BottomSurface = Enum.SurfaceType.Smooth
obj46.Material = Enum.Material.SmoothPlastic
obj46.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj46.BrickColor = BrickColor.new("Pastel brown")
obj46.Friction = 0.30000001192093
obj46.Shape = Enum.PartType.Ball
obj46.Name = "stretchlol"
obj46.Parent = obj41

-- 47 - stretchlol
local obj47 = Instance.new("Part")
obj47.CFrame = CFrame.new(Vector3.new(66.8260345, 4.14528561, 6.81669378)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj47.CanCollide = false
obj47.Transparency = 1
obj47.TopSurface = Enum.SurfaceType.Smooth
obj47.BottomSurface = Enum.SurfaceType.Smooth
obj47.Material = Enum.Material.SmoothPlastic
obj47.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj47.BrickColor = BrickColor.new("Pastel brown")
obj47.Friction = 0.30000001192093
obj47.Shape = Enum.PartType.Ball
obj47.Name = "stretchlol"
obj47.Parent = obj41

-- 48 - stretchlol
local obj48 = Instance.new("Part")
obj48.CFrame = CFrame.new(Vector3.new(66.7104797, 3.88547921, 7.57276678)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj48.CanCollide = false
obj48.Transparency = 1
obj48.TopSurface = Enum.SurfaceType.Smooth
obj48.BottomSurface = Enum.SurfaceType.Smooth
obj48.Material = Enum.Material.SmoothPlastic
obj48.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj48.BrickColor = BrickColor.new("Pastel brown")
obj48.Friction = 0.30000001192093
obj48.Shape = Enum.PartType.Ball
obj48.Name = "stretchlol"
obj48.Parent = obj41

-- 49 - stretchlol
local obj49 = Instance.new("Part")
obj49.CFrame = CFrame.new(Vector3.new(67.0637207, 4.06047773, 7.48850012)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj49.CanCollide = false
obj49.Transparency = 1
obj49.TopSurface = Enum.SurfaceType.Smooth
obj49.BottomSurface = Enum.SurfaceType.Smooth
obj49.Material = Enum.Material.SmoothPlastic
obj49.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj49.BrickColor = BrickColor.new("Pastel brown")
obj49.Friction = 0.30000001192093
obj49.Shape = Enum.PartType.Ball
obj49.Name = "stretchlol"
obj49.Parent = obj41

-- 50 - stretchlol
local obj50 = Instance.new("Part")
obj50.CFrame = CFrame.new(Vector3.new(66.7165604, 3.84708691, 6.77684498)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj50.CanCollide = false
obj50.Transparency = 1
obj50.TopSurface = Enum.SurfaceType.Smooth
obj50.BottomSurface = Enum.SurfaceType.Smooth
obj50.Material = Enum.Material.SmoothPlastic
obj50.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj50.BrickColor = BrickColor.new("Pastel brown")
obj50.Friction = 0.30000001192093
obj50.Shape = Enum.PartType.Ball
obj50.Name = "stretchlol"
obj50.Parent = obj41

-- 51 - stretchlol
local obj51 = Instance.new("Part")
obj51.CFrame = CFrame.new(Vector3.new(66.9846878, 4.29528904, 7.14047909)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj51.CanCollide = false
obj51.Transparency = 1
obj51.TopSurface = Enum.SurfaceType.Smooth
obj51.BottomSurface = Enum.SurfaceType.Smooth
obj51.Material = Enum.Material.SmoothPlastic
obj51.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj51.BrickColor = BrickColor.new("Pastel brown")
obj51.Friction = 0.30000001192093
obj51.Shape = Enum.PartType.Ball
obj51.Name = "stretchlol"
obj51.Parent = obj41

-- 52 - stretchlol
local obj52 = Instance.new("Part")
obj52.CFrame = CFrame.new(Vector3.new(66.868927, 3.45350599, 6.82578087)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj52.CanCollide = false
obj52.Transparency = 1
obj52.TopSurface = Enum.SurfaceType.Smooth
obj52.BottomSurface = Enum.SurfaceType.Smooth
obj52.Material = Enum.Material.SmoothPlastic
obj52.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj52.BrickColor = BrickColor.new("Pastel brown")
obj52.Friction = 0.30000001192093
obj52.Shape = Enum.PartType.Ball
obj52.Name = "stretchlol"
obj52.Parent = obj41

-- 53 - stretchlol
local obj53 = Instance.new("Part")
obj53.CFrame = CFrame.new(Vector3.new(67.287262, 3.10603261, 7.30382156)) * CFrame.Angles(9.1487750708552e-09, -0.34906616806984, -1.0471986532211)
obj53.CanCollide = false
obj53.Transparency = 1
obj53.TopSurface = Enum.SurfaceType.Smooth
obj53.BottomSurface = Enum.SurfaceType.Smooth
obj53.Material = Enum.Material.SmoothPlastic
obj53.Size = Vector3.new(1.79999995, 1.04999995, 1.04999995)
obj53.BrickColor = BrickColor.new("Pastel brown")
obj53.Friction = 0.30000001192093
obj53.Shape = Enum.PartType.Cylinder
obj53.Name = "stretchlol"
obj53.Parent = obj41

-- 54 - stretchlol
local obj54 = Instance.new("Part")
obj54.CFrame = CFrame.new(Vector3.new(66.4686813, 4.02028799, 7.16550922)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj54.CanCollide = false
obj54.Transparency = 1
obj54.TopSurface = Enum.SurfaceType.Smooth
obj54.BottomSurface = Enum.SurfaceType.Smooth
obj54.Material = Enum.Material.SmoothPlastic
obj54.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj54.BrickColor = BrickColor.new("Pastel brown")
obj54.Friction = 0.30000001192093
obj54.Shape = Enum.PartType.Ball
obj54.Name = "stretchlol"
obj54.Parent = obj41

-- 55 - stretchlol
local obj55 = Instance.new("Part")
obj55.CFrame = CFrame.new(Vector3.new(66.6615219, 4.17028332, 7.3953228)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj55.CanCollide = false
obj55.Transparency = 1
obj55.TopSurface = Enum.SurfaceType.Smooth
obj55.BottomSurface = Enum.SurfaceType.Smooth
obj55.Material = Enum.Material.SmoothPlastic
obj55.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj55.BrickColor = BrickColor.new("Pastel brown")
obj55.Friction = 0.30000001192093
obj55.Shape = Enum.PartType.Ball
obj55.Name = "stretchlol"
obj55.Parent = obj41

-- 56 - stretchlol
local obj56 = Instance.new("Part")
obj56.CFrame = CFrame.new(Vector3.new(66.753746, 3.12474751, 7.32704115)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj56.CanCollide = false
obj56.Transparency = 1
obj56.TopSurface = Enum.SurfaceType.Smooth
obj56.BottomSurface = Enum.SurfaceType.Smooth
obj56.Material = Enum.Material.SmoothPlastic
obj56.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj56.BrickColor = BrickColor.new("Pastel brown")
obj56.Friction = 0.30000001192093
obj56.Shape = Enum.PartType.Ball
obj56.Name = "stretchlol"
obj56.Parent = obj41

-- 57 - stretchlol
local obj57 = Instance.new("Part")
obj57.CFrame = CFrame.new(Vector3.new(67.2306061, 4.11047649, 7.28319883)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj57.CanCollide = false
obj57.Transparency = 1
obj57.TopSurface = Enum.SurfaceType.Smooth
obj57.BottomSurface = Enum.SurfaceType.Smooth
obj57.Material = Enum.Material.SmoothPlastic
obj57.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj57.BrickColor = BrickColor.new("Pastel brown")
obj57.Friction = 0.30000001192093
obj57.Shape = Enum.PartType.Ball
obj57.Name = "stretchlol"
obj57.Parent = obj41

-- 58 - stretchlol
local obj58 = Instance.new("Part")
obj58.CFrame = CFrame.new(Vector3.new(67.0756683, 3.79114079, 7.63403416)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj58.CanCollide = false
obj58.Transparency = 1
obj58.TopSurface = Enum.SurfaceType.Smooth
obj58.BottomSurface = Enum.SurfaceType.Smooth
obj58.Material = Enum.Material.SmoothPlastic
obj58.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj58.BrickColor = BrickColor.new("Pastel brown")
obj58.Friction = 0.30000001192093
obj58.Shape = Enum.PartType.Ball
obj58.Name = "stretchlol"
obj58.Parent = obj41

-- 59 - stretchlol
local obj59 = Instance.new("Part")
obj59.CFrame = CFrame.new(Vector3.new(66.5005493, 3.73548079, 7.38994217)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj59.CanCollide = false
obj59.Transparency = 1
obj59.TopSurface = Enum.SurfaceType.Smooth
obj59.BottomSurface = Enum.SurfaceType.Smooth
obj59.Material = Enum.Material.SmoothPlastic
obj59.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj59.BrickColor = BrickColor.new("Pastel brown")
obj59.Friction = 0.30000001192093
obj59.Shape = Enum.PartType.Ball
obj59.Name = "stretchlol"
obj59.Parent = obj41

-- 60 - stretchlol
local obj60 = Instance.new("Part")
obj60.CFrame = CFrame.new(Vector3.new(67.6487045, 3.41425848, 7.1938138)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj60.CanCollide = false
obj60.Transparency = 1
obj60.TopSurface = Enum.SurfaceType.Smooth
obj60.BottomSurface = Enum.SurfaceType.Smooth
obj60.Material = Enum.Material.SmoothPlastic
obj60.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj60.BrickColor = BrickColor.new("Pastel brown")
obj60.Friction = 0.30000001192093
obj60.Shape = Enum.PartType.Ball
obj60.Name = "stretchlol"
obj60.Parent = obj41

-- 61 - stretchlol
local obj61 = Instance.new("Part")
obj61.CFrame = CFrame.new(Vector3.new(67.3677139, 3.85357118, 7.33310223)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj61.CanCollide = false
obj61.Transparency = 1
obj61.TopSurface = Enum.SurfaceType.Smooth
obj61.BottomSurface = Enum.SurfaceType.Smooth
obj61.Material = Enum.Material.SmoothPlastic
obj61.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj61.BrickColor = BrickColor.new("Pastel brown")
obj61.Friction = 0.30000001192093
obj61.Shape = Enum.PartType.Ball
obj61.Name = "stretchlol"
obj61.Parent = obj41

-- 62 - stretchlol
local obj62 = Instance.new("Part")
obj62.CFrame = CFrame.new(Vector3.new(66.6352844, 3.40356588, 7.06651878)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj62.CanCollide = false
obj62.Transparency = 1
obj62.TopSurface = Enum.SurfaceType.Smooth
obj62.BottomSurface = Enum.SurfaceType.Smooth
obj62.Material = Enum.Material.SmoothPlastic
obj62.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj62.BrickColor = BrickColor.new("Pastel brown")
obj62.Friction = 0.30000001192093
obj62.Shape = Enum.PartType.Ball
obj62.Name = "stretchlol"
obj62.Parent = obj41

-- 63 - stretchlol
local obj63 = Instance.new("Part")
obj63.CFrame = CFrame.new(Vector3.new(66.7236328, 4.28189754, 7.20509195)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj63.CanCollide = false
obj63.Transparency = 1
obj63.TopSurface = Enum.SurfaceType.Smooth
obj63.BottomSurface = Enum.SurfaceType.Smooth
obj63.Material = Enum.Material.SmoothPlastic
obj63.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj63.BrickColor = BrickColor.new("Pastel brown")
obj63.Friction = 0.30000001192093
obj63.Shape = Enum.PartType.Ball
obj63.Name = "stretchlol"
obj63.Parent = obj41

-- 64 - stretchlol
local obj64 = Instance.new("Part")
obj64.CFrame = CFrame.new(Vector3.new(66.5712891, 4.02028799, 6.8835969)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj64.CanCollide = false
obj64.Transparency = 1
obj64.TopSurface = Enum.SurfaceType.Smooth
obj64.BottomSurface = Enum.SurfaceType.Smooth
obj64.Material = Enum.Material.SmoothPlastic
obj64.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj64.BrickColor = BrickColor.new("Pastel brown")
obj64.Friction = 0.30000001192093
obj64.Shape = Enum.PartType.Ball
obj64.Name = "stretchlol"
obj64.Parent = obj41

-- 65 - stretchlol
local obj65 = Instance.new("Part")
obj65.CFrame = CFrame.new(Vector3.new(66.4981842, 3.66047978, 7.01661682)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj65.CanCollide = false
obj65.Transparency = 1
obj65.TopSurface = Enum.SurfaceType.Smooth
obj65.BottomSurface = Enum.SurfaceType.Smooth
obj65.Material = Enum.Material.SmoothPlastic
obj65.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj65.BrickColor = BrickColor.new("Pastel brown")
obj65.Friction = 0.30000001192093
obj65.Shape = Enum.PartType.Ball
obj65.Name = "stretchlol"
obj65.Parent = obj41

-- 66 - stretchlol
local obj66 = Instance.new("Part")
obj66.CFrame = CFrame.new(Vector3.new(66.7920303, 4.28189754, 7.01715183)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj66.CanCollide = false
obj66.Transparency = 1
obj66.TopSurface = Enum.SurfaceType.Smooth
obj66.BottomSurface = Enum.SurfaceType.Smooth
obj66.Material = Enum.Material.SmoothPlastic
obj66.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj66.BrickColor = BrickColor.new("Pastel brown")
obj66.Friction = 0.30000001192093
obj66.Shape = Enum.PartType.Ball
obj66.Name = "stretchlol"
obj66.Parent = obj41

-- 67 - stretchlol
local obj67 = Instance.new("Part")
obj67.CFrame = CFrame.new(Vector3.new(66.5950623, 4.18188763, 7.05188084)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj67.CanCollide = false
obj67.Transparency = 1
obj67.TopSurface = Enum.SurfaceType.Smooth
obj67.BottomSurface = Enum.SurfaceType.Smooth
obj67.Material = Enum.Material.SmoothPlastic
obj67.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj67.BrickColor = BrickColor.new("Pastel brown")
obj67.Friction = 0.30000001192093
obj67.Shape = Enum.PartType.Ball
obj67.Name = "stretchlol"
obj67.Parent = obj41

-- 68 - stretchlol
local obj68 = Instance.new("Part")
obj68.CFrame = CFrame.new(Vector3.new(67.4115601, 3.73646879, 7.01420689)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj68.CanCollide = false
obj68.Transparency = 1
obj68.TopSurface = Enum.SurfaceType.Smooth
obj68.BottomSurface = Enum.SurfaceType.Smooth
obj68.Material = Enum.Material.SmoothPlastic
obj68.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj68.BrickColor = BrickColor.new("Pastel brown")
obj68.Friction = 0.30000001192093
obj68.Shape = Enum.PartType.Ball
obj68.Name = "stretchlol"
obj68.Parent = obj41

-- 69 - stretchlol
local obj69 = Instance.new("Part")
obj69.CFrame = CFrame.new(Vector3.new(66.8643951, 3.88548112, 7.14990711)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj69.CanCollide = false
obj69.Transparency = 1
obj69.TopSurface = Enum.SurfaceType.Smooth
obj69.BottomSurface = Enum.SurfaceType.Smooth
obj69.Material = Enum.Material.SmoothPlastic
obj69.Size = Vector3.new(1.04999995, 1.04999995, 1.04999995)
obj69.BrickColor = BrickColor.new("Pastel brown")
obj69.Friction = 0.30000001192093
obj69.Shape = Enum.PartType.Ball
obj69.Name = "stretchlol"
obj69.Parent = obj41

-- 70 - stretchlol
local obj70 = Instance.new("Part")
obj70.CFrame = CFrame.new(Vector3.new(67.4108353, 3.29388237, 6.88037777)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj70.CanCollide = false
obj70.Transparency = 1
obj70.TopSurface = Enum.SurfaceType.Smooth
obj70.BottomSurface = Enum.SurfaceType.Smooth
obj70.Material = Enum.Material.SmoothPlastic
obj70.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj70.BrickColor = BrickColor.new("Pastel brown")
obj70.Friction = 0.30000001192093
obj70.Shape = Enum.PartType.Ball
obj70.Name = "stretchlol"
obj70.Parent = obj41

-- 71 - stretchlol
local obj71 = Instance.new("Part")
obj71.CFrame = CFrame.new(Vector3.new(67.1960983, 3.65356374, 6.79175806)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj71.CanCollide = false
obj71.Transparency = 1
obj71.TopSurface = Enum.SurfaceType.Smooth
obj71.BottomSurface = Enum.SurfaceType.Smooth
obj71.Material = Enum.Material.SmoothPlastic
obj71.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj71.BrickColor = BrickColor.new("Pastel brown")
obj71.Friction = 0.30000001192093
obj71.Shape = Enum.PartType.Ball
obj71.Name = "stretchlol"
obj71.Parent = obj41

-- 72 - stretchlol
local obj72 = Instance.new("Part")
obj72.CFrame = CFrame.new(Vector3.new(66.944519, 3.22988653, 7.64748716)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj72.CanCollide = false
obj72.Transparency = 1
obj72.TopSurface = Enum.SurfaceType.Smooth
obj72.BottomSurface = Enum.SurfaceType.Smooth
obj72.Material = Enum.Material.SmoothPlastic
obj72.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj72.BrickColor = BrickColor.new("Pastel brown")
obj72.Friction = 0.30000001192093
obj72.Shape = Enum.PartType.Ball
obj72.Name = "stretchlol"
obj72.Parent = obj41

-- 73 - stretchlol
local obj73 = Instance.new("Part")
obj73.CFrame = CFrame.new(Vector3.new(66.851532, 3.04020095, 7.04717398)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj73.CanCollide = false
obj73.Transparency = 1
obj73.TopSurface = Enum.SurfaceType.Smooth
obj73.BottomSurface = Enum.SurfaceType.Smooth
obj73.Material = Enum.Material.SmoothPlastic
obj73.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj73.BrickColor = BrickColor.new("Pastel brown")
obj73.Friction = 0.30000001192093
obj73.Shape = Enum.PartType.Ball
obj73.Name = "stretchlol"
obj73.Parent = obj41

-- 74 - stretchlol
local obj74 = Instance.new("Part")
obj74.CFrame = CFrame.new(Vector3.new(66.5551376, 3.48395109, 7.33871603)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj74.CanCollide = false
obj74.Transparency = 1
obj74.TopSurface = Enum.SurfaceType.Smooth
obj74.BottomSurface = Enum.SurfaceType.Smooth
obj74.Material = Enum.Material.SmoothPlastic
obj74.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj74.BrickColor = BrickColor.new("Pastel brown")
obj74.Friction = 0.30000001192093
obj74.Shape = Enum.PartType.Ball
obj74.Name = "stretchlol"
obj74.Parent = obj41

-- 75 - stretchlol
local obj75 = Instance.new("Part")
obj75.CFrame = CFrame.new(Vector3.new(66.8069, 3.60357046, 7.60786104)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj75.CanCollide = false
obj75.Transparency = 1
obj75.TopSurface = Enum.SurfaceType.Smooth
obj75.BottomSurface = Enum.SurfaceType.Smooth
obj75.Material = Enum.Material.SmoothPlastic
obj75.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj75.BrickColor = BrickColor.new("Pastel brown")
obj75.Friction = 0.30000001192093
obj75.Shape = Enum.PartType.Ball
obj75.Name = "stretchlol"
obj75.Parent = obj41

-- 76 - stretchlol
local obj76 = Instance.new("Part")
obj76.CFrame = CFrame.new(Vector3.new(67.0182953, 3.88547921, 6.72704411)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj76.CanCollide = false
obj76.Transparency = 1
obj76.TopSurface = Enum.SurfaceType.Smooth
obj76.BottomSurface = Enum.SurfaceType.Smooth
obj76.Material = Enum.Material.SmoothPlastic
obj76.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj76.BrickColor = BrickColor.new("Pastel brown")
obj76.Friction = 0.30000001192093
obj76.Shape = Enum.PartType.Ball
obj76.Name = "stretchlol"
obj76.Parent = obj41
obj1.PrimaryPart = obj4

local stretches = obj41:GetChildren()
for i,v in pairs(stretches) do
	v.Anchored = true
	v.Parent = obj1
end
for i,v in pairs(obj2:GetChildren()) do
	v.Anchored = true
	v.Parent = obj1
end
obj2:Destroy()
obj41:Destroy()

local previous = nil
for i,v in pairs(obj1:GetChildren()) do
	if v:IsA('BasePart') then
		if previous then
			local weld = Instance.new('Weld',v)
			weld.Part0 = v
			weld.Part1 = previous
			weld.C0 = v.CFrame:inverse() * previous.CFrame
			previous.Anchored = false
			previous.CanCollide = false
			local vee = v
			weld.AncestryChanged:connect(function(mez,par)
				wait()
				weld.Parent = vee
			end)
		end
		previous = v
	end
end
previous.Anchored = false
previous.CanCollide = false
obj1:SetPrimaryPartCFrame(handle.CFrame*CFrame.Angles(0,math.rad(180),0)+Vector3.new(0,100,0))
-- 2 - Part
local ree = Instance.new("Part")
ree.CFrame = CFrame.new(Vector3.new(50.5, 141, 5.5))
ree.Transparency = 0.80000001192093
ree.Material = Enum.Material.Neon
ree.CFrame = CFrame.new(obj4.Position)
ree.Size = Vector3.new(7.5, math.huge, 7.5)
ree.BrickColor = BrickColor.new("New Yeller")
ree.Friction = 0.30000001192093
ree.Shape = Enum.PartType.Block
ree.Parent = handle

-- 3 - Mesh
local ree2 = Instance.new("CylinderMesh")
ree2.Parent = ree
local thing = Instance.new('BodyPosition',obj9)
local thing2 = Instance.new('BodyPosition',ree)
thing2.P = 100000
thing2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
local OOOOO = Instance.new('Sound',handle)
OOOOO.SoundId = 'rbxassetid://139100774'
OOOOO.Volume = 2
OOOOO:Play()
thing.MaxForce = Vector3.new(10000,10000,10000)
	for i=1,225 do
		thing2.Position = obj4.Position
		obj1:SetPrimaryPartCFrame(CFrame.new(obj1.PrimaryPart.Position)*CFrame.Angles(math.rad(handle.Orientation.X),math.rad(handle.Orientation.Y),math.rad(handle.Orientation.Z))*CFrame.Angles(0,math.rad(180),0))
		thing.Position = handle.Position+(handle.CFrame.rightVector*0.5)
		wait()
	end
	thing:Destroy()
	local lmfao = Instance.new('Weld',obj4)
	lmfao.C0 = CFrame.new(2.5,0.2,0)*CFrame.Angles(0,math.rad(180),0)
	lmfao.Part0 = obj4
	lmfao.Part1 = handle
ree:Destroy()
OOOOO:Destroy()
	working = false
end

function katanamode()
	blademode = "katana"
	-- 1 - weeb shit
	local weebshit1 = handle
	
	-- 16 - top cap
	local weebshit16 = Instance.new("Part")
	weebshit16.CFrame = CFrame.new(Vector3.new(206.400146, 11.5499945, 5.00058556)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
	weebshit16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.Size = Vector3.new(0.1, 0.05,0.05) --0.65, 0.65
	weebshit16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.Anchored = false
	weebshit16.BrickColor = BrickColor.new("Really black")
	weebshit16.Friction = 0.30000001192093
	weebshit16.Shape = Enum.PartType.Cylinder
	weebshit16.Name = "top cap"
	weebshit16.Parent = weebshit1
	local weld = Instance.new('Weld',weebshit16)
	weld.Part0 = weebshit16
	weld.Part1 = handle
	weld.C1 = CFrame.new(0.6, 0, 0, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
	--weld,part,endsize,endpos,amntime
	grow(weld,weebshit16,Vector3.new(0.1,0.65,0.65),CFrame.new(0.6, 0, 0, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048),0.1)
	
	-- 8 - blade
	local weebshit8 = Instance.new("Part")
	weebshit8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.Material = Enum.Material.Metal
	weebshit8.Size = Vector3.new(0.23,0.05, 0.1)
	weebshit8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.Anchored = false
	weebshit8.BrickColor = BrickColor.new("Dark stone grey")
	weebshit8.Friction = 0.30000001192093
	weebshit8.Shape = Enum.PartType.Block
	weebshit8.Name = "blade"
	weebshit8.Parent = weebshit1
	weebshit8:BreakJoints()
	local bld1 = weebshit8
	local weld2 = Instance.new('Weld',weebshit8)
	weld2.Part0 = weebshit8
	weld2.Part1 = handle
	weld2.C1 = CFrame.new(0.75, 0, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-90))
	local coru=coroutine.wrap(function()
	grow(weld2,weebshit8,Vector3.new(0.23,1.17,0.1),CFrame.new(1.25, 0, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-90)),0.05)
	end)
	coru()
	
	-- 9 - blade
	local weebshit9 = Instance.new("Part")
	weebshit9.CFrame = CFrame.new(Vector3.new(206.475388, 13.3372736, 5.00158167)) * CFrame.Angles(-0, 0, 0.052359949797392)
	weebshit9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.Material = Enum.Material.Metal
	weebshit9.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.Anchored = false
	weebshit9.BrickColor = BrickColor.new("Pearl")
	weebshit9.Friction = 0.30000001192093
	weebshit9.Shape = Enum.PartType.Block
	weebshit9.Name = "blade"
	weebshit9.Parent = weebshit8
	local bld2 = weebshit9
	local weld3 = Instance.new('Weld',weebshit9)
	weld3.Part0 = weebshit9
	weld3.Part1 = weebshit8
	weld3.C1 = CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld3,weebshit9,Vector3.new(0.100000009, 1.17, 0.0500000007),CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.05)
	-- 10 - blade
	local weebshit10 = Instance.new("Part")
	weebshit10.CFrame = CFrame.new(Vector3.new(206.26973, 14.458313, 5)) * CFrame.Angles(-0, 0, 0.10472027212381)
	weebshit10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.Material = Enum.Material.Metal
	weebshit10.Size = Vector3.new(0.229999945, 0.05, 0.100000009)
	weebshit10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.Anchored = false
	weebshit10.BrickColor = BrickColor.new("Dark stone grey")
	weebshit10.Friction = 0.30000001192093
	weebshit10.Shape = Enum.PartType.Block
	weebshit10.Name = "blade"
	weebshit10.Parent = weebshit1
	local weld4 = Instance.new('Weld',weebshit10)
	weld4.Part0 = weebshit10
	weld4.Part1 = weebshit8
	weld4.C1 = CFrame.new(-0.01, 0.55, -1.14440918e-05, 0.998631477, 0.0523363762, -1.25522347e-05, 0.0523363687, -0.998631358, -8.97663813e-06, -1.3056685e-05, 8.01841452e-06, -1.00000095)
	local coru=coroutine.wrap(function()
	grow(weld4,weebshit10,Vector3.new(0.23,1.17,0.1),CFrame.new(-0.0285797119, 1.14634609, -1.14440918e-05, 0.998631477, 0.0523363762, -1.25522347e-05, 0.0523363687, -0.998631358, -8.97663813e-06, -1.3056685e-05, 8.01841452e-06, -1.00000095),0.1)
	end)
	coru()
	-- 11 - blade
	local weebshit11 = Instance.new("Part")
	weebshit11.CFrame = CFrame.new(Vector3.new(206.384079, 14.4703341, 5.00158167)) * CFrame.Angles(-0, 0, 0.10472027212381)
	weebshit11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.Material = Enum.Material.Metal
	weebshit11.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.Anchored = false
	weebshit11.BrickColor = BrickColor.new("Pearl")
	weebshit11.Friction = 0.30000001192093
	weebshit11.Shape = Enum.PartType.Block
	weebshit11.Name = "blade"
	weebshit11.Parent = weebshit1
	local weld5 = Instance.new('Weld',weebshit10)
	weld5.Part0 = weebshit10
	weld5.Part1 = weebshit11
	weld5.C1 = CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld5,weebshit11,Vector3.new(0.100000009, 1.16999841, 0.0500000007),CFrame.new(-0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.1)
	
	-- 15 - blade
	local weebshit15 = Instance.new("Part")
	weebshit15.CFrame = CFrame.new(Vector3.new(206.36055, 13.3312511, 5)) * CFrame.Angles(-0, 0, 0.052359949797392)
	weebshit15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.Material = Enum.Material.Metal
	weebshit15.Size = Vector3.new(0.229999945, 0.55, 0.100000009)
	weebshit15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.Anchored = false
	weebshit15.BrickColor = BrickColor.new("Dark stone grey")
	weebshit15.Friction = 0.30000001192093
	weebshit15.Shape = Enum.PartType.Block
	weebshit15.Name = "blade"
	weebshit15.Parent = weebshit1
	local weld6 = Instance.new('Weld',weebshit15)
	weld6.Part0 = weebshit15
	weld6.Part1 = weebshit10
	weld6.C1 = CFrame.new(-0.01, -0.55, 0, 0.99863112, -0.0523363762, 5.34574838e-07, -0.0523363203, -0.998631358, 9.75034527e-06, 9.04611142e-08, -1.00508332e-05, -1.0000006)
	local coru=coroutine.wrap(function()
	grow(weld6,weebshit15,Vector3.new(0.229999945, 1.17000151, 0.100000009),CFrame.new(-0.0274810791, -1.13038063, 0, 0.99863112, -0.0523363762, 5.34574838e-07, -0.0523363203, -0.998631358, 9.75034527e-06, 9.04611142e-08, -1.00508332e-05, -1.0000006),0.1)
	end)
	coru()
	
	-- 12 - blade
	local weebshit12 = Instance.new("Part")
	weebshit12.CFrame = CFrame.new(Vector3.new(206.50705, 12.1849957, 5.00158167)) * CFrame.Angles(-0, 0, -0)
	weebshit12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.Material = Enum.Material.Metal
	weebshit12.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.Anchored = false
	weebshit12.BrickColor = BrickColor.new("Pearl")
	weebshit12.Friction = 0.30000001192093
	weebshit12.Shape = Enum.PartType.Block
	weebshit12.Name = "blade"
	weebshit12.Parent = weebshit1
	local weld7 = Instance.new('Weld',weebshit12)
	weld7.Part0 = weebshit12
	weld7.Part1 = weebshit15
	weld7.C1 = CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld7,weebshit12,Vector3.new(0.100000009, 1.16999841, 0.0500000007),CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.1)
	
	-- 14 - blade
	local weebshit14 = Instance.new("Part")
	weebshit14.CFrame = CFrame.new(Vector3.new(206.155365, 15.3628922, 5)) * CFrame.Angles(-0, 0, 0.15708021819592)
	weebshit14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.Material = Enum.Material.Metal
	weebshit14.Size = Vector3.new(0.229999945, 0.05, 0.100000009)
	weebshit14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.Anchored = false
	weebshit14.BrickColor = BrickColor.new("Dark stone grey")
	weebshit14.Friction = 0.30000001192093
	weebshit14.Shape = Enum.PartType.Block
	weebshit14.Name = "blade"
	weebshit14.Parent = weebshit1
	local weld8 = Instance.new('Weld',weebshit14)
	weld8.Part0 = weebshit14
	weld8.Part1 = weebshit15
	weld8.C1 = CFrame.new(-0.01, 0.45, -1.43051147e-06, 0.99862963, 0.0522801876, -1.10407145e-05, 0.0522794127, 0.998632491, -1.50609173e-06, 8.47656065e-06, 1.7598054e-06, 1)
	local coru=coroutine.wrap(function()
		grow(weld8,weebshit14,Vector3.new(0.229999945, 0.700001657, 0.100000009),CFrame.new(-0.0191650391, 0.911635399, -1.43051147e-06, 0.99862963, 0.0522801876, -1.10407145e-05, 0.0522794127, 0.998632491, -1.50609173e-06, 8.47656065e-06, 1.7598054e-06, 1),0.1)
	end)
	coru()
	
	-- 13 - blade
	local weebshit13 = Instance.new("Part")
	weebshit13.CFrame = CFrame.new(Vector3.new(206.268967, 15.3808832, 5.00158167)) * CFrame.Angles(-0, 0, 0.15708021819592)
	weebshit13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.Material = Enum.Material.Metal
	weebshit13.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.Anchored = false
	weebshit13.BrickColor = BrickColor.new("Pearl")
	weebshit13.Friction = 0.30000001192093
	weebshit13.Shape = Enum.PartType.Block
	weebshit13.Name = "blade"
	weebshit13.Parent = weebshit1
	local weld9 = Instance.new('Weld',weebshit13)
	weld9.Part0 = weebshit13
	weld9.Part1 = weebshit14
	weld9.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld9,weebshit13,Vector3.new(0.100000009, 0.699998796, 0.0500000007),CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.1)
	
	-- 18 - blade
	local weebshit18 = Instance.new("WedgePart")
	weebshit18.CFrame = CFrame.new(Vector3.new(206.077118, 15.85674, 5)) * CFrame.Angles(1.5707963705063, -1.4137160778046, 1.5707963705063)
	weebshit18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.Material = Enum.Material.Metal
	weebshit18.Size = Vector3.new(0.100000009, 0.05, 0.230000108)
	weebshit18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.Anchored = false
	weebshit18.BrickColor = BrickColor.new("Dark stone grey")
	weebshit18.Friction = 0.30000001192093
	weebshit18.Name = "blade"
	weebshit18.Parent = weebshit1
	local weld10 = Instance.new('Weld',weebshit18)
	weld10.Part0 = weebshit18
	weld10.Part1 = weebshit14
	weld10.C1 = CFrame.new(-0.015, 0.299937057, 2.86102295e-06)*CFrame.Angles(0,math.rad(-90),0)
	local coru=coroutine.wrap(function()
		grow(weld10,weebshit18,Vector3.new(0.1, 0.3, 0.23),CFrame.new(0, 0.499937057, 2.86102295e-06)*CFrame.Angles(0,math.rad(-90),0),0.1)
	end)
	coru()
	
	-- 19 - blade
	local weebshit19 = Instance.new("WedgePart")
	weebshit19.CFrame = CFrame.new(Vector3.new(206.096375, 15.8952179, 5.00177383)) * CFrame.Angles(1.5707963705063, -1.4137160778046, 1.5707963705063)
	weebshit19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.Material = Enum.Material.Metal
	weebshit19.Size = Vector3.new(0.0500000007, 0.05, 0.280000091)
	weebshit19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.Anchored = false
	weebshit19.BrickColor = BrickColor.new("Pearl")
	weebshit19.Friction = 0.30000001192093
	weebshit19.Name = "blade"
	weebshit19.Parent = weebshit1
	local weld11 = Instance.new('Weld',weebshit19)
	weld11.Part0 = weebshit19
	weld11.Part1 = weebshit18
	weld11.C1 = CFrame.new(0, 0, -0.029) * CFrame.Angles(0, 0, 0)
	local coru=coroutine.wrap(function()
		grow(weld11,weebshit19,Vector3.new(0.05, 0.37, 0.28),CFrame.new(0, 0.011, -0.029) * CFrame.Angles(0, 0, 0),0.1)
	end)
	coru()
end

function punchymode()
	working = true
	blademode = "fisticuffs"
	pcall(function()
	handle.Transparency = 1
	local obj2 = Instance.new("Part")
	obj2.CFrame = CFrame.new(Vector3.new(-13.5499992, 1.60000038, 2.55000019)) * CFrame.Angles(0, 1.5707963705063, 0)
	obj2.FormFactor = Enum.FormFactor.Custom
	obj2.TopSurface = Enum.SurfaceType.Smooth
	obj2.BottomSurface = Enum.SurfaceType.Smooth
	obj2.Size = Vector3.new(1.5, 1.60000002, 1.5)
	obj2.Friction = 0.30000001192093
	obj2.Shape = Enum.PartType.Block
	obj2.Name = "blade"
	obj2.Parent = handle

	local obj3 = Instance.new("SpecialMesh")
	obj3.MeshType = Enum.MeshType.FileMesh
	obj3.MeshId = "http://www.roblox.com/asset?id=181205091"
	obj3.TextureId = "http://www.roblox.com/asset?id=181205268"
	obj3.Parent = obj2
	
	local obj4 = obj2:Clone()
	obj4.Parent = handle
	
	local weld1 = Instance.new('Weld',obj2)
	weld1.Part0 = obj2
	weld1.Part1 = char['Right Arm']
	weld1.C1 = CFrame.new(-0.0499992371, -1.4000088, -0.141311884, 0, 0, 1, 0, 0.999999881, 0, -1, 0, 0)
	
	local weld2 = Instance.new('Weld',obj4)
	weld2.Part0 = obj4
	weld2.Part1 = char['Left Arm']
	weld2.C0 = CFrame.new(-0.0586876869, 1.40000904, 0.0499954224, 0, 0, 1, 0, 0.999999881, 0, -1, 0, 0)
	
	local tweld = Instance.new("Weld", char.HumanoidRootPart)
	tweld.Part0 = char.HumanoidRootPart
	tweld.Part1 = char.Torso
	tweld.Name = "tweld"
	local rweld = Instance.new("Weld", char["Right Arm"])
	rweld.Part0 = char["Torso"]
	rweld.Part1 = char["Right Arm"]
	rweld.C0 = CFrame.new(1.5, 0, 0)
	rweld.Name = "rweld"
	local lweld = Instance.new("Weld", char["Left Arm"])
	lweld.Part0 = char.Torso
	lweld.Part1 = char["Left Arm"]
	lweld.C0 = CFrame.new(-1.5, 0, 0)
	lweld.Name = "lweld"
	
	local cor = coroutine.wrap(function()
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), 0, 0),0.08)
	end)
	cor()
	lerp(lweld,lweld.C0,CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(160), 0, 0),0.08)
	end)
	working = false
end

function pounch(lweld, rweld, tweld)
	working = true
	pcall(function()
		
	char.Humanoid.WalkSpeed = 24
	
	local attguess = math.random(1, 2)
	
	if attguess == 1 then
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, 1) * CFrame.Angles(math.rad(90), 0, 0),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.1)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.1)
		local rand = math.random(1,100)
		if rand >= 95 then
			local sound = Instance.new('Sound',char.Head)
			sound.Name = "NANI?"
			sound.SoundId = 'rbxassetid://992192914'
			sound.MaxDistance = 100
			sound.EmitterSize = 10
			sound.Volume = 2
			sound:Play()
			wait(2.5)
			sound:Destroy()
		else
			wait(0.05)
		end
		poom = true
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, -1.25) * CFrame.Angles(math.rad(90), math.rad(80), 0),0.025)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0, 0.707106888, 0, 0.707106709, 0, 1, 0, -0.707106709, 0, 0.707106888),0.025)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.27839661, -0.0830073357, -0.827041626, -0.224133074, -0.129397124, 0.965930104, 0.500016987, -0.866015851, 1.06692314e-05, 0.836509407, 0.482983887, 0.258803576),0.025)
		wait(0.25)
		poom = false
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.08)
	else
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0.5, 1) * CFrame.Angles(math.rad(90), 0, 0),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(30), 0),0.1)
		end)
		cor()
		cor2()
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.1)
		
		local rand = math.random(1,100)
		if rand >= 95 then
			local sound = Instance.new('Sound',char.Head)
			sound.Name = "NANI?"
			sound.SoundId = 'rbxassetid://992192914'
			sound.MaxDistance = 100
			sound.EmitterSize = 10
			sound.Volume = 2
			sound:Play()
			wait(2.5)
			sound:Destroy()
		else
			wait(0.05)
		end
		poom = true
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0.5, -1.25) * CFrame.Angles(math.rad(90), math.rad(-80), 0),0.025)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-20), 0),0.025)
		end)
		cor()
		cor2()
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.025)
		wait(0.25)
		poom = false
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), 0, 0),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(160), 0, 0),0.08)
	end
	char.Humanoid.WalkSpeed = 16
	end)
	working = false
end

function pOUNCHH(lweld, rweld, tweld)
	working = true
	pcall(function()
		
	char.Humanoid.WalkSpeed = 24
	
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, 1) * CFrame.Angles(math.rad(90), 0, 0),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.1)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.1)
		local rand = math.random(1,100)
		if rand >= 95 then
			local sound = Instance.new('Sound',char.Head)
			sound.Name = "NANI?"
			sound.SoundId = 'rbxassetid://992192914'
			sound.MaxDistance = 100
			sound.EmitterSize = 10
			sound.Volume = 2
			sound:Play()
			wait(2.5)
			sound:Destroy()
		else
			wait(0.05)
		end
		
		for i = 1, 2 do
			poom = true
			local cor = coroutine.wrap(function()
				lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, -1.25) * CFrame.Angles(math.rad(90), math.rad(80), 0),0.025)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(tweld,tweld.C0,CFrame.new(0, 0, 0, 0.707106888, 0, 0.707106709, 0, 1, 0, -0.707106709, 0, 0.707106888),0.025)
			end)
			cor()
			cor2()
			lerp(lweld,lweld.C0,CFrame.new(-1.27839661, -0.0830073357, -0.827041626, -0.224133074, -0.129397124, 0.965930104, 0.500016987, -0.866015851, 1.06692314e-05, 0.836509407, 0.482983887, 0.258803576),0.025)
			wait(0.1)
	
			poom = true
			local cor = coroutine.wrap(function()
				lerp(lweld,lweld.C0,CFrame.new(-1.5, 0.5, -1.25) * CFrame.Angles(math.rad(90), math.rad(-80), 0),0.025)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-20), 0),0.025)
			end)
			cor()
			cor2()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.025)
			wait(0.1)
		end
		poom = false
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(160), 0, 0),0.08)
		char.Humanoid.WalkSpeed = 16
	end)
	working = false
end

function gunmode()
	working = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		local lweld = Instance.new("Weld", char["Left Arm"])
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local mweld = Instance.new("Weld", char["Left Leg"])
		mweld.Part0 = char.Torso
		mweld.Part1 = char["Left Leg"]
		mweld.C0 = CFrame.new(-0.5, -2, 0)
		local cweld = Instance.new("Weld", char["Right Leg"])
		cweld.Part0 = char.Torso
		cweld.Part1 = char["Right Leg"]
		cweld.C0 = CFrame.new(0.5, -2, 0)
		
		char.Humanoid.WalkSpeed = 0
		char.Humanoid.JumpPower = 0
		
		local spooksound = Instance.new("Sound", char.Head)
		spooksound.SoundId = "rbxassetid://755341345"
		spooksound.TimePosition = 0.2
		spooksound.PlaybackSpeed = 0.5
		spooksound.Volume = 0.1
		spooksound.MaxDistance = 100
		spooksound:Play()
		
		local BOOMsound = Instance.new("Sound", char.Head)
		BOOMsound.SoundId = "rbxassetid://262562442"
		BOOMsound.PlaybackSpeed = 1
		BOOMsound.Volume = 0.355
		BOOMsound.MaxDistance = 100
		
		local laughesound = Instance.new("Sound", char.Head)
		laughesound.SoundId = "rbxassetid://221057812"
		laughesound.PlaybackSpeed = 1
		laughesound.Volume = 0.3
		laughesound.MaxDistance = 100
		laughesound:Play()
		
		local cor1 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, 0.6) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)),0.15)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.25, 0) * CFrame.Angles(0, math.rad(0), math.rad(-15)),0.15)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)),0.15)
		end)
		local cor4 = coroutine.wrap(function()
			lerp(mweld,mweld.C0,CFrame.new(-0.5, -2, -0.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)),0.15)
		end)
		cor1()
		cor2()
		cor3()
		cor4()
		lerp(cweld,cweld.C0,CFrame.new(0.5, -2, -0.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)),0.15)
		
		wait(0.3)
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		local cor1 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, -1) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)),0.05)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.25, 0.25) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(-20)),0.05)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, -1.35, -0.75) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(0)),0.05)
		end)
		local cor4 = coroutine.wrap(function()
			lerp(mweld,mweld.C0,CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)),0.05)
		end)
		local cor5 = coroutine.wrap(function()
			lerp(cweld,cweld.C0,CFrame.new(0.5, -1.9, -0.4) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)),0.05)
		end)
		cor1()
		cor2()
		cor3()
		cor4()
		cor5()
		wait(0.15)
		trail:Remove()
		at1:Remove()
		at2:Remove()
		BOOMsound:Play()
		local lava = Instance.new('Part',workspace)
			lava.Size = Vector3.new(0,0.1,0)
			lava.Name = "lava"
			lava.Anchored = true
			lava.CanCollide = false
			lava.BrickColor = BrickColor.new('Maroon')
			lava.Material = Enum.Material.Granite
			lava.CFrame = CFrame.new(handle.Position)*CFrame.Angles(0,math.rad(45),0) + Vector3.new(0.3, 0.1, 0)
			lava.Touched:connect(function(hit)
				if hit.Parent:FindFirstChildOfClass('Humanoid') then
					fire(hit)
				end
			end)
		local effx1 = Instance.new("Part", lava)
		effx1.Size = Vector3.new(0.2, 0.2, 0.2)
		effx1.Transparency = 1
		effx1.CFrame = CFrame.new(handle.Position) + Vector3.new(0.3, 0.1, 0)
		effx1.CanCollide = false
		effx1.Anchored = true
		effx1.Color = Color3.fromRGB(200, 0, 0)
		local particl = Instance.new("ParticleEmitter")
		particl.LightEmission = 3
		particl.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 0, 255)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
		particl.LightInfluence = 0.75
		particl.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2), NumberSequenceKeypoint.new(1, 0)})
		particl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 0.75)})
		particl.Lifetime = NumberRange.new(0.25, 2)
		particl.Rate = 150
		particl.RotSpeed = NumberRange.new(300, 300)
		particl.Speed = NumberRange.new(0.1, 4)
		particl.SpreadAngle = Vector2.new(90, 90)
		particl.Parent = effx1
		
			local effx2 = effx1:Clone()
			effx2.Parent = lava
			effx2.CFrame = CFrame.new(handle.Position) + Vector3.new(-0.3, 0, 0)
			local effx3 = effx1:Clone()
			effx3.Parent = lava
			effx3.CFrame = CFrame.new(handle.Position) + Vector3.new(0, 0, 0.3)
			local effx4 = effx1:Clone()
			effx4.Parent = lava
			effx4.CFrame = CFrame.new(handle.Position) + Vector3.new(0, 0, -0.3)
			for i=1,10 do
				effx1.CFrame = effx1.CFrame + Vector3.new(0.3, 0, 0)
				effx2.CFrame = effx2.CFrame + Vector3.new(-0.3, 0, 0)
				effx3.CFrame = effx3.CFrame + Vector3.new(0, 0, 0.3)
				effx4.CFrame = effx4.CFrame + Vector3.new(0, 0, -0.3)
				local mememachine = effx4:Clone()
				mememachine.Parent = lava
				local mememachine = effx3:Clone()
				mememachine.Parent = lava
				local mememachine = effx2:Clone()
				mememachine.Parent = lava
				local mememachine = effx1:Clone()
				mememachine.Parent = lava
				local oldcf = lava.CFrame
				lava.Size = lava.Size+Vector3.new(0.45,0,0.45)
				lava.CFrame = oldcf
				for i,v in pairs(lava:GetChildren()) do
					if v:IsA('BasePart') and v:FindFirstChildOfClass('ParticleEmitter') == nil then
						v:Destroy()
					end
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(lava.Size.X/2,0,i-(lava.Size.X/2))*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(-lava.Size.X/2,0,i-(lava.Size.X/2))*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(i-(lava.Size.X/2),0,-lava.Size.X/2)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(i-(lava.Size.X/2),0,lava.Size.X/2)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				wait()
			end
			
			local cor1 = coroutine.wrap(function()
				lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, -1) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(20)),0.1)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.25, 0.25) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(-20)),0.1)
			end)
			local cor3 = coroutine.wrap(function()
				lerp(tweld,tweld.C0,CFrame.new(0, -1.35, -0.75) * CFrame.Angles(math.rad(-70), math.rad(10), math.rad(0)),0.1)
			end)
			local cor4 = coroutine.wrap(function()
				lerp(mweld,mweld.C0,CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)),0.1)
			end)
			local cor5 = coroutine.wrap(function()
				lerp(cweld,cweld.C0,CFrame.new(0.5, -1.9, -0.4) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)),0.1)
			end)
			cor1()
			cor2()
			cor3()
			cor4()
			cor5()
			blademode = "gun"
			local obj1 = handle
local obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(214.274918, 10.901, -3.69899988)) * CFrame.Angles(-0, 0, 1.5707912445068)
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.Pebble
obj2.Size = Vector3.new(1.10000002, 0.199999988, 0.349999994)
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BrickColor = BrickColor.new("Crimson")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Name = "red"
obj2.Parent = obj1

-- 3 - thicchandle
local obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(214.200287, 10.9005566, -3.6994133)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
obj3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Material = Enum.Material.Metal
obj3.Size = Vector3.new(1.10000002, 0.349999994, 0.349999994)
obj3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.BrickColor = BrickColor.new("Really black")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Cylinder
obj3.Name = "thicchandle"
obj3.Parent = obj1

-- 4 - bapkap
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(214.38974, 11.2749968, -3.70000005)) * CFrame.Angles(-1.5708075761795, -1.5707963705063, 0)
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.Sand
obj4.Size = Vector3.new(0.449999988, 0.5, 0.5)
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BrickColor = BrickColor.new("Dark stone grey")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Cylinder
obj4.Name = "bapkap"
obj4.Parent = obj1

-- 5 - slide
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(213.615036, 11.2750006, -3.70002389)) * CFrame.Angles(-0, 0, -0)
obj5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Material = Enum.Material.Sand
obj5.Size = Vector3.new(1.64999974, 0.450000077, 0.499999911)
obj5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.BrickColor = BrickColor.new("Dark stone grey")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Name = "slide"
obj5.Parent = obj1

-- 6 - bullet ejaculator
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(213.54187, 11.2905512, -3.6994133)) * CFrame.Angles(-3.1415927410126, 0, -5.9604536772895e-07)
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.Metal
obj6.Size = Vector3.new(1.60000002, 0.300000012, 0.300000012)
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BrickColor = BrickColor.new("Really black")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Cylinder
obj6.Name = "bullet ejaculator"
obj6.Parent = obj1

local bewm = Instance.new('Sound',obj6)
bewm.SoundId = 'rbxassetid://356911785'
bewm.Volume = 0.5
bewm.Name = "Gunshot"
local bewm2 = Instance.new('Sound',obj6)
bewm2.SoundId = 'rbxassetid://833855896'
bewm2.Volume = 2
bewm2.Name = "Laser"
local bzzt = Instance.new('Sound',obj6)
bzzt.SoundId = 'rbxassetid://277635663'
bzzt.Volume = 0.5
bzzt.MaxDistance = 50
bzzt.Name = "Taser"
local bewm3 = Instance.new('Sound',obj6)
bewm3.SoundId = 'rbxassetid://385944388'
bewm3.Volume = 10
bewm3.MaxDistance = 50
bewm3.Name = "LaserAmbient"
bewm3.PlaybackSpeed = 3

local poonk = Instance.new('Sound',obj6)
poonk.SoundId = 'rbxassetid://135039581'
poonk.Volume = 1
poonk.MaxDistance = 100
poonk.Name = "Grenade"

-- 7 - ejaculator
local obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(213.88974, 11.3249989, -3.71000004)) * CFrame.Angles(-0, 0, -0)
obj7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.Size = Vector3.new(0.499999911, 0.150000066, 0.499999911)
obj7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.BrickColor = BrickColor.new("Really black")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Block
obj7.Name = "ejaculator"
obj7.Parent = obj1

-- 8 - aimnegro
local obj8 = Instance.new("WedgePart")
obj8.CFrame = CFrame.new(Vector3.new(214.439804, 11.5500088, -3.8000021)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.Sand
obj8.Size = Vector3.new(0.100000001, 0.100000001, 0.100000001)
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BrickColor = BrickColor.new("Dark stone grey")
obj8.Friction = 0.30000001192093
obj8.Name = "aimnegro"
obj8.Parent = obj1

-- 9 - aimnegro
local obj9 = Instance.new("WedgePart")
obj9.CFrame = CFrame.new(Vector3.new(212.88974, 11.5500088, -3.70002389)) * CFrame.Angles(0, 1.5707963705063, 0)
obj9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj9.Material = Enum.Material.Sand
obj9.Size = Vector3.new(0.100000001, 0.100000001, 0.100000001)
obj9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj9.BrickColor = BrickColor.new("Dark stone grey")
obj9.Friction = 0.30000001192093
obj9.Name = "aimnegro"
obj9.Parent = obj1

-- 10 - handle
local obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(214.199951, 10.9702482, -3.69899988)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.Pebble
obj10.Size = Vector3.new(0.129999995, 0.354999989, 0.354999989)
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BrickColor = BrickColor.new("Crimson")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Cylinder
obj10.Name = "handle"
obj10.Parent = obj1

-- 11 - aimnegro
local obj11 = Instance.new("WedgePart")
obj11.CFrame = CFrame.new(Vector3.new(214.44046, 11.5500088, -3.60002089)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.Material = Enum.Material.Sand
obj11.Size = Vector3.new(0.100000001, 0.100000001, 0.100000001)
obj11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.BrickColor = BrickColor.new("Dark stone grey")
obj11.Friction = 0.30000001192093
obj11.Name = "aimnegro"
obj11.Parent = obj1

-- 12 - aimnegro
local obj12 = Instance.new("WedgePart")
obj12.CFrame = CFrame.new(Vector3.new(212.989868, 11.5500088, -3.70002389)) * CFrame.Angles(-0, -1.5669516324997, -0)
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.Sand
obj12.Size = Vector3.new(0.100000001, 0.100000001, 0.100000001)
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BrickColor = BrickColor.new("Dark stone grey")
obj12.Friction = 0.30000001192093
obj12.Name = "aimnegro"
obj12.Parent = obj1

-- 13 - bullet ejaculation holder
local obj13 = Instance.new("Part")
obj13.CFrame = CFrame.new(Vector3.new(212.8479, 11.2905512, -3.6994133)) * CFrame.Angles(-3.1415927410126, 0, -5.9604536772895e-07)
obj13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.Material = Enum.Material.Metal
obj13.Size = Vector3.new(0.209999979, 0.400000006, 0.400000006)
obj13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.Friction = 0.30000001192093
obj13.Shape = Enum.PartType.Cylinder
obj13.Name = "bullet ejaculation holder"
obj13.Parent = obj1

-- 14 - aimnegro
local obj14 = Instance.new("WedgePart")
obj14.CFrame = CFrame.new(Vector3.new(214.339798, 11.5500088, -3.60002398)) * CFrame.Angles(0, 1.5707963705063, 0)
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.Sand
obj14.Size = Vector3.new(0.100000001, 0.100000001, 0.100000001)
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BrickColor = BrickColor.new("Dark stone grey")
obj14.Friction = 0.30000001192093
obj14.Name = "aimnegro"
obj14.Parent = obj1

-- 15 - clipbot
local obj15 = Instance.new("Part")
obj15.CFrame = CFrame.new(Vector3.new(214.224823, 10.2810011, -3.69899988)) * CFrame.Angles(-0, 0, 3.1415848731995)
obj15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.Material = Enum.Material.Metal
obj15.Size = Vector3.new(0.499999881, 0.150000006, 0.200000003)
obj15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.BrickColor = BrickColor.new("Really black")
obj15.Friction = 0.30000001192093
obj15.Shape = Enum.PartType.Block
obj15.Name = "clipbot"
obj15.Parent = obj1

-- 16 - handle
local obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(214.350296, 10.9005566, -3.6994133)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.Metal
obj16.Size = Vector3.new(1.10000002, 0.349999994, 0.349999994)
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BrickColor = BrickColor.new("Really black")
obj16.Friction = 0.30000001192093
obj16.Shape = Enum.PartType.Cylinder
obj16.Name = "handle"
obj16.Parent = obj1

-- 17 - clip
local obj17 = Instance.new("Part")
obj17.CFrame = CFrame.new(Vector3.new(214.274918, 10.9009981, -3.69899988)) * CFrame.Angles(-0, 0, 1.5707912445068)
obj17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.Material = Enum.Material.Sand
obj17.Size = Vector3.new(1.10000002, 0.25, 0.200000003)
obj17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.BrickColor = BrickColor.new("Dark stone grey")
obj17.Friction = 0.30000001192093
obj17.Shape = Enum.PartType.Block
obj17.Name = "clip"
obj17.Parent = obj1

-- 18 - slide
local obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(214.245712, 11.2750006, -3.70002389)) * CFrame.Angles(-0, 0, -0)
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.Pebble
obj18.Size = Vector3.new(0.0599999987, 0.455000013, 0.504999995)
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BrickColor = BrickColor.new("Crimson")
obj18.Friction = 0.30000001192093
obj18.Shape = Enum.PartType.Block
obj18.Name = "slide"
obj18.Parent = obj1

-- 19 - aimnegro
local obj19 = Instance.new("WedgePart")
obj19.CFrame = CFrame.new(Vector3.new(214.339798, 11.5500088, -3.80002403)) * CFrame.Angles(0, 1.5707963705063, 0)
obj19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.Material = Enum.Material.Sand
obj19.Size = Vector3.new(0.100000001, 0.100000001, 0.100000001)
obj19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.BrickColor = BrickColor.new("Dark stone grey")
obj19.Friction = 0.30000001192093
obj19.Name = "aimnegro"
obj19.Parent = obj1

-- 20 - handle
local obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(214.350296, 10.9699583, -3.6994133)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.Pebble
obj20.Size = Vector3.new(0.129999995, 0.354999989, 0.354999989)
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BrickColor = BrickColor.new("Crimson")
obj20.Friction = 0.30000001192093
obj20.Shape = Enum.PartType.Cylinder
obj20.Name = "handle"
obj20.Parent = obj1
for i,v in pairs(handle:GetChildren()) do
	if v:IsA('BasePart') then v:BreakJoints() end
end
			local previous = nil
for i,v in pairs(obj1:GetChildren()) do
	if v:IsA('BasePart') then
		v.Anchored = true
		if previous then
			local weld = Instance.new('Weld',v)
			weld.Part0 = v
			weld.Part1 = previous
			weld.C0 = v.CFrame:inverse() * previous.CFrame
			previous.Anchored = false
			previous.CanCollide = false
			local vee = v
			weld.AncestryChanged:connect(function(mez,par)
				wait()
				weld.Parent = vee
			end)
		end
		previous = v
	end
end
previous.Anchored = false
previous.CanCollide = false
local ree = Instance.new('Weld',obj2)
ree.Part0 = obj2
ree.Part1 = obj1
hweld.C0 = CFrame.new(0, -1, -0.5) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
			wait(0.6)
			local cor1 = coroutine.wrap(function()
				lerp(rweld,rweld.C0,CFrame.new(1.5, 0.7, 0.25) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)),0.05)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.25, -1) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(-20)),0.08)
			end)
			local cor3 = coroutine.wrap(function()
				lerp(tweld,tweld.C0,CFrame.new(0, -1, -0.75) * CFrame.Angles(math.rad(-50), math.rad(-20), math.rad(0)),0.05)
			end)
			local cor4 = coroutine.wrap(function()
				lerp(mweld,mweld.C0,CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)),0.05)
			end)
			local cor5 = coroutine.wrap(function()
				lerp(cweld,cweld.C0,CFrame.new(0.5, -1.9, -0.4) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)),0.05)
			end)
			cor1()
			cor2()
			cor3()
			cor4()
			cor5()
			wait(0.25)
			spawn(function()
			wait(1.75)
				for i, v in pairs(lava:GetChildren()) do
					if v.ClassName == "Part" then
						pcall(function()
							if v:FindFirstChild('ParticleEmitter')then
								v:Destroy()
							end
						end)
					end
				end
				for i=1,9 do
				local oldcf = lava.CFrame
				lava.Size = lava.Size-Vector3.new(0.45,0,0.45)
				lava.CFrame = oldcf
				for i,v in pairs(lava:GetChildren()) do
					if v:IsA('BasePart') and v:FindFirstChildOfClass('ParticleEmitter') == nil then
						v:Destroy()
					end
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(lava.Size.X/2,0,i-(lava.Size.X/2))*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(-lava.Size.X/2,0,i-(lava.Size.X/2))*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(i-(lava.Size.X/2),0,-lava.Size.X/2)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				for i=1,math.ceil(lava.Size.X) do
					local old = lava.CFrame
					lava.Anchored = false
					local part = Instance.new('Part')
					part.Size = Vector3.new(2,2,2)
					part.CanCollide = true
					part.Material = Enum.Material.Granite
					part.BrickColor = BrickColor.new("Really black")
					part.TopSurface = Enum.SurfaceType.Smooth
					part.BottomSurface = Enum.SurfaceType.Smooth
					part.Anchored = false
					part.Parent = lava
					part.CFrame = CFrame.new(9,9,9)
					part:BreakJoints()
					local weld = Instance.new('Weld',part)
					weld.Part0 = part
					weld.Part1 = lava
					weld.C1 = CFrame.new(i-(lava.Size.X/2),0,lava.Size.X/2)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
					for i,v in pairs(part:GetTouchingParts()) do
						if v.CanCollide then
							part.Material = v.Material
							part.Color = v.Color
							part.TopSurface = v.TopSurface
							part.BottomSurface = v.BottomSurface
							part.RightSurface = v.RightSurface
							part.Transparency = v.Transparency
							part.LeftSurface = v.LeftSurface
							part.FrontSurface = v.FrontSurface
							part.BackSurface = v.BackSurface
						end
					end
					lava.Anchored = true
					lava.CFrame = old
				end
				wait()
				end
				lava:Destroy()
			end)
			
		local cor1 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.15)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.15)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.15)
		end)
		local cor4 = coroutine.wrap(function()
			lerp(mweld,mweld.C0,CFrame.new(-0.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.15)
		end)
		local cor5 = coroutine.wrap(function()
			lerp(cweld,cweld.C0,CFrame.new(0.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.15)
		end)
		cor1()
		cor2()
		cor3()
		cor4()
		cor5()
		wait(0.6)
		
		char.Humanoid.JumpPower = 50
		char.Humanoid.WalkSpeed = 16
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		mweld:Remove()
		cweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if leftlegclone and char:FindFirstChild('Left Leg') and char:FindFirstChild('Torso') then
			local clone = leftlegclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Leg"]
			clone.Parent = char.Torso
		end
		if rightlegclone and char:FindFirstChild('Right Leg') and char:FindFirstChild('Torso') then
			local clone = rightlegclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Leg"]
			clone.Parent = char.Torso
		end
	end)
	working = false
end

function knifemode()
blademode = "knife"
-- 6 - thicc cap
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(202.399948, 10.5999813, 5.00099993)) * CFrame.Angles(-0, 0, 3.5017728805542e-07)
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Size = Vector3.new(0.3, 0.3, 0.3)
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Anchored = false
obj6.BrickColor = BrickColor.new("Really black")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Ball
obj6.Name = "thicc cap"
obj6.Parent = handle
local weld2 = Instance.new('Weld',obj6)
weld2.Part0 = obj6
weld2.Part1 = handle
weld2.C0 = CFrame.new(0.4, 0, 0)
grow(weld2,obj6,Vector3.new(0.3, 0.3, 0.3),CFrame.new(-0.15, 0, 0),0.1)

-- 8 - thicc top cap
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(202.399963, 11.3000078, 5.00099993)) * CFrame.Angles(-0, 0, 3.5017728805542e-07)
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Size = Vector3.new(0.3, 0.3, 0.3)
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Anchored = false
obj8.BrickColor = BrickColor.new("Really black")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Ball
obj8.Name = "thicc top cap"
obj8.Parent = handle
local weld1 = Instance.new('Weld',obj8)
weld1.Part0 = obj8
weld1.Part1 = handle
weld1.C0 = CFrame.new(-0.4, 0, 0)
grow(weld1,obj8,Vector3.new(0.3, 0.3, 0.3),CFrame.new(0.15, 0, 0),0.1)
-- 4 - thicc blade
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(202.40007, 12.1600046, 5.00099707)) * CFrame.Angles(-0, 0, -0)
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.Metal
obj4.Size = Vector3.new(0.23, 0.1, 0.1)
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Anchored = false 
obj4.BrickColor = BrickColor.new("Dark stone grey")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Block
obj4.Name = "blade"
obj4.Parent = handle
local weld4 = Instance.new('Weld',obj4)
weld4.Part0 = obj4
weld4.Part1 = handle
weld4.C0 = CFrame.new(0, -0.535, 0)*CFrame.Angles(0,0,math.rad(90))
local coru=coroutine.wrap(function()
grow(weld4,obj4,Vector3.new(0.23, 1.19, 0.1),CFrame.new(0.5, 0, 0),0.1)
end)
coru()

-- 5 - thicc blade
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(202.507141, 12.1749954, 5.00158167)) * CFrame.Angles(-0, 0, -0)
obj5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Material = Enum.Material.Metal
obj5.Size = Vector3.new(0.100000009, 0.1, 0.0500000007)
obj5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Anchored = false
obj5.BrickColor = BrickColor.new("Pearl")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Name = "blade"
obj5.Parent = handle
local weld5 = Instance.new('Weld',obj5)
weld5.Part0 = obj5
weld5.Part1 = obj4
weld5.C0 = CFrame.new(0.09, 0, 0)*CFrame.Angles(0,0,0)
grow(weld5,obj5,Vector3.new(0.1, 1.19, 0.05),CFrame.new(0, 0, 0),0.1)

-- 3 - thicc blade
local obj3 = Instance.new("WedgePart")
obj3.CFrame = CFrame.new(Vector3.new(202.40007, 12.9000006, 5.00099707)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Material = Enum.Material.Metal
obj3.Size = Vector3.new(0.1, 0, 0.23)
obj3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Anchored = false
obj3.BrickColor = BrickColor.new("Dark stone grey")
obj3.Friction = 0.30000001192093
obj3.Name = "blade"
obj3.Parent = handle
local weld6 = Instance.new('Weld',obj3)
weld6.Part0 = obj3
weld6.Part1 = obj4
weld6.C0 = CFrame.new(0, -0.595, 0)*CFrame.Angles(math.rad(0),math.rad(270),math.rad(0))
local coru=coroutine.wrap(function()
grow(weld6,obj3,Vector3.new(0.1, 0.3, 0.23),CFrame.new(0, 0.15, 0),0.05)
end)
coru()

-- 2 - thicc blade
local obj2 = Instance.new("WedgePart")
obj2.CFrame = CFrame.new(Vector3.new(202.423431, 12.9305696, 5.00099707)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.Metal
obj2.Size = Vector3.new(0.05, 0, 0.26)
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Anchored = false
obj2.BrickColor = BrickColor.new("Lily white")
obj2.Friction = 0.30000001192093
obj2.Name = "blade"
obj2.Parent = handle
local weld7 = Instance.new('Weld',obj2)
weld7.Part0 = obj2
weld7.Part1 = obj4
weld7.C0 = CFrame.new(0, -0.595, 0)*CFrame.Angles(math.rad(0),math.rad(270),math.rad(0))
grow(weld7,obj2,Vector3.new(0.05, 0.33, 0.24),CFrame.new(-0.02, 0.165, 0),0.05)
end

function raep()
	working = true
	pcall(function()
		local holyshit = Instance.new("Sound", handle)
		holyshit.SoundId = "rbxassetid://345287845"
		holyshit.Volume = 5
		holyshit:Play()
		holyshit.TimePosition = 0.6
		--[[local waitwhatthefuck = Instance.new("Sound", handle)
		waitwhatthefuck.SoundId = "rbxassetid://864314263"
		waitwhatthefuck:Play()]]--
		local coru=coroutine.wrap(function()
			wait(1.95)
			holyshit.TimePosition = 2.8
		end)
		coru()
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local rweld = Instance.new("Weld", char["Right Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		local lweld = Instance.new("Weld", char["Left Arm"])
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		
		char.Humanoid.WalkSpeed = 16
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(50)),0.2)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, -0.25, 0) * CFrame.Angles(math.rad(-15), math.rad(-45), math.rad(0)),0.2)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, -0.35) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)),0.2)
		
		local particl = Instance.new("ParticleEmitter")
		particl.LightEmission = 3
		particl.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 0, 255)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(248, 153, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
		particl.LightInfluence = 0.75
		particl.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
		particl.Lifetime = NumberRange.new(0.1, 0.5)
		particl.Rate = 50
		particl.RotSpeed = NumberRange.new(300, 300)
		particl.Speed = NumberRange.new(0, 1)
		particl.SpreadAngle = Vector2.new(90, 90)
		particl.Parent = handle
		
		for i, v in pairs(handle["pink toy"]:GetChildren()) do
			if v:IsA("Part") then
				local cooldildo = particl:Clone()
				cooldildo.Parent = v
			end
		end
		
		particl:Remove()
		
		wait(1)
		MOAN = true
		
		char.Humanoid.WalkSpeed = 75
		
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.6, 0.5, -0.75) * CFrame.Angles(0, math.rad(55), math.rad(90)),0.06)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),0.06)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(270),math.rad(-90),math.rad(180)), 0.06)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)),0.06)
		local omgg = 0
		repeat wait(0.05) omgg = omgg+0.05 until aidsificating ~= nil or omgg > 2
		holyshit:Destroy()
		char.Humanoid.WalkSpeed = 16
		MOAN = false
		if aidsificating == nil then
			for i, v in pairs(handle["pink toy"]:GetChildren()) do
								if v:IsA("Part") then
									v:FindFirstChild("ParticleEmitter"):Destroy()
								end
							end
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.08)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		else
			pcall(function()
				ragdollpart(aidsificating,"Right Arm")
				ragdollpart(aidsificating,"Right Leg")
				ragdollpart(aidsificating,"Left Arm")
				ragdollpart(aidsificating,"Left Leg")
			end)
			pcall(function()
				ragdollpart(aidsificating,"RightUpperArm")
				ragdollpart(aidsificating,"RightUpperLeg")
				ragdollpart(aidsificating,"LeftUpperArm")
				ragdollpart(aidsificating,"LeftUpperLeg")
			end)
			pcall(function()
				aidsificating:SetPrimaryPartCFrame(handle.CFrame+Vector3.new(2.5))
			end)
			pcall(function()
				local weld = Instance.new('Weld',aidsificating.Torso)
				weld.Part0 = aidsificating.Torso
				weld.Part1 = handle
				weld.C0 = CFrame.new(0.2,-2.5,2)*CFrame.Angles(math.rad(135),0,math.rad(-90))
				for i,v in pairs(handle["pink toy"]:GetChildren()) do
					if v:IsA('BasePart') and v.Name == "stretchlol" then
						v.BrickColor = aidsificating.Torso.BrickColor
						v.Transparency = aidsificating.Torso.Transparency
						v.Material = aidsificating.Torso.Material
					end
				end
			end)
			pcall(function()
				local weld = Instance.new('Weld',aidsificating.UpperTorso)
				weld.Part0 = aidsificating.UpperTorso
				weld.Part1 = handle
				weld.C0 = CFrame.new(0.2,-2.5,2)*CFrame.Angles(math.rad(135),0,math.rad(-90))
				for i,v in pairs(handle["pink toy"]:GetChildren()) do
					if v:IsA('BasePart') and v.Name == "stretchlol" then
						v.BrickColor = aidsificating.UpperTorso.BrickColor
						v.Transparency = aidsificating.UpperTorso.Transparency
						v.Material = aidsificating.UpperTorso.Material
					end
				end
			end)
			lerp(rweld,rweld.C0,CFrame.new(1.6, 1, -0.5) * CFrame.Angles(0, math.rad(55), math.rad(145)),0.06)
			wait(2)
			for i,v in pairs(aidsificating:GetDescendants()) do
				if v:IsA('Weld') then v:Destroy() end
			end
			pcall(function()
				ragdollpart(aidsificating,"Head")
			end)
			pcall(function()
									local thang = "Torso"
									if aidsificating:FindFirstChild('UpperTorso') then
										thang = "UpperTorso"
									end
									local ayybleed = Instance.new('Part',aidsificating)
									ayybleed.Size = Vector3.new(0.2,0.2,0.2)
									ayybleed.BrickColor = BrickColor.new('Maroon')
									ayybleed.Material = Enum.Material.SmoothPlastic
									ayybleed.Name = "ayybleed"
									ayybleed.CanCollide = false
									ayybleed.Transparency = 1
									ayybleed.CFrame = aidsificating[thang].CFrame
									ayybleed:BreakJoints()
									local attachment1 = Instance.new('Attachment',ayybleed)
									attachment1.Position = Vector3.new(0,-1,0)
									attachment1.Orientation = Vector3.new(180, 0, 0)
									local attachment0 = Instance.new('Attachment',aidsificating[thang])
									if attachment0 and attachment1 then
										local constraint = Instance.new("HingeConstraint")
										constraint.Attachment0 = attachment0
										constraint.Attachment1 = attachment1
										constraint.LimitsEnabled = true
										constraint.UpperAngle = 0
										constraint.LowerAngle = 0
										constraint.Parent = aidsificating
									end
									local bleedBLEED= coroutine.wrap(function()
										bleed(ayybleed,true)
									end)
									bleedBLEED()
								end)
			aidsificating = nil
			pcall(function()
				for i,v in pairs(handle["pink toy"]:GetChildren()) do
					if v:IsA('BasePart') and v.Name == "stretchlol" then
						v.Transparency = 1
					end
				end
			end)
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.6, -0.25, 0.75) * CFrame.Angles(0, math.rad(55), math.rad(145)),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),0.04)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)),0.04)
		wait(0.1)
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.6, -0.5, 1) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),0.08)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.08)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		end
	end)
	working = false
end
function zaphit(hit,hitpos)
	local exp = Instance.new('Explosion',workspace)
	exp.Position = hitpos
	exp.DestroyJointRadiusPercent = 0
	exp.BlastRadius = 9
	start_fragmentation(exp.Position,7.5,true)
	exp.Hit:connect(function(hit)
		if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') then
			for i,v in pairs(hit.Parent:GetDescendants()) do
				if v:IsA('BasePart')then
				pcall(function()
					v.Parent = fragmentable
				end)
				local backpr = minimumsize
				minimumsize = Vector3.new(0.6,0.6,0.6)
				start_fragmentation(v.Position,0.05,true,true)
				minimumsize = backpr
				end
			end
		end
	end)
end
function ropehit(hit)
	if hit then
		local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
		if hum == nil then
			hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
		end
		if hum and hum.Parent:FindFirstChild('LYNCHEEEEEED') == nil and hum.Parent:FindFirstChild('Head') then
			pcall(function()
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				local objree = Instance.new('IntValue',hum.Parent)
				objree.Name = 'LYNCHEEEEEED'
				local head = hum.Parent:FindFirstChild('Head')
				local obj1 = Instance.new("Model")
				obj1.Name = "the pole"
				obj1.Parent = workspace

				local obj2 = Instance.new("Part")
				obj2.CFrame = CFrame.new(Vector3.new(-38.2350006, 18.75, -27.5599976)) * CFrame.Angles(-0, 0, -0)
				obj2.TopSurface = Enum.SurfaceType.Smooth
				obj2.BottomSurface = Enum.SurfaceType.Smooth
				obj2.Material = Enum.Material.Wood
				obj2.Anchored = true
				obj2.Size = Vector3.new(7.75, 1, 1)
				obj2.BrickColor = BrickColor.new("Dirt brown")
				obj2.Friction = 0.30000001192093
				obj2.Shape = Enum.PartType.Cylinder
				obj2.Parent = obj1

				local obj3 = Instance.new("Part")
				obj3.Anchored = true
				obj3.CFrame = CFrame.new(Vector3.new(-42.6100006, 10, -27.5599976)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
				obj3.TopSurface = Enum.SurfaceType.Smooth
				obj3.BottomSurface = Enum.SurfaceType.Smooth
				obj3.Material = Enum.Material.Wood
				obj3.Size = Vector3.new(20, 2.5, 2.5)
				obj3.BrickColor = BrickColor.new("Dirt brown")
				obj3.Friction = 0.30000001192093
				obj3.Shape = Enum.PartType.Cylinder
				obj3.Parent = obj1
				local hangpart = Instance.new('Part',obj1)
				hangpart.Size = Vector3.new(1,1,1)
				hangpart.CFrame = CFrame.new(-34.86,18.75,-27.56)
				hangpart.Transparency = 1
				hangpart.Anchored = true
				hangpart.CanCollide = false
				obj1.PrimaryPart = obj3
				
				obj1:SetPrimaryPartCFrame(CFrame.new(head.Position)*CFrame.Angles(0,0,math.rad(-90))+Vector3.new(7.5,5,0))
				
				local platform = Instance.new('Part',obj1)
				platform.Anchored = true
				platform.Size = Vector3.new(7.5,0.5,7.5)
				platform.CFrame = CFrame.new(head.Position)+Vector3.new(0,-4.5,0)
				for i,v in pairs(platform:GetTouchingParts()) do
					if v:IsDescendantOf(hum.Parent) == false and v.CanCollide then
						platform.Material = v.Material
						platform.Color = v.Color
						platform.TopSurface = v.TopSurface
						platform.BottomSurface = v.BottomSurface
						platform.RightSurface = v.RightSurface
						platform.Transparency = v.Transparency
						platform.LeftSurface = v.LeftSurface
						platform.FrontSurface = v.FrontSurface
						platform.BackSurface = v.BackSurface
					end
				end
				for i=1,40 do
					local lol = platform.CFrame
					platform.Size = platform.Size+Vector3.new(0,0.25,0)
					platform.CFrame = lol+Vector3.new(0,0.125,0)
					wait()
				end
				wait(1)
				head.Anchored = true
				pcall(function()
					ragdollpart(hum.Parent,"Left Arm")
					ragdollpart(hum.Parent,"Left Leg")
					ragdollpart(hum.Parent,"Right Arm")
					ragdollpart(hum.Parent,"Right Leg")
				end)
				pcall(function()
					ragdollpart(hum.Parent,"LeftUpperLeg")
					ragdollpart(hum.Parent,"RightUpperLeg")
					ragdollpart(hum.Parent,"LeftUpperArm")
					ragdollpart(hum.Parent,"RightUpperArm")
				end)
				for i,v in pairs(hum.Parent:GetChildren()) do
					if v:IsA('BasePart') then
						v.CFrame = head.CFrame
					end
				end
				wait()
				head.Anchored = false
				for i,v in pairs(hum.Parent:GetChildren()) do
					if v:IsA('BasePart') then
						v.CFrame = head.CFrame
					end
				end
				local neck = head:Clone()
				neck.Parent = workspace
				neck.CanCollide = false
				neck.Transparency = 1
				for i,v in pairs(neck:GetChildren()) do
					if v:IsA('SpecialMesh') == false then
						v:Destroy()
					end
				end
				local neckthing = Instance.new("Part",obj1)
				neckthing.Material = Enum.Material.Fabric
				neckthing.Size = Vector3.new(0.0500000007, 1.25, 1.25)
				neckthing.BrickColor = BrickColor.new("Burnt Sienna")
				neckthing.Friction = 0.30000001192093
				neckthing.Shape = Enum.PartType.Cylinder
				neckthing.CFrame = head.CFrame
				neckthing.CanCollide = false
				neckthing:BreakJoints()
				neck.CFrame = head.CFrame
				neckthing.CFrame = head.CFrame
				local hangattachment = Instance.new('Attachment',hangpart)
				local ropeattachment = Instance.new('Attachment',neckthing)
				ropeattachment.Position = Vector3.new(0,0,0.5)
				spawn(function()
				local neckatt = Instance.new('Attachment',neck)
				local headatt = Instance.new('Attachment',head)
				local weld = Instance.new("HingeConstraint",neckthing)
				weld.Attachment0 = neckatt
				weld.Attachment1 = headatt
				weld.LimitsEnabled = true
				weld.UpperAngle = 0
				weld.LowerAngle = 0
				local um = Instance.new('Weld',neckthing)
				um.Part0 = neckthing
				um.Part1 = neck
				um.C0 = CFrame.new(-0.45,0,0)*CFrame.Angles(0,0,math.rad(90))
				end)
				head.Parent.AncestryChanged:connect(function()
					obj1:Destroy()
				end)
				local umm = Instance.new('RopeConstraint',hangpart)
				umm.Attachment0 = hangattachment
				umm.Attachment1 = ropeattachment
				umm.Length = 7.5
				umm.Thickness = 0.05
				umm.Visible = true
				umm.Color = BrickColor.new("Dirt brown")
				local HUAGHGHGGHH = Instance.new('Sound',hum.Parent.Head)
				HUAGHGHGGHH.SoundId = 'rbxassetid://172613272'
				HUAGHGHGGHH.Volume = 3
				HUAGHGHGGHH.MaxDistance = 75
				HUAGHGHGGHH:Play()
				platform.Anchored = false
				platform.CanCollide = false
				wait(5)
				neck:Destroy()
				neckthing.Shape = Enum.PartType.Ball
				neckthing.Size = Vector3.new(0.1,0.1,0.1)
				ropeattachment.Position = Vector3.new(0,0,0)
				ragdollpart(hum.Parent,"Head",true,true)
				game:GetService('Debris'):AddItem(obj1,10)
			end)
		end
	end
end
function bullethit(hit,hitpos,N)
	if hit and hitpos then
	if hit.Name == "HumanoidRootPart" then
		pcall(function()
			hit = hit.Parent.Torso
		end)
		pcall(function()
			hit = hit.Parent.UpperTorso
		end)
	end
	pcall(function()
	local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
	if hum == nil then
		hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
	end
	if hum then
		if hum.Parent ~= char then
			hit.Anchored = true
			local ayybleed = Instance.new('Part',workspace)
			ayybleed.Size = Vector3.new(0.25,0.25,0.25)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.Shape = Enum.PartType.Ball
			ayybleed.CanCollide = false
			ayybleed.CFrame = CFrame.new(hitpos,handle["bullet ejaculator"].Position)*CFrame.Angles(math.rad(-90),0,0)
			ayybleed.Anchored = true
			ayybleed:BreakJoints()
			if hit.Name ~= "Torso" and hit.Name ~= "HumanoidRootPart" and hit.Name ~= "UpperTorso" and hit.Name ~= "LowerTorso" and hit.Name ~= "Head" then
				game:GetService('Debris'):AddItem(ayybleed,5)
			else
				game:GetService('Debris'):AddItem(ayybleed,15)
			end
			local anchorpart = Instance.new('Part',workspace)
			anchorpart.Size = Vector3.new()
			anchorpart.CFrame = hit.CFrame
			anchorpart.CanCollide = false
			anchorpart.Transparency = 1
			anchorpart:BreakJoints()
			local attachment1 = Instance.new('Attachment',anchorpart)
			local attachment0 = Instance.new('Attachment')
			pcall(function()
				attachment0.Parent = hit
			end)
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				pcall(function()
					constraint.Parent = hit
				end)
			end
			local weld = Instance.new('Weld',ayybleed)
			weld.Part0 = ayybleed
			weld.Part1 = anchorpart
			weld.C0 = ayybleed.CFrame:toObjectSpace(hit.CFrame)
			hit.Anchored = false
			ayybleed.Anchored = false
			anchorpart.Anchored = false
			pcall(function()
				local sound = Instance.new('Sound',ayybleed)
				sound.SoundId = 'rbxassetid://255661850'
				sound.MaxDistance = 200
				sound.Volume = 1
				sound:Play()
			end)
			spawn(function()
				bleed(ayybleed)
			end)
			ragdollpart(hum.Parent,hit.Name)
		end
	else
		start_fragmentation(hitpos,1)
		pcall(function()
			local old = hit.Anchored
			hit.Anchored = true
			local surfaceCF = CFrame.new(hitpos, hitpos + N)
			local Hole = Instance.new("Part")
			Hole.Transparency = 1
			Hole.Anchored = true
			Hole.CanCollide = false
			Hole.FormFactor = "Custom"
			Hole.Size = Vector3.new(2, 2, 0.2)
			Hole.TopSurface = 0
			Hole.BottomSurface = 0
			local int = Instance.new('IntValue',Hole)
			int.Name = "already broken u pleb"
			local Mesh = Instance.new("BlockMesh")
			Mesh.Offset = Vector3.new(0, 0, -0.05)
			Mesh.Scale = Vector3.new(0.5,0.5, 0)
			Mesh.Parent = Hole
			local Decal = Instance.new("Decal")
			Decal.Face = Enum.NormalId.Front
			Decal.Texture = 'http://www.roblox.com/asset/?id=64291961'
			Decal.Parent = Hole
			Hole.Parent = hit
			Hole.CFrame = surfaceCF
			Hole:BreakJoints()
			local ayybleed = Hole
			pcall(function()
				local sound = Instance.new('Sound',ayybleed)
				sound.SoundId = 'rbxassetid://142082166'
				if hit.Material == Enum.Material.Grass or hit.Material == Enum.Material.Fabric then
					sound.SoundId = 'rbxassetid://1055286841'
				elseif hit.Material == Enum.Material.Slate or hit.Material == Enum.Material.Plastic or hit.Material == Enum.Material.SmoothPlastic or hit.Material == Enum.Material.Sand then
					sound.SoundId = 'rbxassetid://1055287191'
				elseif hit.Material == Enum.Material.Wood or hit.Material == Enum.Material.WoodPlanks then
					sound.SoundId = 'rbxassetid://142082171'
				elseif hit.Material == Enum.Material.DiamondPlate or hit.Material == Enum.Material.CorrodedMetal or hit.Material == Enum.Material.Metal or hit.Material == Enum.Material.Foil then
					sound.SoundId = 'rbxassetid://142082170'
				end
				sound.MaxDistance = 200
				sound.Volume = 3
				sound:Play()
			end)
			local weld = Instance.new('Weld',ayybleed)
			weld.Part0 = ayybleed
			weld.Part1 = hit
			weld.C0 = ayybleed.CFrame:toObjectSpace(hit.CFrame)
			hit.Anchored = old
			ayybleed.Anchored=false
			game:GetService('Debris'):AddItem(ayybleed,15)
		end)
	end
	end)
	end
end

function injector()
	working = true
	pcall(function()
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.Anchored = true
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
				char.HumanoidRootPart.Anchored = false
			elseif Point.X < 0 then
				char.HumanoidRootPart.Anchored = true
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
				char.HumanoidRootPart.Anchored = false
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					local startree = char.HumanoidRootPart.CFrame
					for i=1,4 do
						char.HumanoidRootPart.Anchored = true
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						char.HumanoidRootPart.Anchored = false
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					local startree = char.HumanoidRootPart.CFrame
					for i=1,4 do
						char.HumanoidRootPart.Anchored = true
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						char.HumanoidRootPart.Anchored = false
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		handle["bullet ejaculator"].Grenade:Play()
		
		--shoot
		pcall(function()
			local obj1 = Instance.new("Model")
			obj1.Name = "darn zombie juice"
			obj1.Parent = workspace
			local obj2 = Instance.new("Part")
			obj2.CFrame = CFrame.new(Vector3.new(126.200012, 1.65000021, 71.2999802)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
			obj2.Transparency = 0.60000002384186
			obj2.TopSurface = Enum.SurfaceType.Smooth
			obj2.BottomSurface = Enum.SurfaceType.Smooth
			obj2.Size = Vector3.new(0.900000095, 0.799999952, 0.799999952)
			obj2.BrickColor = BrickColor.new("Institutional white")
			obj2.Friction = 0.30000001192093
			obj2.Shape = Enum.PartType.Cylinder
			obj2.Parent = obj1
			local obj3 = Instance.new("Part")
			obj3.CFrame = CFrame.new(Vector3.new(126.200012, 1.2250011, 71.3000031)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
			obj3.TopSurface = Enum.SurfaceType.Smooth
			obj3.BottomSurface = Enum.SurfaceType.Smooth
			obj3.Material = Enum.Material.Metal
			obj3.Size = Vector3.new(0.0500000007, 0.599999905, 0.599999905)
			obj3.BrickColor = BrickColor.new("Dark stone grey")
			obj3.Friction = 0.30000001192093
			obj3.Shape = Enum.PartType.Cylinder
			obj3.Parent = obj1
			local obj4 = Instance.new("Part")
			obj4.CFrame = CFrame.new(Vector3.new(126.200012, 1.67500091, 71.3000031)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
			obj4.Transparency = 0.6
			obj4.TopSurface = Enum.SurfaceType.Smooth
			obj4.BottomSurface = Enum.SurfaceType.Smooth
			obj4.Material = Enum.Material.Neon
			obj4.Size = Vector3.new(0.850000083, 0.599999905, 0.599999905)
			obj4.BrickColor = BrickColor.new("Lime green")
			obj4.Friction = 0.30000001192093
			obj4.Shape = Enum.PartType.Cylinder
			obj4.Parent = obj1
			local obj5 = Instance.new("Part")
			obj5.CFrame = CFrame.new(Vector3.new(126.200012, 1.1500001, 71.3000031)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
			obj5.TopSurface = Enum.SurfaceType.Smooth
			obj5.BottomSurface = Enum.SurfaceType.Smooth
			obj5.Material = Enum.Material.Metal
			obj5.Size = Vector3.new(0.100000001, 0.799999952, 0.799999952)
			obj5.Friction = 0.30000001192093
			obj5.Shape = Enum.PartType.Cylinder
			obj5.Parent = obj1
			local obj6 = Instance.new("Part")
			obj6.CFrame = CFrame.new(Vector3.new(126.200012, 0.750001252, 71.3000031)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
			obj6.TopSurface = Enum.SurfaceType.Smooth
			obj6.BottomSurface = Enum.SurfaceType.Smooth
			obj6.Material = Enum.Material.Metal
			obj6.Size = Vector3.new(0.900000095, 0.199999928, 0.199999928)
			obj6.BrickColor = BrickColor.new("Dark stone grey")
			obj6.Friction = 0.30000001192093
			obj6.Shape = Enum.PartType.Cylinder
			obj6.Parent = obj1
			local obj7 = Instance.new("Part")
			obj7.CFrame = CFrame.new(Vector3.new(126.200012, 2.1500001, 71.3000031)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
			obj7.TopSurface = Enum.SurfaceType.Smooth
			obj7.BottomSurface = Enum.SurfaceType.Smooth
			obj7.Material = Enum.Material.Metal
			obj7.Size = Vector3.new(0.100000001, 0.799999952, 0.799999952)
			obj7.Friction = 0.30000001192093
			obj7.Shape = Enum.PartType.Cylinder
			obj7.Parent = obj1
			local obj8 = Instance.new("Part")
			obj8.CFrame = CFrame.new(Vector3.new(126.200012, 0.300001115, 71.3000031)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
			obj8.TopSurface = Enum.SurfaceType.Smooth
			obj8.BottomSurface = Enum.SurfaceType.Smooth
			obj8.Material = Enum.Material.Metal
			obj8.Size = Vector3.new(0.100000009, 0.299999923, 0.299999952)
			obj8.BrickColor = BrickColor.new("Dark stone grey")
			obj8.Friction = 0.30000001192093
			obj8.Shape = Enum.PartType.Cylinder
			obj8.Parent = obj1
			local obj9 = Instance.new('Part',obj1)
			obj9.CFrame = CFrame.new(126.200005, 2.39999986, 71.3000031, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			obj9.Material = Enum.Material.Metal
			obj9.Size = Vector3.new(0.1, 0.6, 0.1)
			local obj10 = Instance.new('SpecialMesh',obj9)
			obj10.MeshId = 'rbxassetid://785967755'
			obj10.Scale = Vector3.new(0.002, 0.01, 0.002)
			obj1.PrimaryPart = obj2
			for i,v in pairs(obj1:GetChildren()) do
				if v:IsA('BasePart') then v.Anchored = true
				v.CanCollide = true
				v:BreakJoints() end
			end
			local previous = nil
			for i,v in pairs(obj1:GetChildren()) do
				if v:IsA('BasePart') then
					v.Anchored = true
					if previous then
						local weld = Instance.new('Weld',v)
						weld.Part0 = v
						weld.Part1 = previous
						weld.C0 = v.CFrame:inverse() * previous.CFrame
						previous.Anchored = false
						if previous ~= obj9 then
							previous.CanCollide = true
						end
						local vee = v
						weld.AncestryChanged:connect(function(mez,par)
							wait()
							weld.Parent = vee
						end)
					end
					previous = v
				end
			end
			previous.Anchored = false
			if previous ~= obj9 then
				previous.CanCollide = true
			end
			obj1:SetPrimaryPartCFrame(handle["bullet ejaculator"].CFrame)
			obj2.Velocity = Vector3.new(0,0,0)
			obj2.Anchored = true
			local flyy = Instance.new('BodyVelocity',obj2)
			flyy.Velocity = obj2.CFrame.rightVector*-100
			obj2.Anchored = false
			local touched = false
			game:GetService('Debris'):AddItem(obj1,60)
			obj9.CanCollide = false
			for i,v in pairs(obj1:GetChildren()) do
				v.Touched:connect(function(hit)
					if hit:IsDescendantOf(char) == false and hit.Parent:IsA('Accessory') == false and hit.Parent ~= obj1 then
						flyy:Destroy()
						game:GetService('Debris'):AddItem(obj1,5)
					end
				end)
			end
			obj9.Touched:connect(function(hit)
				if touched == false then
					if hit:IsDescendantOf(char) == false and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
						touched = true
						flyy:Destroy()
						local weld = nil
						local sound = Instance.new('Sound',obj2)
						sound.SoundId = 'rbxassetid://339027743'
						sound.Looped = true
						sound.MaxDistance = 50
						sound.Volume = 0.2
						sound:Play()
						pcall(function()
							hit.Anchored = true
							obj9.Anchored = true
							weld = Instance.new('Weld',hit)
							weld.Part0 = hit
							weld.Part1 = obj9
							weld.C0 = hit.CFrame:toObjectSpace(obj9.CFrame)
						end)
						pcall(function()
							hit.Anchored = false
							obj9.Anchored = false
						end)
						for i=1,100 do
							obj4.Transparency = obj4.Transparency +0.004
							wait()
						end
						sound:Destroy()
						infect(hit.Parent)
						pcall(function()
							weld:Destroy()
						end)
						game:GetService('Debris'):AddItem(obj1,5)
					end
				end
			end)
		end)
		--shoot
		wait(0.5)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end
function mustard()
	working = true
	pcall(function()
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.Anchored = true
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
				char.HumanoidRootPart.Anchored = false
			elseif Point.X < 0 then
				char.HumanoidRootPart.Anchored = true
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
				char.HumanoidRootPart.Anchored = false
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					local startree = char.HumanoidRootPart.CFrame
					for i=1,4 do
						char.HumanoidRootPart.Anchored = true
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						char.HumanoidRootPart.Anchored = false
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					local startree = char.HumanoidRootPart.CFrame
					for i=1,4 do
						char.HumanoidRootPart.Anchored = true
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						char.HumanoidRootPart.Anchored = false
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		handle["bullet ejaculator"].Grenade:Play()
		
		--shoot
		pcall(function()
		local obj2 = Instance.new("Part")
		obj2.CFrame = CFrame.new(Vector3.new(-5.3000598, 0.500012994, -7.10008478)) * CFrame.Angles(0, 1.5707963705063, 0)
		obj2.FormFactor = Enum.FormFactor.Symmetric
		obj2.Elasticity = 1
		obj2.TopSurface = Enum.SurfaceType.Smooth
		obj2.BottomSurface = Enum.SurfaceType.Smooth
		obj2.Size = Vector3.new(1, 1, 1)
		obj2.BrickColor = BrickColor.new("Deep orange")
		obj2.Friction = 0
		obj2.Shape = Enum.PartType.Ball
		obj2.Name = "Mustard Gas"
		obj2.Parent = workspace
		obj2:BreakJoints()

		local obj3 = Instance.new("SpecialMesh")
		obj3.MeshType = Enum.MeshType.FileMesh
		obj3.Scale = Vector3.new(4, 3, 4)
		obj3.MeshId = "http://www.roblox.com/asset/?id=88794862"
		obj3.TextureId = "http://www.roblox.com/asset/?id=94857319"
		obj3.Parent = obj2
		
		local obj4 = Instance.new("ParticleEmitter")
		obj4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1, 0.933333, 0)),ColorSequenceKeypoint.new(1,Color3.new(0.984314, 1, 0))})
		obj4.Lifetime = NumberRange.new(2,2)
		obj4.Speed = NumberRange.new(10,10)
		obj4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,8,0),NumberSequenceKeypoint.new(1,8,0)})
		obj4.RotSpeed = NumberRange.new(100,100)
		obj4.Rate = 3.4028234663853e+38
		obj4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.94999998807907,0),NumberSequenceKeypoint.new(1,0.94999998807907,0)})
		obj4.Name = "Smoke"
		obj4.Enabled = false
		obj4.SpreadAngle = Vector2.new(15000, 15000)
		obj4.Texture = "rbxassetid://249338959"
		obj4.Parent = obj2
		
		
		local throw = obj2
		obj2.CFrame = handle["bullet ejaculator"].CFrame*CFrame.Angles(0,0,math.rad(90))
		local wew = (mouse.Hit.p - throw.Position).unit
		if wew.Y > 0.5 then
			wew = Vector3.new(wew.X,0.5,wew.Z)
		end
		throw.Velocity = wew*150
		
		local activated = true
		game:GetService('Debris'):AddItem(throw,30)
		spawn(function()
			wait(0.25)
			activated = false
		end)
		throw.Touched:connect(function(hit)
			if hit and hit.Parent and activated == false and hit.CanCollide == true and hit:IsDescendantOf(char) == false then
				throw.Velocity = Vector3.new()
				activated = true
				obj4.Enabled = true
				local hitdetect = Instance.new('Part',obj2)
				hitdetect.Size = Vector3.new(40,40,40)
				hitdetect.CFrame = obj2.CFrame
				hitdetect.CanCollide = false
				hitdetect.Transparency = 1
				hitdetect:BreakJoints()
				local int = Instance.new('IntValue',hitdetect)
				int.Name = 'already broken u pleb'
				local umm = Instance.new('Weld',hitdetect)
				umm.Part0 = hitdetect
				umm.Part1 = obj2
				hitdetect:BreakJoints()
				local umm = Instance.new('Weld',hitdetect)
				umm.Part0 = hitdetect
				umm.Part1 = obj2
				hitdetect.Touched:connect(function(hedeads)
					local hedead = hedeads.Parent
					if hedead ~= player.Character and hedead and hedead:FindFirstChildOfClass('Humanoid') and hedead:FindFirstChild('gassedlol') == nil then
						local ree = Instance.new('IntValue',hedead)
						local humdead = hedead:FindFirstChildOfClass('Humanoid')
						ree.Name = "gassedlol"
						pcall(function()
							local start = humdead.WalkSpeed
							local start2 = humdead.JumpPower
							local sound = Instance.new('Sound',hedead.Head)
							sound.SoundId = 'rbxassetid://178522287'
							sound.MaxDistance = 50
							sound.Volume = 1
							sound:Play()
							for i,v in pairs(hedead:GetDescendants()) do
								if v:IsA('BasePart') then
									v.Color = Color3.fromRGB(154, 136, 0)
									v.Changed:connect(function(prop)
										if prop == "Color" then
											v.Color = Color3.fromRGB(154, 136, 0)
										end
									end)
								end
							end
							for i=1,500 do
								humdead.JumpPower = start2-(i*(start2/500))
								humdead.WalkSpeed = start-(i*(start/500))
								wait()
							end
							pcall(function()
								ragdollpart(hedead,"Left Arm")
								ragdollpart(hedead,"Left Leg")
								ragdollpart(hedead,"Right Arm")
								ragdollpart(hedead,"Right Leg")
							end)
							pcall(function()
								ragdollpart(hedead,"LeftUpperLeg")
								ragdollpart(hedead,"RightUpperLeg")
								ragdollpart(hedead,"LeftUpperArm")
								ragdollpart(hedead,"RightUpperArm")
							end)
							wait(5)
							sound:Stop()
							ragdollpart(hedead,"Head")
						end)
					end
				end)
			end
		end)
		end)
		--shoot
		wait(0.5)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end

function infectthenoobs()
	working = true
	pcall(function()
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.Anchored = true
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
				char.HumanoidRootPart.Anchored = false
			elseif Point.X < 0 then
				char.HumanoidRootPart.Anchored = true
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
				char.HumanoidRootPart.Anchored = false
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					local startree = char.HumanoidRootPart.CFrame
					for i=1,4 do
						char.HumanoidRootPart.Anchored = true
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						char.HumanoidRootPart.Anchored = false
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					local startree = char.HumanoidRootPart.CFrame
					for i=1,4 do
						char.HumanoidRootPart.Anchored = true
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						char.HumanoidRootPart.Anchored = false
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		handle["bullet ejaculator"].Grenade:Play()
		
		--shoot
		pcall(function()
		local obj2 = Instance.new("Part")
		obj2.CFrame = CFrame.new(Vector3.new(-5.3000598, 0.500012994, -7.10008478)) * CFrame.Angles(0, 1.5707963705063, 0)
		obj2.FormFactor = Enum.FormFactor.Symmetric
		obj2.Elasticity = 1
		obj2.TopSurface = Enum.SurfaceType.Smooth
		obj2.BottomSurface = Enum.SurfaceType.Smooth
		obj2.Size = Vector3.new(1, 1, 1)
		obj2.BrickColor = BrickColor.new("Deep orange")
		obj2.Friction = 0
		obj2.Shape = Enum.PartType.Ball
		obj2.Name = "Mustard Gas"
		obj2.Parent = workspace
		obj2:BreakJoints()
		local int = Instance.new('IntValue',obj2)
		int.Name = 'already broken u pleb'

		local obj3 = Instance.new("SpecialMesh")
		obj3.MeshType = Enum.MeshType.FileMesh
		obj3.Scale = Vector3.new(4, 3, 4)
		obj3.MeshId = "http://www.roblox.com/asset/?id=88794862"
		obj3.TextureId = "http://www.roblox.com/asset/?id=94857319"
		obj3.Parent = obj2
		
		local obj4 = Instance.new("ParticleEmitter")
		obj4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0, 1, 0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0, 50, 0))})
		obj4.Lifetime = NumberRange.new(2,2)
		obj4.Speed = NumberRange.new(10,10)
		obj4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,8,0),NumberSequenceKeypoint.new(1,8,0)})
		obj4.RotSpeed = NumberRange.new(100,100)
		obj4.Rate = 3.4028234663853e+38
		obj4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.94999998807907,0),NumberSequenceKeypoint.new(1,0.94999998807907,0)})
		obj4.Name = "Smoke"
		obj4.Enabled = false
		obj4.SpreadAngle = Vector2.new(15000, 15000)
		obj4.Texture = "rbxassetid://249338959"
		obj4.Parent = obj2
		obj4.Rotation = NumberRange.new(-180, 180)
		obj4.RotSpeed = NumberRange.new(-200, 200)
		obj4.LightEmission = 0.15
		
		
		local throw = obj2
		obj2.CFrame = handle["bullet ejaculator"].CFrame*CFrame.Angles(0,0,math.rad(90))
		local wew = (mouse.Hit.p - throw.Position).unit
		if wew.Y > 0.5 then
			wew = Vector3.new(wew.X,0.5,wew.Z)
		end
		throw.Velocity = wew*150
		
		local activated = true
		game:GetService('Debris'):AddItem(throw,30)
		spawn(function()
			wait(0.25)
			activated = false
		end)
		throw.Touched:connect(function(hit)
			if hit and hit.Parent and activated == false and hit.CanCollide == true and hit:IsDescendantOf(char) == false then
				throw.Velocity = Vector3.new()
				activated = true
				obj4.Enabled = true
				local hitdetect = Instance.new('Part',obj2)
				hitdetect.Size = Vector3.new(40,40,40)
				hitdetect.CFrame = obj2.CFrame
				hitdetect.CanCollide = false
				hitdetect.Transparency = 1
				hitdetect:BreakJoints()
				local int = Instance.new('IntValue',hitdetect)
				int.Name = 'already broken u pleb'
				local umm = Instance.new('Weld',hitdetect)
				umm.Part0 = hitdetect
				umm.Part1 = obj2
				hitdetect:BreakJoints()
				local umm = Instance.new('Weld',hitdetect)
				umm.Part0 = hitdetect
				umm.Part1 = obj2
				hitdetect.Touched:connect(function(hedeads)
					local hedead = hedeads.Parent
					if hedead and hedead:FindFirstChildOfClass('Humanoid') and hedead:FindFirstChild('gassedlol') == nil then
						infect(hedead)
					end
				end)
			end
		end)
		end)
		--shoot
		wait(0.5)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end

function boomboom()
	working = true
	pcall(function()
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
			elseif Point.X < 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		handle["bullet ejaculator"].Grenade:Play()
		
	-- 1 - Model
local obj1 = Instance.new("Model")
obj1.Name = "Molotov"
obj1.Parent = workspace

-- 2 - Handle
local obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(-54.2500343, 0.849999487, 22.7499638)) * CFrame.Angles(0.0065602259710431, 1.5695514678955, -0.006558605004102)
obj2.FormFactor = Enum.FormFactor.Symmetric
obj2.TopSurface = Enum.SurfaceType.Smooth
obj2.BottomSurface = Enum.SurfaceType.Smooth
obj2.Size = Vector3.new(0.499999911, 1.69999933, 0.499999911)
obj2.BrickColor = BrickColor.new("Brown")
obj2.Friction = 0.30000001192093
obj2.CanCollide = false
obj2.Shape = Enum.PartType.Block
obj2.Name = "Handle"
obj2.Parent = obj1

-- 3 - Mesh
local obj3 = Instance.new("SpecialMesh")
obj3.MeshType = Enum.MeshType.FileMesh
obj3.Scale = Vector3.new(0.0149999997, 0.0149999997, 0.0149999997)
obj3.MeshId = "rbxassetid://434072506"
obj3.TextureId = "http://www.roblox.com/asset/?id=434072779"
obj3.Parent = obj2

-- 4 - Flame
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(-54.2500038, 0.946961284, 22.484726)) * CFrame.Angles(0.17453299462795, 2.9103830456734e-11, -3.637984444943e-12)
obj4.CanCollide = false
obj4.Transparency = 1
obj4.Size = Vector3.new(0.0999998674, 0.299999982, 0.0999999642)
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Block
obj4.Name = "Flame"
obj4.Parent = obj2
obj4:BreakJoints()
local int = Instance.new('IntValue',obj4)
int.Name = 'already broken u pleb'

-- 5 - Flame
local obj5 = Instance.new("ParticleEmitter")
obj5.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1, 0.494118, 0.239216)),ColorSequenceKeypoint.new(1,Color3.new(1, 0.572549, 0.223529))})
obj5.Lifetime = NumberRange.new(0.5,0.75)
obj5.Speed = NumberRange.new(2,2)
obj5.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.18750011920929,0.18750011920929),NumberSequenceKeypoint.new(1,0,0)})
obj5.Acceleration = Vector3.new(0, 2.5, 0)
obj5.RotSpeed = NumberRange.new(-200,200)
obj5.Rate = 500
obj5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.10000000149012,0.5,0.10000000149012),NumberSequenceKeypoint.new(0.25,0.25,0.25),NumberSequenceKeypoint.new(0.5,0.25,0.25),NumberSequenceKeypoint.new(0.80000001192093,0.5,0.10000002384186),NumberSequenceKeypoint.new(1,1,0)})
obj5.Name = "Flame"
obj5.LightEmission = 0.75
obj5.Rotation = NumberRange.new(-180,180)
obj5.Texture = "rbxassetid://716847870"
obj5.Parent = obj4
obj1.PrimaryPart = obj2
	local throw = obj2
	obj1:SetPrimaryPartCFrame(handle["bullet ejaculator"].CFrame*CFrame.Angles(0,0,math.rad(90)))
	local flameweld = Instance.new('Weld',obj4)
	flameweld.Part0 = obj2
	flameweld.Part1 = obj4
	flameweld.C0 = CFrame.new(0.265237808, 0.0969613791, -7.62939453e-06, 0.000148057821, -0.173646256, -0.984807372, 9.71066697e-07, 0.984808147, -0.17364639, 0.999999225, 2.47533972e-05, 0.000145977203)
	local wew = (mouse.Hit.p - throw.Position).unit
	if wew.Y > 0.5 then
		wew = Vector3.new(wew.X,0.5,wew.Z)
	end
	throw.Velocity = wew*150
	throw.Touched:connect(function(hit)
		if hit.CanCollide == true then
			local touching = throw:GetTouchingParts()
			pcall(function()
				local moves = 0
				repeat
					moves = moves+1
					if touching == nil then
					touching = throw:GetTouchingParts()
					throw.CFrame = throw.CFrame-Vector3.new(0,0.5,0)
					end
				until moves > 20 or touching ~= nil
				-- 1 - Model
local obj1 = Instance.new("Model")
obj1.Name = "Fire"
obj1.Parent = workspace

-- 2 - Flames
local obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(-5, 0.500030518, -38)) * CFrame.Angles(-0, 0, -0)
obj2.FormFactor = Enum.FormFactor.Symmetric
obj2.CanCollide = false
obj2.Transparency = 1
obj2.TopSurface = Enum.SurfaceType.Smooth
obj2.BottomSurface = Enum.SurfaceType.Smooth
obj2.Size = Vector3.new(30, 1, 30)
obj2.Anchored = true
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Name = "Flames"
obj2.Parent = obj1
local int = Instance.new('IntValue',obj2)
int.Name = 'already broken u pleb'

-- 3 - Flame
local obj3 = Instance.new("ParticleEmitter")
obj3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1, 0.494118, 0.239216)),ColorSequenceKeypoint.new(1,Color3.new(1, 0.572549, 0.223529))})
obj3.ZOffset = 3
obj3.Lifetime = NumberRange.new(2,2.25)
obj3.Speed = NumberRange.new(2,2)
obj3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,3,1.5),NumberSequenceKeypoint.new(1,1.1200000047684,0.31999999284744)})
obj3.Acceleration = Vector3.new(0, 2.5, 0)
obj3.RotSpeed = NumberRange.new(-200,200)
obj3.Rate = 100
obj3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.10000000149012,0.5,0.10000000149012),NumberSequenceKeypoint.new(0.25,0.25,0.25),NumberSequenceKeypoint.new(0.5,0.25,0.25),NumberSequenceKeypoint.new(0.80000001192093,0.5,0.10000002384186),NumberSequenceKeypoint.new(1,1,0)})
obj3.Name = "Flame"
obj3.LightEmission = 0.75
obj3.Rotation = NumberRange.new(-180,180)
obj3.Texture = "rbxassetid://716847870"
obj3.Parent = obj2

-- 4 - Sparks
local obj4 = Instance.new("ParticleEmitter")
obj4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1, 0.72549, 0.482353)),ColorSequenceKeypoint.new(1,Color3.new(1, 0.72549, 0.482353))})
obj4.ZOffset = 3
obj4.Lifetime = NumberRange.new(1,3)
obj4.Speed = NumberRange.new(2,3)
obj4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.29899999499321,0.075000002980232,0),NumberSequenceKeypoint.new(1,0.025000000372529,0)})
obj4.Acceleration = Vector3.new(0, 2.5, 0)
obj4.Rate = 60
obj4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.125,0,0),NumberSequenceKeypoint.new(0.75,0,0),NumberSequenceKeypoint.new(1,1,0)})
obj4.Name = "Sparks"
obj4.SpreadAngle = Vector2.new(22.5, 22.5)
obj4.LightEmission = 0.5
obj4.Rotation = NumberRange.new(-180,180)
obj4.Texture = "http://www.roblox.com/asset/?id=301261210"
obj4.Parent = obj2

-- 5 - Smoke
local obj5 = Instance.new("ParticleEmitter")
obj5.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.509804, 0.509804, 0.509804)),ColorSequenceKeypoint.new(1,Color3.new(0.196078, 0.196078, 0.196078))})
obj5.LightInfluence = 0.5
obj5.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,8.25,0),NumberSequenceKeypoint.new(1,0,0)})
obj5.Acceleration = Vector3.new(0.100000001, 0, 0.200000003)
obj5.Rate = 30
obj5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.74374997615814,0),NumberSequenceKeypoint.new(1,1,0)})
obj5.Name = "Smoke"
obj5.Texture = "rbxassetid://528256032"
obj5.Parent = obj2

-- 6 - Hitbox
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(-5.5, 7.50002432, -37.5)) * CFrame.Angles(-0, 0, -0)
obj6.CanCollide = false
obj6.Transparency = 1
obj6.Size = Vector3.new(33, 15.0000048, 33)
obj6.Anchored = true
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Block
obj6.Name = "Hitbox"
obj6.Parent = obj1
local int = Instance.new('IntValue',obj6)
int.Name = 'already broken u pleb'
local aaaa_fire = obj1
		aaaa_fire.PrimaryPart = obj2
		obj2.Size = Vector3.new(math.random(20,30),1,math.random(20,30))
		obj6.Size = Vector3.new(obj2.Size.X+2,15,obj2.Size.X+2)
		aaaa_fire.Parent = workspace
		aaaa_fire:SetPrimaryPartCFrame(CFrame.new(throw.Position-Vector3.new(0,0.1,0)))
		obj6.Touched:connect(function(hit)
			if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
				fire(hit)
			end
		end)
		spawn(function()
			wait(30)
			for i,v in pairs(obj2:GetChildren()) do
				pcall(function()
					v.Enabled = false
				end)
			end
			wait(7.5)
			obj1:Destroy()
		end)
			end)
			local umm = Instance.new('Part',workspace)
			umm.Anchored = true
			umm.CanCollide = false
			umm.Transparency = 1
			umm.Size = Vector3.new()
			umm.CFrame = throw.CFrame
			local sound = Instance.new('Sound',umm)
			sound.SoundId = 'rbxassetid://260496290'
			sound.MaxDistance = 1000
			sound.Volume = 3
			sound:Play()
			sound.Ended:connect(function()
				umm:Destroy()
			end)
			throw:Destroy()
		end
	end)
	wait(0.5)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end

function fireworkit()
	working = true
	pcall(function()
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
			elseif Point.X < 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		--shoot
		pcall(function()
		local obj2 = Instance.new("Part")
		obj2.CFrame = CFrame.new(Vector3.new(-43.3500366, 1.50002205, -40.6200256)) * CFrame.Angles(-1.1994005035376e-05, 1.5707963705063, 0)
		obj2.TopSurface = Enum.SurfaceType.Smooth
		obj2.BottomSurface = Enum.SurfaceType.Smooth
		obj2.Size = Vector3.new(0.5, 3, 0.5)
		obj2.Anchored = false
		obj2.Friction = 0.30000001192093
		obj2.Shape = Enum.PartType.Block
		obj2.Name = "Firework"
		obj2.Parent = workspace
		local obj3 = Instance.new("SpecialMesh")
		obj3.MeshType = Enum.MeshType.FileMesh
		obj3.Scale = Vector3.new(0.25, 0.25, 0.25)
		obj3.MeshId = "http://www.roblox.com/asset/?id=462166317"
		obj3.TextureId = "http://www.roblox.com/asset/?id=462166543"
		obj3.Parent = obj2
		obj2.CFrame = CFrame.new(handle["bullet ejaculator"].Position,mouse.Hit.p)*CFrame.Angles(math.rad(-90),0,0)
		local sound = Instance.new('Sound',obj2)
		sound.Volume = 0.25
		sound.EmitterSize = 200
		sound.MaxDistance = 300
		sound.SoundId = 'http://www.roblox.com/asset/?id=161034732'
		sound:Play()
		local heck = Instance.new('BodyVelocity',obj2)
		heck.Velocity = obj2.CFrame.upVector*math.random(100,200)
		heck.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local partic = Instance.new('ParticleEmitter',obj2)
		partic.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.4,Color3.fromRGB(255,125,0)),ColorSequenceKeypoint.new(0.8,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new(1,1,1))})
		partic.LightEmission = 0.5
		partic.LightInfluence = 0
		partic.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.15)})
		partic.Rotation = NumberRange.new(0,90)
		partic.SpreadAngle = Vector2.new(5,5)
		partic.Speed = NumberRange.new(20)
		partic.Texture = 'rbxassetid://603193846'
		partic.EmissionDirection = Enum.NormalId.Bottom
		partic.Lifetime = NumberRange.new(0.5,1)
		partic.Rate = 100
		local waited = 0
		local touched = false
		obj2.Touched:connect(function(hit)
			if hit.CanCollide == true and hit:IsDescendantOf(char) == false then touched = true end
		end)
		spawn(function()
			repeat wait(0.05) waited = waited+0.05 until waited > 1.8 or touched
			local pos = obj2.Position
			local Point1 = pos-Vector3.new(10,10,10)
			local Point2 = pos+Vector3.new(10,10,10)
			local Region = Region3.new(Point1,Point2)
			for _,Part in pairs(workspace:FindPartsInRegion3(Region,nil,math.huge)) do
				if Part.Parent:FindFirstChildOfClass('Humanoid') then
					fire(Part)
				end
			end
			sound:Stop()
			obj2.Transparency = 1
			obj2.Anchored = true
			local sound2 = Instance.new('Sound',workspace)
			sound2.SoundId = 'rbxassetid://138080762'
			sound2:Play()
			partic.Enabled = false
			local colorscheme = math.random(1,4)
			--1 - red & orange
			--2 - blue & pink
			--3 - green & purple
			--4 - blue, red, white
			local colar1 = Color3.fromRGB(255,0,0)
			local colar2 = Color3.fromRGB(255,125,0)
			local colar3 = Color3.fromRGB(255,255,255)
			if colorscheme == 2 then
				colar1 = Color3.fromRGB(0,132,255)
				colar2 = Color3.fromRGB(243,105,255)
			elseif colorscheme == 3 then
				colar1 = Color3.fromRGB(76,255,0)
				colar2 = Color3.fromRGB(128,0,255)
			elseif colorscheme == 4 then
				colar2 = Color3.fromRGB(0,132,255)
			end
			local partic2 = Instance.new('ParticleEmitter',obj2)
			partic2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar1),ColorSequenceKeypoint.new(1,colar1)})
			partic2.LightEmission = 0.5
			partic2.LightInfluence = 0
			partic2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.1)})
			partic2.Rotation = NumberRange.new(0,90)
			partic2.SpreadAngle = Vector2.new(180,180)
			partic2.Speed = NumberRange.new(20)
			partic2.Texture = 'rbxassetid://603193846'
			partic2.EmissionDirection = Enum.NormalId.Right
			partic2.Lifetime = NumberRange.new(2,2.5)
			partic2.Rate = 1000
			partic2.Drag = 1
			local partic3 = partic2:Clone()
			partic3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar2),ColorSequenceKeypoint.new(1,colar2)})
			partic3.Parent = obj2
			if colorscheme == 4 then
				local partic4 = partic2:Clone()
				partic4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar3),ColorSequenceKeypoint.new(1,colar3)})
				partic4.Parent = obj2
			end
			wait(1)
			for i,v in pairs(obj2:GetChildren()) do
				if v:IsA('ParticleEmitter') then
					v.Enabled = false
				end
			end
			wait(1)
			obj2:Destroy()
		end)
		--shoot
		end)
		wait(0.4)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end

function bangbang()
	working = true
	pcall(function()
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
			elseif Point.X < 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		--shoot
		pcall(function()
		local ray = Ray.new(handle["bullet ejaculator"].CFrame.p, (mouse.Hit.p - handle["bullet ejaculator"].CFrame.p).unit * 300)
		local part, position,normal = workspace:FindPartOnRay(ray, char, false, true)
		local ignoretable = {char}
		repeat
			if part and part.Parent then
				if part.CanCollide == false and part.Parent:FindFirstChildOfClass('Humanoid') == nil then
					table.insert(ignoretable,part)
					part, position,normal = workspace:FindPartOnRayWithIgnoreList(ray, ignoretable, false, true)
				end
			end
		until part == nil or part.CanCollide == true or part.Parent:FindFirstChildOfClass('Humanoid')
		spawn(function()
			bullethit(part,position,normal)
		end)
		local beam = Instance.new("Part", workspace)
		local int = Instance.new('IntValue',beam)
		int.Name = 'already broken u pleb'
		beam.Color = Color3.fromRGB(255,255,100)
		beam.FormFactor = "Custom"
		beam.Material = "Neon"
		beam.Transparency = 0.25
		beam.Anchored = true
		beam.Locked = true
		beam.CanCollide = false
		
		local distance = (handle["bullet ejaculator"].CFrame.p - position).magnitude
		beam.Size = Vector3.new(0.2, 0.2, distance)
		beam.CFrame = CFrame.new(handle["bullet ejaculator"].CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		
		local mesh = Instance.new('SpecialMesh',beam)
		mesh.MeshType = Enum.MeshType.Sphere
		local startz = beam.Size.Z
 		spawn(function()
			for i=1,5 do
				local location = beam.CFrame
				beam.Transparency = beam.Transparency+0.15
				beam.Size = beam.Size-Vector3.new(0,0,startz/5)
				beam.CFrame = location+(beam.CFrame.lookVector*(startz/10))
				wait()
			end
			beam:Destroy()
		end)
		handle["bullet ejaculator"].Gunshot:Play()
		local light = Instance.new('PointLight',handle["bullet ejaculator"])
		light.Shadows = true
		light.Color = Color3.fromRGB(255,255,100)
		light.Brightness = 10
		game:GetService('Debris'):AddItem(light,0.1)
		
		local bill = Instance.new('BillboardGui',handle["bullet ejaculator"])
		bill.Size = UDim2.new(1,0,1,0)
		bill.LightInfluence = 0
		bill.StudsOffset = Vector3.new(0,0,1)
		
		local FLASH = Instance.new('ImageLabel',bill)
		FLASH.BackgroundTransparency = 1
		FLASH.Size = UDim2.new(2,0,2,0)
		FLASH.Image = 'rbxassetid://110538200'
		FLASH.AnchorPoint = Vector2.new(0.5,0.5)
		FLASH.Position = UDim2.new(0.5,0,0.5,0)
		wait(0.1)
		spawn(function()
			for i=1,2 do
				FLASH.ImageTransparency = FLASH.ImageTransparency+0.5
				wait()
			end
			bill:Destroy()
		end)
		end)
		--shoot
		wait(0.4)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end

function lynchabitch()
	working = true
	pcall(function()
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
			elseif Point.X < 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		--shoot
		pcall(function()
		local ray = Ray.new(handle["bullet ejaculator"].CFrame.p, (mouse.Hit.p - handle["bullet ejaculator"].CFrame.p).unit * 300)
		local part, position = workspace:FindPartOnRay(ray, char, false, true)
		local ignoretable = {char}
		repeat
			if part and part.Parent then
				if part.CanCollide == false and part.Parent:FindFirstChildOfClass('Humanoid') == nil then
					table.insert(ignoretable,part)
					part, position = workspace:FindPartOnRayWithIgnoreList(ray, ignoretable, false, true)
				end
			end
		until part == nil or part.CanCollide == true or part.Parent:FindFirstChildOfClass('Humanoid')
		spawn(function()
			ropehit(part)
		end)
		local beam = Instance.new("Part", workspace)
		local int = Instance.new('IntValue',beam)
		int.Name = 'already broken u pleb'
		beam.Color = Color3.fromRGB(106, 57, 9)
		beam.FormFactor = "Custom"
		beam.Material = "Fabric"
		beam.Transparency = 0
		beam.Anchored = true
		beam.Locked = true
		beam.CanCollide = false
		
		local distance = (handle["bullet ejaculator"].CFrame.p - position).magnitude
		beam.Size = Vector3.new(0.2, 0.2, distance)
		beam.CFrame = CFrame.new(handle["bullet ejaculator"].CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		
		local mesh = Instance.new('SpecialMesh',beam)
		mesh.MeshType = Enum.MeshType.Sphere
		local startz = beam.Size.Z
 		spawn(function()
			for i=1,5 do
				local location = beam.CFrame
				beam.Size = beam.Size-Vector3.new(0,0,startz/5)
				beam.CFrame = location+(beam.CFrame.lookVector*(startz/10))
				wait()
			end
			beam:Destroy()
		end)
		handle["bullet ejaculator"].Grenade:Play()
		local light = Instance.new('PointLight',handle["bullet ejaculator"])
		light.Shadows = true
		light.Color = Color3.fromRGB(255,255,100)
		light.Brightness = 10
		game:GetService('Debris'):AddItem(light,0.1)
		wait(0.1)
		end)
		--shoot
		wait(0.4)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end

function zapzap()
	working = true
	pcall(function()
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		char:FindFirstChildOfClass('Humanoid').JumpPower = 0
		local start = char.Torso["Right Shoulder"].C0
		local start2 = char.Torso["Right Shoulder"].C1
		char.Torso["Right Shoulder"]:Destroy()
		local weld = Instance.new('Weld',char.Torso)
		weld.Part0 = char.Torso
		weld.Part1 = char["Right Arm"]
		weld.C0 = start
		weld.C1 = start2
		local Point = char.HumanoidRootPart.CFrame:vectorToObjectSpace(mouse.Hit.p-char.HumanoidRootPart.CFrame.p)
		local old = char.HumanoidRootPart.CFrame
		if Point.Z > 0 then
			if Point.X > 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
			elseif Point.X < 0 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
			end
		end
		local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*1.25)
		local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*1.25)
		local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
		local CFr = (char.HumanoidRootPart.CFrame*Part0Joint):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0Joint).p,mouse.Hit.p))
		local Part0JointHead = CFrame.new(Vector3.new(0,1,0))
		local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*1.25)
		local CFr2 = (char.HumanoidRootPart.CFrame*Part0JointHead):toObjectSpace(CFrame.new((char.HumanoidRootPart.CFrame*Part0JointHead).p,mouse.Hit.p))
		local start3 = char.Torso.Neck.C0
		local start4 = char.Torso.Neck.C1
		char.HumanoidRootPart.CFrame = old
		if Point.Z > 0 then
			if Point.X > 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0),i/4)
						wait()
					end
				end)
			elseif Point.X < 0 then
				spawn(function()
					for i=1,4 do
						local startree = char.HumanoidRootPart.CFrame
						char.HumanoidRootPart.CFrame = startree:lerp(CFrame.new(char.HumanoidRootPart.Position,Vector3.new(mouse.Hit.X,char.HumanoidRootPart.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0),i/4)
						wait()
					end
				end)
			end
		end
		for i=1,4 do
			weld.C1 = start2:lerp(Part1Joint,i/4)
			weld.C0 = start:lerp(Part0Joint * (CFr-CFr.p) * RotationOffset,i/4)
			char.Torso.Neck.C0 = start3:lerp(Part0JointHead * (CFr2-CFr2.p) * CFrame.Angles(0,0,0),1)
			char.Torso.Neck.C1 = start4:lerp(Part1JointHead,1)
			wait()
		end
		--shoot
		pcall(function()
		local ray = Ray.new(handle["bullet ejaculator"].CFrame.p, (mouse.Hit.p - handle["bullet ejaculator"].CFrame.p).unit * 300)
		local part, position = workspace:FindPartOnRay(ray, char, false, true)
		local ignoretable = {char}
		repeat
			if part and part.Parent then
				if part.CanCollide == false and part.Parent:FindFirstChildOfClass('Humanoid') == nil then
					table.insert(ignoretable,part)
					part, position = workspace:FindPartOnRayWithIgnoreList(ray, ignoretable, false, true)
				end
			end
		until part == nil or part.CanCollide == true or part.Parent:FindFirstChildOfClass('Humanoid')
		spawn(function()
			zaphit(part,position)
		end)
		local beam = Instance.new("Part", workspace)
		local int = Instance.new('IntValue',beam)
		int.Name = 'already broken u pleb'
		beam.Color = Color3.fromRGB(255,0,0)
		beam.FormFactor = "Custom"
		beam.Material = "Neon"
		beam.Transparency = 0.25
		beam.Anchored = true
		beam.Locked = true
		beam.CanCollide = false
		
		local distance = (handle["bullet ejaculator"].CFrame.p - position).magnitude
		beam.Size = Vector3.new(1, 1, distance)
		beam.CFrame = CFrame.new(handle["bullet ejaculator"].CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		
		local mesh = Instance.new('SpecialMesh',beam)
		mesh.MeshType = Enum.MeshType.Sphere
		local startz = beam.Size.Z
 		spawn(function()
			for i=1,20 do
				local location = beam.CFrame
				beam.Transparency = beam.Transparency+0.05
				beam.Size = beam.Size-Vector3.new(0,0,startz/20)
				beam.CFrame = location+(beam.CFrame.lookVector*(startz/40))
				wait()
			end
			beam:Destroy()
		end)
		handle["bullet ejaculator"].Laser:Play()
		handle["bullet ejaculator"].LaserAmbient:Play()
		local light = Instance.new('PointLight',handle["bullet ejaculator"])
		light.Shadows = true
		light.Color = Color3.fromRGB(255,0,0)
		light.Brightness = 10
		game:GetService('Debris'):AddItem(light,0.1)
		
		local bill = Instance.new('BillboardGui',handle["bullet ejaculator"])
		bill.Size = UDim2.new(1,0,1,0)
		bill.LightInfluence = 0
		bill.StudsOffset = Vector3.new(0,0,1)
		
		local FLASH = Instance.new('ImageLabel',bill)
		FLASH.BackgroundTransparency = 1
		FLASH.Size = UDim2.new(2,0,2,0)
		FLASH.Image = 'rbxassetid://110538200'
		FLASH.AnchorPoint = Vector2.new(0.5,0.5)
		FLASH.Position = UDim2.new(0.5,0,0.5,0)
		FLASH.ImageColor3 = Color3.new(1,0,0)
		wait(0.1)
		spawn(function()
			for i=1,2 do
				FLASH.ImageTransparency = FLASH.ImageTransparency+0.5
				wait()
			end
			bill:Destroy()
		end)
		end)
		--shoot
		wait(0.4)
		local ends = weld.C0
		local ends2 = weld.C1
		local ends3 = char.Torso.Neck.C0
		local ends4 = char.Torso.Neck.C1
		for i=1,4 do
			weld.C0 = ends:lerp(start,i/4)
			weld.C1 = ends2:lerp(start2,i/4)
			char.Torso.Neck.C0 = ends3:lerp(start3,1)
			char.Torso.Neck.C1 = ends4:lerp(start4,1)
			wait()
		end
		weld:Destroy()
		local shcl = rightclone:Clone()
		shcl.Parent = char.Torso
		shcl.Part0 = char.Torso
		shcl.Part1 = char["Right Arm"]
		end)
char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
char:FindFirstChildOfClass('Humanoid').JumpPower = 50
	working = false
end

function katanaQ()
	working = true
	swinging = true
	gettingeem = true
	pcall(function()
	local rweld = Instance.new("Weld", char["Right Arm"])
	local tweld = Instance.new("Weld", char.HumanoidRootPart)
	pcall(function()
	rweld.Part0 = char["Torso"]
	rweld.Part1 = char["Right Arm"]
	rweld.C0 = CFrame.new(1.5, 0, 0)
	tweld.Part0 = char.HumanoidRootPart
	tweld.Part1 = char.Torso
	end)
	
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 100
	
	local at1 = Instance.new("Attachment", handle)
	local at2 = Instance.new("Attachment", handle)
	at1.Visible = false
	at1.Position = Vector3.new(5, 0, 0)
	at2.Visible = false
	at2.Position = Vector3.new(1, 0, 0)
	
	local trail = Instance.new("Trail", handle)
	trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
	trail.LightEmission = 0.25
	trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 1)})
	trail.Lifetime = 0.10
	trail.MinLength = 0.05
	trail.Attachment0 = at1
	trail.Attachment1 = at2
	local coru=coroutine.wrap(function()
	lerp(rweld,rweld.C0,CFrame.new(1.35, 0.5, -1.2) * CFrame.Angles(0, math.rad(90), math.rad(90)),0.08)
	end)
	coru()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(270),math.rad(-90),math.rad(180)), 0.08)
	local ree=0
	while (goteem == nil or goteem2 == nil or goteem3 == nil) and ree < 1 do
		wait(0.05)
		ree=ree+0.05
	end
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
	gettingeem = false
	swinging = false
	if goteem then
		wait(2)
		pcall(function()
		local sounn = Instance.new("Sound", goteem.Torso)
		local lipp = math.random(1, 3)
		if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
		if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
		if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
		sounn:Play()
		end)
		ragdollpart(goteem,"Head")
		for i,v in pairs(goteem:GetDescendants()) do
			if v:IsA('Weld') then v:Destroy() end
		end
		goteem = nil
		if goteem2 then
			pcall(function()
				local sounn = Instance.new("Sound", goteem2.Torso)
				local lipp = math.random(1, 3)
				if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
				if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
				if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
				sounn:Play()
			end)
			ragdollpart(goteem2,"Head")
			for i,v in pairs(goteem2:GetDescendants()) do
				if v:IsA('Weld') then v:Destroy() end
			end
			goteem2 = nil
		end
		if goteem3 then
			pcall(function()
				local sounn = Instance.new("Sound", goteem3.Torso)
				local lipp = math.random(1, 3)
				if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
				if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
				if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
				sounn:Play()
			end)
			ragdollpart(goteem3,"Head")
			for i,v in pairs(goteem3:GetDescendants()) do
				if v:IsA('Weld') then v:Destroy() end
			end
			goteem3 = nil
		end
	end
	trail:Destroy()
	at1:Destroy()
	at2:Destroy()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.05)
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
	rweld:Destroy()
	tweld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
		local clone = torsoclone:Clone()
		clone.Part0 = char.HumanoidRootPart
		clone.Part1 = char.Torso
		clone.Parent = char.HumanoidRootPart
	end
	end)
	swinging = false
	gettingeem = false
	working = false
end
local function katanaE()
	working = true
	swinging = true
	SLESH = true
	pcall(function()
	local rweld = Instance.new("Weld", char["Right Arm"])
	local tweld = Instance.new("Weld", char.HumanoidRootPart)
	rweld.Part0 = char["Torso"]
	rweld.Part1 = char["Right Arm"]
	rweld.C0 = CFrame.new(1.5, 0, 0)
	tweld.Part0 = char.HumanoidRootPart
	tweld.Part1 = char.Torso
	
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 100
	
	local at1 = Instance.new("Attachment", handle)
	local at2 = Instance.new("Attachment", handle)
	at1.Visible = false
	at1.Position = Vector3.new(5, 0, 0)
	at2.Visible = false
	at2.Position = Vector3.new(1, 0, 0)
	
	local trail = Instance.new("Trail", handle)
	trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
	trail.LightEmission = 0.25
	trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 1)})
	trail.Lifetime = 0.10
	trail.MinLength = 0.05
	trail.Attachment0 = at1
	trail.Attachment1 = at2
	local coru=coroutine.wrap(function()
	lerp(rweld,rweld.C0,CFrame.new(2, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(60)),0.08)
	end)
	coru()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(270),math.rad(-270),math.rad(0)), 0.08)
	
	wait(1)
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
	trail:Destroy()
	at1:Destroy()
	at2:Destroy()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.05)
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
	rweld:Destroy()
	tweld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
		local clone = torsoclone:Clone()
		clone.Part0 = char.HumanoidRootPart
		clone.Part1 = char.Torso
		clone.Parent = char.HumanoidRootPart
	end
	end)
	swinging = false
	SLESH = false
	working = false
end
local function katanaF()
	working = true
	ripheart = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 100
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(5, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(1, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.35, 0.5, -1.2) * CFrame.Angles(0, math.rad(90), math.rad(90)),0.08)
		end)
		coru()
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(270),math.rad(-90),math.rad(180)), 0.08)
		local ree=0
		while (goteem == nil or goteem2 == nil or goteem3 == nil) and ree < 1 do
			wait(0.05)
			ree=ree+0.05
		end
		print("FUCK")
		char:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
		
		local lweld = Instance.new("Weld", char["Left Arm"])
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		local mweld = Instance.new("Weld", char["Left Leg"])
		mweld.Part0 = char.Torso
		mweld.Part1 = char["Left Leg"]
		mweld.C0 = CFrame.new(-0.5, -2, 0)
		local cweld = Instance.new("Weld", char["Right Leg"])
		cweld.Part0 = char.Torso
		cweld.Part1 = char["Right Leg"]
		cweld.C0 = CFrame.new(0.5, -2, 0)
		
		cor1 = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)),0.08)
		end)
		cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)),0.08)
		end)
		cor3 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, -1) * CFrame.Angles(0, math.rad(45), math.rad(90)),0.08)
		end)
		cor4 = coroutine.wrap(function()
			lerp(mweld,mweld.C0,CFrame.new(-0.75, -2, 0) * CFrame.Angles(0, math.rad(0), math.rad(-15)),0.08)
		end)
		cor1()
		cor2()
		cor3()
		cor4()
		lerp(cweld,cweld.C0,CFrame.new(0.75, -2, 0) * CFrame.Angles(0, math.rad(0), math.rad(15)),0.08)
		
		wait(0.2)
		
		cor1 = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)),0.04)
		end)
		cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-0), math.rad(0)),0.04)
		end)
		cor3 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, -0.25) * CFrame.Angles(0, math.rad(90), math.rad(90)),0.04)
		end)
		cor4 = coroutine.wrap(function()
			lerp(mweld,mweld.C0,CFrame.new(-0.75, -1.5, -0.5) * CFrame.Angles(0, math.rad(0), math.rad(-45)),0.04)
		end)
		cor1()
		cor2()
		cor3()
		cor4()
		lerp(cweld,cweld.C0,CFrame.new(0.5, -2, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.04)
		
		cor1 = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)),0.04)
		end)
		cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-45), math.rad(0)),0.04)
		end)
		cor3 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, -0.25) * CFrame.Angles(0, math.rad(135), math.rad(90)),0.04)
		end)
		cor4 = coroutine.wrap(function()
			lerp(mweld,mweld.C0,CFrame.new(-2, -1, -1) * CFrame.Angles(0, math.rad(-45), math.rad(-90)),0.04)
		end)
		cor1()
		cor2()
		cor3()
		cor4()
		lerp(cweld,cweld.C0,CFrame.new(0.5, -2, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.04)
		
		cor1 = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)),0.04)
		end)
		cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.04)
		end)
		cor3 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, -0.25) * CFrame.Angles(0, math.rad(135), math.rad(90)),0.04)
		end)
		cor4 = coroutine.wrap(function()
			lerp(mweld,mweld.C0,CFrame.new(-2, -1, -1) * CFrame.Angles(0, math.rad(-45), math.rad(-90)),0.04)
		end)
		cor1()
		cor2()
		cor3()
		cor4()
		lerp(cweld,cweld.C0,CFrame.new(0.5, -2, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.04)
	end)
	ripheart = false
	working = false
end

function longrangethotdestroyer()
	working = true
	pcall(function()
		local thott = Instance.new("Sound", char)
		thott.SoundId = "rbxassetid://949916584"
		thott.Volume = 1
		thott.TimePosition = 0.5
		thott.PlaybackSpeed = 1
		thott.EmitterSize = player.CameraMaxZoomDistance+1
		thott.MaxDistance = player.CameraMaxZoomDistance+1
		thott:Play()
		
		local rweld = Instance.new("Weld", char["Right Arm"])
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)),0.1)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)), 0.1)
		
		wait(0.75)
		local thote = Instance.new("Sound", char.Head)
		thote.SoundId = "rbxassetid://358498516"
		thote.Volume = 1
		thote:Play()
		
				
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)),0.04)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.04)
		wait(0.04)
		local ree = Instance.new('Part',workspace)
		ree.Shape = Enum.PartType.Cylinder
		ree.CanCollide = false
		ree.Anchored = false
		ree.Size = Vector3.new(0.5,2,2)
		ree.TopSurface = Enum.SurfaceType.Smooth
		ree.BottomSurface = Enum.SurfaceType.Smooth
		ree.Transparency = 0.8
		ree.Material =Enum.Material.Neon
		ree.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(90))
		ree:BreakJoints()
		local reee = Instance.new("Sound", ree)
		reee.SoundId = "rbxassetid://138677306"
		reee.PlaybackSpeed = 0.7
		reee:Play()
		local corru = coroutine.wrap(function()
			for i=1, 30 do
				ree.Color = Color3.fromRGB(255, 0, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 255, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 0, 255)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
			end
		end)
		corru()
		local heck = Instance.new('BodyVelocity',ree)
		heck.Velocity = ree.CFrame.rightVector*50
		heck.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local coru=coroutine.wrap(function()
			for i=1,80 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,0.25,0.25)
				ree.CFrame = cf
				wait()
			end
			for i=1,4 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,0.01,0.01)
				ree.CFrame = cf
				ree.Transparency = ree.Transparency + 0.1
				wait()
			end
			ree:Destroy()
		end)
		coru()
		ree.Touched:connect(function(hit)
			if hit.Parent and hit.Parent ~= char and hit.Parent:FindFirstChildOfClass('Humanoid') then
				for i,v in pairs(hit.Parent:GetDescendants()) do
					if v:IsA('BasePart') then
						v.Transparency = ree.Transparency
						v.Color = ree.Color
					end
				end
				hit.Parent:FindFirstChildOfClass('Humanoid').Health = 100
				ragdollpart(hit.Parent,"Head")
			end
		end)
		wait(0.5)
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.1)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)
	
		rweld:Destroy()
		tweld:Destroy()
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
	end)
	working = false
end

function REMOVETHETHOTS()
	working = true
	pcall(function()
		local thott = Instance.new("Sound", char)
		thott.SoundId = "rbxassetid://949916584"
		thott.Volume = 1
		thott.TimePosition = 0.5
		thott.PlaybackSpeed = 1
		thott.EmitterSize = player.CameraMaxZoomDistance+1
		thott.MaxDistance = player.CameraMaxZoomDistance+1
		thott:Play()
		
		local rweld = Instance.new("Weld", char["Right Arm"])
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)),0.1)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)), 0.1)
		
		wait(0.75)
		local thote = Instance.new("Sound", char.Head)
		thote.SoundId = "rbxassetid://358498516"
		thote.Volume = 1
		thote.PlaybackSpeed = 0.75
		thote:Play()
		
				
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)),0.04)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.04)
		wait(0.04)
		local ree = Instance.new('Part',workspace)
		ree.Shape = Enum.PartType.Cylinder
		ree.CanCollide = false
		ree.Anchored = false
		ree.Size = Vector3.new(0.5,2,2)
		ree.TopSurface = Enum.SurfaceType.Smooth
		ree.BottomSurface = Enum.SurfaceType.Smooth
		ree.Transparency = 0.8
		ree.Material =Enum.Material.Neon
		ree.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(90))
		ree:BreakJoints()
		local reee = Instance.new("Sound", ree)
		reee.SoundId = "rbxassetid://138677306"
		reee:Play()
		local corru = coroutine.wrap(function()
			for i=1, 15 do
				ree.Color = Color3.fromRGB(255, 0, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 255, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 0, 255)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
			end
		end)
		corru()
		local heck = Instance.new('BodyVelocity',ree)
		heck.Velocity = ree.CFrame.rightVector*50
		heck.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local coru=coroutine.wrap(function()
			for i=1,40 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,1,1)
				ree.CFrame = cf
				wait()
			end
			for i=1,4 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,0.5,0.5)
				ree.CFrame = cf
				ree.Transparency = ree.Transparency + 0.1
				wait()
			end
			ree:Destroy()
		end)
		coru()
		ree.Touched:connect(function(hit)
			if hit.Parent and hit.Parent ~= char and hit.Parent:FindFirstChildOfClass('Humanoid') then
				for i,v in pairs(hit.Parent:GetDescendants()) do
					if v:IsA('BasePart') then
						v.Transparency = ree.Transparency
						v.Color = ree.Color
					end
				end
				hit.Parent:FindFirstChildOfClass('Humanoid').Health = 100
				ragdollpart(hit.Parent,"Head")
			end
		end)
		
		local ree = Instance.new('Part',workspace)
		ree.Shape = Enum.PartType.Cylinder
		ree.CanCollide = false
		ree.Anchored = false
		ree.Size = Vector3.new(0.5,2,2)
		ree.TopSurface = Enum.SurfaceType.Smooth
		ree.BottomSurface = Enum.SurfaceType.Smooth
		ree.Transparency = 0.8
		ree.Material =Enum.Material.Neon
		ree.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(115))
		ree:BreakJoints()
		local reee = Instance.new("Sound", ree)
		reee.SoundId = "rbxassetid://138677306"
		reee:Play()
		local corru = coroutine.wrap(function()
			for i=1, 15 do
				ree.Color = Color3.fromRGB(255, 0, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 255, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 0, 255)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
			end
		end)
		corru()
		local heck = Instance.new('BodyVelocity',ree)
		heck.Velocity = ree.CFrame.rightVector*50
		heck.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local coru=coroutine.wrap(function()
			for i=1,40 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,1,1)
				ree.CFrame = cf
				wait()
			end
			for i=1,4 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,0.5,0.5)
				ree.CFrame = cf
				ree.Transparency = ree.Transparency + 0.1
				wait()
			end
			ree:Destroy()
		end)
		coru()
		ree.Touched:connect(function(hit)
			if hit.Parent and hit.Parent ~= char and hit.Parent:FindFirstChildOfClass('Humanoid') then
				for i,v in pairs(hit.Parent:GetDescendants()) do
					if v:IsA('BasePart') then
						v.Transparency = ree.Transparency
						v.Color = ree.Color
					end
				end
				hit.Parent:FindFirstChildOfClass('Humanoid').Health = 100
				ragdollpart(hit.Parent,"Head")
			end
		end)
		
		local ree = Instance.new('Part',workspace)
		ree.Shape = Enum.PartType.Cylinder
		ree.CanCollide = false
		ree.Anchored = false
		ree.Size = Vector3.new(0.5,2,2)
		ree.TopSurface = Enum.SurfaceType.Smooth
		ree.BottomSurface = Enum.SurfaceType.Smooth
		ree.Transparency = 0.8
		ree.Material =Enum.Material.Neon
		ree.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(65))
		ree:BreakJoints()
		local reee = Instance.new("Sound", ree)
		reee.SoundId = "rbxassetid://138677306"
		reee:Play()
		local corru = coroutine.wrap(function()
			for i=1, 15 do
				ree.Color = Color3.fromRGB(255, 0, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 255, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 0, 255)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
			end
		end)
		corru()
		local heck = Instance.new('BodyVelocity',ree)
		heck.Velocity = ree.CFrame.rightVector*50
		heck.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local coru=coroutine.wrap(function()
			for i=1,40 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,1,1)
				ree.CFrame = cf
				wait()
			end
			for i=1,4 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,0.5,0.5)
				ree.CFrame = cf
				ree.Transparency = ree.Transparency + 0.1
				wait()
			end
			ree:Destroy()
		end)
		coru()
		ree.Touched:connect(function(hit)
			if hit.Parent and hit.Parent ~= char and hit.Parent:FindFirstChildOfClass('Humanoid') then
				for i,v in pairs(hit.Parent:GetDescendants()) do
					if v:IsA('BasePart') then
						v.Transparency = ree.Transparency
						v.Color = ree.Color
					end
				end
				hit.Parent:FindFirstChildOfClass('Humanoid').Health = 100
				ragdollpart(hit.Parent,"Head")
			end
		end)
		
		wait(0.5)
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.1)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)
	
		rweld:Destroy()
		tweld:Destroy()
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
	end)
	working = false
end

function begoneTHOUGHT()
	working = true
	pcall(function()
		local thott = Instance.new("Sound", char)
		thott.SoundId = "rbxassetid://949916584"
		thott.Volume = 1
		thott.TimePosition = 0.5
		thott.PlaybackSpeed = 1
		thott.EmitterSize = player.CameraMaxZoomDistance+1
		thott.MaxDistance = player.CameraMaxZoomDistance+1
		thott:Play()
		
		local rweld = Instance.new("Weld", char["Right Arm"])
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)),0.1)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)), 0.1)
		
		wait(0.75)
		local thote = Instance.new("Sound", char.Head)
		thote.SoundId = "rbxassetid://358498516"
		thote.Volume = 1
		thote:Play()
		
				
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)),0.04)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.04)
		wait(0.04)
		local ree = Instance.new('Part',workspace)
		ree.Shape = Enum.PartType.Cylinder
		ree.CanCollide = false
		ree.Anchored = false
		ree.Size = Vector3.new(0.5,2,2)
		ree.TopSurface = Enum.SurfaceType.Smooth
		ree.BottomSurface = Enum.SurfaceType.Smooth
		ree.Transparency = 0.8
		ree.Material =Enum.Material.Neon
		ree.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(90))
		ree:BreakJoints()
		local reee = Instance.new("Sound", ree)
		reee.SoundId = "rbxassetid://138677306"
		reee:Play()
		local corru = coroutine.wrap(function()
			for i=1, 15 do
				ree.Color = Color3.fromRGB(255, 0, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 255, 0)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
				ree.Color = Color3.fromRGB(0, 0, 255)
				ree.Anchored = true
				local robotnikk = ree:Clone()
				robotnikk.Parent = game.Workspace
				robotnikk.CFrame = ree.CFrame
				robotnikk.Anchored = true
				robotnikk.CanCollide = false
				game:GetService('Debris'):AddItem(robotnikk,2)
				ree.Anchored = false
				wait()
			end
		end)
		corru()
		local heck = Instance.new('BodyVelocity',ree)
		heck.Velocity = ree.CFrame.rightVector*50
		heck.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local coru=coroutine.wrap(function()
			for i=1,40 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,1,1)
				ree.CFrame = cf
				wait()
			end
			for i=1,4 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,0.5,0.5)
				ree.CFrame = cf
				ree.Transparency = ree.Transparency + 0.1
				wait()
			end
			ree:Destroy()
		end)
		coru()
		ree.Touched:connect(function(hit)
			if hit.Parent and hit.Parent ~= char and hit.Parent:FindFirstChildOfClass('Humanoid') then
				for i,v in pairs(hit.Parent:GetDescendants()) do
					if v:IsA('BasePart') then
						v.Transparency = ree.Transparency
						v.Color = ree.Color
					end
				end
				hit.Parent:FindFirstChildOfClass('Humanoid').Health = 100
				spawn(function()
				ragdollpart(hit.Parent,"Head")
				end)
			end
		end)
		wait(0.5)
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.1)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)
	
		rweld:Destroy()
		tweld:Destroy()
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
	end)
	working = false
end

function katanaswing()
	working = true
	pcall(function()
	local rweld = Instance.new("Weld", char["Right Arm"])
	local lweld = Instance.new("Weld", char["Left Arm"])
	local tweld = Instance.new("Weld", char.HumanoidRootPart)
	rweld.Part0 = char["Torso"]
	rweld.Part1 = char["Right Arm"]
	rweld.C0 = CFrame.new(1.5, 0, 0)
	lweld.Part0 = char.Torso
	lweld.Part1 = char["Left Arm"]
	lweld.C0 = CFrame.new(-1.5, 0, 0)
	tweld.Part0 = char.HumanoidRootPart
	tweld.Part1 = char.Torso
	
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(45), 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.35, 0.5, -1.2) * CFrame.Angles(0, math.rad(110), math.rad(90)),0.08)
	wait(0.2)
	local at1 = Instance.new("Attachment", handle)
	local at2 = Instance.new("Attachment", handle)
	at1.Visible = false
	at1.Position = Vector3.new(5, 0, 0)
	at2.Visible = false
	at2.Position = Vector3.new(1, 0, 0)
	
	local trail = Instance.new("Trail", handle)
	trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, trail.Parent.Color), ColorSequenceKeypoint.new(1, trail.Parent.Color)})
	trail.LightEmission = 0.25
	trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 1)})
	trail.Lifetime = 0.10
	trail.MinLength = 0.05
	trail.Attachment0 = at1
	trail.Attachment1 = at2
	
	swinging = true

	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-45), 0),0.04)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(90)),0.04)
	wait(0.2)
	swinging = false
	trail:Destroy()
	at1:Destroy()
	at2:Destroy()
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
	rweld:Destroy()
	lweld:Destroy()
	tweld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
		local clone = leftclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Left Arm"]
		clone.Parent = char.Torso
	end
	if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
		local clone = torsoclone:Clone()
		clone.Part0 = char.HumanoidRootPart
		clone.Part1 = char.Torso
		clone.Parent = char.HumanoidRootPart
	end
	end)
	working = false
end

function throw()
	working = true
	pcall(function()
		local rweld = char["Right Arm"]:FindFirstChild("Weld")
		local lweld = char["Left Arm"]:FindFirstChild("Weld")
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local throwsound = Instance.new("Sound", char.Head)
		throwsound.SoundId = "rbxassetid://711753382"
		throwsound.PlaybackSpeed = 0.75
		
		local cor = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-30), math.rad(15)),0.04)
		end)
		cor()
		cor2()
		grabweld:Remove()
		throwsound:Play()
		
		local throwvel = Instance.new("BodyThrust")
		throwvel.Force = Vector3.new(0, 3000, -2000)
		pcall(function()
			throwvel.Parent = grabbed.Torso
		end)
		pcall(function()
			throwvel.Parent = grabbed.UpperTorso
		end)

		lerp(lweld,lweld.C0,CFrame.new(-1.3, 0.7, -1) * CFrame.Angles(0, math.rad(-70), math.rad(-105)),0.04)
		wait(0.15)
		throwvel:Remove()
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		cor()
		cor2()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		local lolgrabbed = grabbed
		spawn(function()
			wait(2)
			unstun(lolgrabbed)
		end)
	end)
	grabbed = nil
	working = false
end

function whoosh(vroom)
	pcall(function()
		local sound = Instance.new('Sound',vroom)
		sound.SoundId = 'rbxassetid://608494468'
		sound.MaxDistance = 200
		sound.Volume = 1
		sound:Play()
	end)
	vroom.Parent = workspace
	vroom.Name = "Projectile"
	vroom.CFrame = CFrame.new(char.Head.CFrame.p,mouse.Hit.p)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
	vroom.Anchored = true
	vroom.Velocity = Vector3.new(0,0,0)
	vroom.RotVelocity = Vector3.new(0,0,0)
	vroom.Anchored = false
	game:GetService('Debris'):AddItem(vroom,10)
	local flyy = Instance.new('BodyVelocity',vroom)
	flyy.Velocity = vroom.CFrame.rightVector*200
	local touched = false
	for i,v in pairs(vroom:GetChildren()) do
		if v:IsA('BasePart') then
			v.Touched:connect(function(hit)
				local pos = vroom.CFrame
				if touched == false then
					if hit and hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent~= char then
						touched = true
						pcall(function()
							local sound = Instance.new('Sound',vroom)
							sound.SoundId = 'rbxassetid://220833967'
							sound.MaxDistance = 200
							sound.Volume = 1
							sound:Play()
						end)
						local before = hit.Anchored
						vroom.Anchored = true
						vroom.Velocity = Vector3.new(0,0,0)
						vroom.RotVelocity = Vector3.new(0,0,0)
						vroom.CFrame = vroom.CFrame-(vroom.CFrame.rightVector)
						hit.Anchored = true
						flyy:Destroy()
						pcall(function()
							local anchorpart = Instance.new('Part',workspace)
							anchorpart.Size = Vector3.new()
							anchorpart.CFrame = hit.CFrame
							anchorpart.CanCollide = false
							anchorpart.Transparency = 1
							anchorpart:BreakJoints()
							local attachment1 = Instance.new('Attachment',anchorpart)
							local attachment0 = Instance.new('Attachment')
							pcall(function()
								attachment0.Parent = hit
							end)
							if attachment0 and attachment1 then
								local constraint = Instance.new("HingeConstraint")
								constraint.Attachment0 = attachment0
								constraint.Attachment1 = attachment1
								constraint.LimitsEnabled = true
								constraint.UpperAngle = 0
								constraint.LowerAngle = 0
								pcall(function()
									constraint.Parent = hit
								end)
							end
							local weld = Instance.new('Weld',vroom)
							weld.Part0 = vroom
							weld.Part1 = anchorpart
							weld.C1 = hit.CFrame:toObjectSpace(vroom.CFrame)
							local ayybleed = Instance.new('Part',workspace)
							ayybleed.Size = Vector3.new(0.2,0.2,0.2)
							ayybleed.BrickColor = BrickColor.new('Maroon')
							ayybleed.Material = Enum.Material.SmoothPlastic
							ayybleed.Name = "ayybleed"
							ayybleed.CanCollide = false
							ayybleed.Transparency = 1
							ayybleed.CFrame = hit.CFrame
							ayybleed:BreakJoints()
							for i,v in pairs(vroom:GetChildren()) do
								if v.Name == "blade" and v.Size == Vector3.new(0.23, 1.19, 0.1) then
									v.Name = "REEEE"
								end
							end
							ayybleed.CFrame = vroom["REEEE"].CFrame*CFrame.Angles(math.rad(180),0,0)
							local weld2 = Instance.new('Weld',ayybleed)
							weld2.Part0 = anchorpart
							weld2.Part1 = ayybleed
							weld2.C1 = anchorpart.CFrame:toObjectSpace(ayybleed.CFrame)
							local bleedBLEED= coroutine.wrap(function()
								print('asdf')
								bleed(ayybleed)
							end)
							bleedBLEED()
							if hit.Name ~= "Head" and hit.Name ~= "UpperTorso" and hit.Name ~= "Torso" and hit.Name ~= "LowerTorso" then
								game:GetService('Debris'):AddItem(ayybleed,7.5)
							end
						end)
						hit.Anchored = before
						vroom.Anchored = false
						vroom.CanCollide = true
						pcall(function()
							vroom:FindFirstChildOfClass('Trail'):Destroy()
						end)
						if hit.Name == "Head" or hit.Name == "UpperTorso" or hit.Name == "Torso" or hit.Name == "LowerTorso" or hit.Name == "HumanoidRootPart" then
						stun(hit.Parent)
						pcall(function()
							ragdollpart(hit.Parent,"Left Arm")
							ragdollpart(hit.Parent,"Left Leg")
							ragdollpart(hit.Parent,"Right Arm")
							ragdollpart(hit.Parent,"Right Leg")
						end)
						pcall(function()
							ragdollpart(hit.Parent,"LeftUpperLeg")
							ragdollpart(hit.Parent,"RightUpperLeg")
							ragdollpart(hit.Parent,"LeftUpperArm")
							ragdollpart(hit.Parent,"RightUpperArm")
						end)
						spawn(function()
							if hit.Name ~= "Head" then
								wait(5)
							end
							ragdollpart(hit.Parent,"Head")
						end)
						else
							pcall(function()
							ragdollpart(hit.Parent,hit.Name)
							end)
						end
					elseif hit and hit.CanCollide == true and hit.Parent and hit.Parent ~= char then
						local before = hit.Anchored
						vroom.Anchored = true
						hit.Anchored = true
						local touchingit = false
						for _,a in pairs(vroom:GetChildren()) do 
							if a:IsA('BasePart') and string.find(a.Name,'thicc cap') == nil then
								for _,c in pairs(a:GetTouchingParts()) do
									if c == hit then
										touchingit = true
									end
								end
							end
						end
						for i,v in pairs(vroom:GetChildren()) do
							if v:IsA('BasePart') then
								v.CanCollide = true
							end
						end
						flyy:Destroy()
						touched = true
						if touchingit then
							pcall(function()
								
								local weld = Instance.new('Weld',hit)
								weld.Part0 = hit
								weld.Part1 = vroom
								weld.C0 = hit.CFrame:toObjectSpace(vroom.CFrame)
							end)
						end
						pcall(function()
						vroom:FindFirstChildOfClass('Trail'):Destroy()
						end)
						hit.Anchored = before
						vroom.Anchored = false
					end
				end
			end)
		end
	end
end
function whooshboom(vroom)
	pcall(function()
		local sound = Instance.new('Sound',vroom)
		sound.SoundId = 'rbxassetid://608494468'
		sound.MaxDistance = 200
		sound.Volume = 1
		sound:Play()
	end)
	vroom.Parent = workspace
	vroom.Name = "Projectile"
	vroom.CFrame = CFrame.new(char.Head.CFrame.p,mouse.Hit.p)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
	vroom.Anchored = true
	vroom.Velocity = Vector3.new(0,0,0)
	vroom.RotVelocity = Vector3.new(0,0,0)
	vroom.Anchored = false
	game:GetService('Debris'):AddItem(vroom,60)
	local flyy = Instance.new('BodyVelocity',vroom)
	flyy.Velocity = vroom.CFrame.rightVector*200
	local touched = false
	for i,v in pairs(vroom:GetChildren()) do
		if v:IsA('BasePart') then
			v.Touched:connect(function(hit)
				local pos = vroom.CFrame
				if touched == false then
					if hit and hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent~= char then
						touched = true
						pcall(function()
							local sound = Instance.new('Sound',vroom)
							sound.SoundId = 'rbxassetid://220833967'
							sound.MaxDistance = 200
							sound.Volume = 1
							sound:Play()
						end)
						local before = hit.Anchored
						vroom.Anchored = true
						vroom.Velocity = Vector3.new(0,0,0)
						vroom.RotVelocity = Vector3.new(0,0,0)
						vroom.CFrame = vroom.CFrame-(vroom.CFrame.rightVector)
						hit.Anchored = true
						flyy:Destroy()
						pcall(function()
							local weld = Instance.new('Weld',hit)
							weld.Part0 = hit
							weld.Part1 = vroom
							weld.C0 = hit.CFrame:toObjectSpace(vroom.CFrame)
						end)
						hit.Anchored = before
						vroom.Anchored = false
						vroom.CanCollide = true
						pcall(function()
							vroom:FindFirstChildOfClass('Trail'):Destroy()
						end)
						for i,v in pairs(vroom:GetChildren()) do
							if v:IsA('BasePart') then
								v.CanCollide = true
							end
						end
						local beep = Instance.new('Sound',vroom)
						beep.SoundId = 'rbxassetid://161164363'
						beep.MaxDistance = 75
						beep.EmitterSize = 25
						beep.Volume = .5
						for i=1,10 do
							beep:Play()
							for _,v in pairs(vroom:GetChildren()) do
								spawn(function()
									if v.Name == "blade" then
										local oldcolor = v.Color
										local oldmat = v.Material
										v.Color = Color3.new(1,0,0)
										v.Material = "Neon"
										wait(1/i)
										v.Color = oldcolor
										v.Material = oldmat
									end
								end)
							end
							wait(2/i)
						end
						local sound = Instance.new('Sound',vroom)
						sound.SoundId = 'rbxassetid://440145223'
						sound.MaxDistance = 200
						sound.EmitterSize = 50
						sound:Play()
						local explosion = Instance.new('Explosion',workspace)
						explosion.Position = vroom.Position
						explosion.BlastRadius = 10
						explosion.DestroyJointRadiusPercent = 0
						explosion.ExplosionType = Enum.ExplosionType.NoCraters
						explosion.Hit:connect(function(part)
							if part.Parent then
								if part.Parent:FindFirstChildOfClass('Humanoid') and part.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
									ragdollpart(part.Parent,part.Name)
								end
							end
						end)
						vroom:Destroy()
					elseif hit and hit.CanCollide == true and hit.Parent and hit.Parent ~= char then
						touched = true
						local before = hit.Anchored
						vroom.Anchored = true
						vroom.Velocity = Vector3.new(0,0,0)
						vroom.RotVelocity = Vector3.new(0,0,0)
						hit.Anchored = true
						flyy:Destroy()
						vroom.CFrame = vroom.CFrame-vroom.CFrame.rightVector
						pcall(function()
							local weld = Instance.new('Weld',hit)
							weld.Part0 = hit
							weld.Part1 = vroom
							weld.C0 = hit.CFrame:toObjectSpace(vroom.CFrame)
						end)
						pcall(function()
						vroom:FindFirstChildOfClass('Trail'):Destroy()
						end)
						hit.Anchored = before
						vroom.Anchored = false
						local beep = Instance.new('Sound',vroom)
						beep.SoundId = 'rbxassetid://161164363'
						beep.MaxDistance = 75
						beep.EmitterSize = 25
						beep.Volume = .5
						for i=1,10 do
							beep:Play()
							for _,v in pairs(vroom:GetChildren()) do
								spawn(function()
									if v.Name == "blade" then
										local oldcolor = v.Color
										local oldmat = v.Material
										v.Color = Color3.new(1,0,0)
										v.Material = "Neon"
										wait(1/i)
										v.Color = oldcolor
										v.Material = oldmat
									end
								end)
							end
							wait(2/i)
						end
						local sound = Instance.new('Sound',vroom)
						sound.SoundId = 'rbxassetid://440145223'
						sound.MaxDistance = 200
						sound.EmitterSize = 50
						sound:Play()
						local explosion = Instance.new('Explosion',workspace)
						explosion.Position = vroom.Position
						explosion.BlastRadius = 10
						explosion.DestroyJointRadiusPercent = 0
						explosion.ExplosionType = Enum.ExplosionType.NoCraters
						explosion.Hit:connect(function(part)
							if part.Parent then
								if part.Parent:FindFirstChildOfClass('Humanoid') and part.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
									ragdollpart(part.Parent,part.Name)
								end
							end
						end)
						vroom:Destroy()
					end
				end
			end)
		end
	end
end

function stabocrabo()
	working = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		wait()
			
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 1, 0.25) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(150)),0.1)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-45), math.rad(0)),0.1)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.1)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-45)),0.1)
		
		wait(0.2)
		stabb = true
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 1, -0.5) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(150)),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(25), math.rad(0)),0.04)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.04)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0.5, 0.5) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-45)),0.04)
		
		if stabb == true then
			stabb = false
			
			trail:Remove()
			at1:Remove()
			at2:Remove()
			
			local cor = coroutine.wrap(function()
				lerp(rweld,rweld.C0,CFrame.new(1.75, 0, -0.3) * CFrame.Angles(math.rad(-130), math.rad(0), math.rad(150)),0.05)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(40), math.rad(0)),0.05)
			end)
			local cor3 = coroutine.wrap(function()
				lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.05)
			end)
			cor()
			cor2()
			cor3()
			lerp(lweld,lweld.C0,CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(-0), math.rad(0), math.rad(-30)),0.05)
			
			local cor = coroutine.wrap(function()
				lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.15)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.1)
			end)
			local cor3 = coroutine.wrap(function()
				lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.1)
			end)
			cor()
			cor2()
			cor3()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-0), math.rad(0), math.rad(0)),0.07)
			wait(0.1)
		elseif stabb == false then
			local ohshit = coroutine.wrap(function()
				working = false
				continuestabbing = true
				wait(0.5)
				working = true
				continuestabbing = false
			end)
			char.Humanoid.WalkSpeed = 0
			char.Humanoid.JumpPower = 0
			ohshit()
			wait(0.4)
			if continuestab == true then
				local cor = coroutine.wrap(function()
					lerp(rweld,rweld.C0,CFrame.new(1.75, 1, 0.25) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(150)),0.05)
				end)
				local cor2 = coroutine.wrap(function()
					lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-45), math.rad(0)),0.05)
				end)
				cor()
				cor2()
				lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.05)
				wait(0.2)
				for i = 1, 3 do
					local cor = coroutine.wrap(function()
						lerp(rweld,rweld.C0,CFrame.new(0.75, 2, 0.25) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(200)),0.05)
					end)
					local cor2 = coroutine.wrap(function()
						lerp(tweld,tweld.C0,CFrame.new(0, -0.4, -0.7) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),0.05)
					end)
					local cor3 = coroutine.wrap(function()
						lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.05)
					end)
					cor()
					cor2()
					cor3()
					lerp(lweld,lweld.C0,CFrame.new(-0.75, 2, 0.25) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-200)),0.05)
					wait(0.35)
					stabb = true
			
					local cor = coroutine.wrap(function()
						lerp(rweld,rweld.C0,CFrame.new(0.75, 0.75, -1.5) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(200)),0.04)
					end)
					local cor2 = coroutine.wrap(function()
						lerp(tweld,tweld.C0,CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)),0.04)
					end)
					local cor3 = coroutine.wrap(function()
						lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.04)
					end)
					cor()
					cor2()
					cor3()
					lerp(lweld,lweld.C0,CFrame.new(-0.75, 0.75, -1.5) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(-200)),0.04)
				end
				wait(0.3)
				local cor = coroutine.wrap(function()
					lerp(rweld,rweld.C0,CFrame.new(1.5, 1, 0.25) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(140)),0.05)
				end)
				local cor2 = coroutine.wrap(function()
					lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),0.05)
				end)
				local cor3 = coroutine.wrap(function()
					lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.05)
				end)
				cor()
				cor2()
				cor3()
				lerp(lweld,lweld.C0,CFrame.new(-0.75, 2, 0.25) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-200)),0.05)
				wait()
				continuestab = false
			else
				local cor = coroutine.wrap(function()
					lerp(rweld,rweld.C0,CFrame.new(1.75, 1, 0.25) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(150)),0.05)
				end)
				local cor2 = coroutine.wrap(function()
					lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-45), math.rad(0)),0.05)
				end)
				cor()
				cor2()
				lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.05)
				wait(0.2)
			end
		end
		
		trail:Remove()
		at1:Remove()
		at2:Remove()
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.15)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.1)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.1)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-0), math.rad(0), math.rad(0)),0.07)
		char.Humanoid.WalkSpeed = 16
		char.Humanoid.JumpPower = 50
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
	end)
	working = false
end

function fling()
	working = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(45)),0.07)
		end)
		cor()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, -0.5) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.07)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 1, 0.25) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(150)),0.07)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-45), math.rad(0)),0.07)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90),math.rad(90), 0),0.12)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-45)),0.07)
		wait(0.2)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 1, 0.25) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(170)),0.03)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.03)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1, 0, -0.45) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(45)),0.03)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(90)),0.03)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(45), math.rad(0)),0.01)
		end)
		cor()
		cor2()
		whoosh(handle:Clone())
		for i, v in pairs(handle:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
			end
		end
		handle.Transparency = 1
		trail:Remove()
		at1:Remove()
		at2:Remove()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.01)
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(0.5, 0.4, -1) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(75)),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(55), math.rad(0)),0.04)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.04)
		wait(0.2)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.07)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
		
		for i, v in pairs(handle:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
			end
		end
		handle.Transparency = 0
		hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
	end)
	working = false
end
function flingboom()
	working = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(45)),0.07)
		end)
		cor()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, -0.5) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.07)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 1, 0.25) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(150)),0.07)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-45), math.rad(0)),0.07)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90),math.rad(90), 0),0.12)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-45)),0.07)
		wait(0.2)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 1, 0.25) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(170)),0.03)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.03)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1, 0, -0.45) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(45)),0.03)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(90)),0.03)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(45), math.rad(0)),0.01)
		end)
		cor()
		cor2()
		whooshboom(handle:Clone())
		for i, v in pairs(handle:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
			end
		end
		handle.Transparency = 1
		trail:Remove()
		at1:Remove()
		at2:Remove()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.01)
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(0.5, 0.4, -1) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(75)),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(55), math.rad(0)),0.04)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.04)
		wait(0.2)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.07)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
		
		for i, v in pairs(handle:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
			end
		end
		handle.Transparency = 0
		hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
	end)
	working = false
end

function kidnapnoob()
	working = true
	pcall(function()
		local rweld = char["Right Arm"]:FindFirstChild("Weld")
		local lweld = char["Left Arm"]:FindFirstChild("Weld")
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local throwsound = Instance.new("Sound", char.Head)
		throwsound.SoundId = "rbxassetid://711753382"
		throwsound.PlaybackSpeed = 0.75
		
		pitchun = math.random(9, 12)/10
		pitchdos = math.random(9, 13)/10
		
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		local coru=coroutine.wrap(function()
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(-90), 0), 0.07)
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.09)
		end)
		coru()
		local cor = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.04)
		end)
		cor()
		pcall(function()
			grabweld:Remove()
		end)
		throwsound:Play()
		
		trail:Remove()
		at1:Remove()
		at2:Remove()
		local throwve2 = Instance.new("BodyThrust")
		throwve2.Force = Vector3.new(0, 3000, -1000)
		pcall(function()
			throwve2.Parent = grabbed.Torso
		end)
		pcall(function()
			throwve2.Parent = grabbed.UpperTorso
		end)
		lerp(lweld,lweld.C0,CFrame.new(-1.3, 0.7, -1) * CFrame.Angles(0, math.rad(-70), math.rad(-105)),0.04)
		wait(0.15)
		throwve2:Destroy()
		local oldgrabbed = grabbed
		spawn(function()
			oldgrabbed:SetPrimaryPartCFrame(kidnaproom.SpawnHere.CFrame)
			unstun(oldgrabbed)
			oldgrabbed:FindFirstChildOfClass('Humanoid').Name = "whoops it slipped"
			pcall(function()
				oldgrabbed:FindFirstChildOfClass('Tool'):Destroy()
			end)
			pcall(function()
				for i,v in pairs(game:GetService('Players'):GetPlayerFromCharacter(oldgrabbed).Backpack:GetChildren()) do
					if v:IsA('Tool') then
						v:Destroy()
					end
				end
			end)
		end)
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		cor()
		cor2()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		throwsound:Remove()
	end)
	pcall(function()
		grabweld:Remove()
	end)
	grabbed = nil
	working = false
end

function kill()
	working = true
	pcall(function()
		local rweld = char["Right Arm"]:FindFirstChild("Weld")
		local lweld = char["Left Arm"]:FindFirstChild("Weld")
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local killsound = Instance.new("Sound", grabbed.Head)
		killsound.SoundId = "rbxassetid://150315649"
		killsound.PlaybackSpeed = 1.2
		local killsoundac = Instance.new("Sound", grabbed.Head)
		killsoundac.SoundId = "rbxassetid://162194585"
		killsoundac.PlaybackSpeed = 1
		killsoundac.Volume = 1
		local throwsound = Instance.new("Sound", char.Head)
		throwsound.SoundId = "rbxassetid://711753382"
		throwsound.PlaybackSpeed = 0.75
		local chokesound = Instance.new("Sound", grabbed.Head)
		chokesound.SoundId = "rbxassetid://418658161"
		chokesound.TimePosition = 3
		chokesound.PlaybackSpeed = 1
		local bleedsound = Instance.new("Sound", grabbed.Head)
		bleedsound.SoundId = "rbxassetid://244502094"
		bleedsound.PlaybackSpeed = 1.5
		bleedsound.Volume = 1
		
		pitchun = math.random(9, 12)/10
		pitchdos = math.random(9, 13)/10
		
		killsound.PlaybackSpeed = pitchun
		killsoundac.PlaybackSpeed = pitchdos
		chokesound.PlaybackSpeed = pitchun
		
		pcall(function()
			
		end)
		
		lerp(rweld,rweld.C0,CFrame.new(0.5, 0.7, -0.70) * CFrame.Angles(0, math.rad(100), math.rad(105)),0.1)
		wait(0.2)
		lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(90)),0.04)
		
		killsound:Play()
		killsoundac:Play()
		chokesound:Play()
		bleedsound:Play()
		
		local ayybleed = Instance.new('Part',grabbed)
		ayybleed.Size = Vector3.new(0.2,0.2,0.2)
		ayybleed.BrickColor = BrickColor.new('Maroon')
		ayybleed.Material = Enum.Material.SmoothPlastic
		ayybleed.Name = "ayybleed"
		ayybleed.CanCollide = false
		ayybleed.Transparency = 0.5
		ayybleed.CFrame = grabbed.Head.CFrame
		ayybleed:BreakJoints()
		local attachment1 = Instance.new('Attachment',ayybleed)
		attachment1.Position = Vector3.new(-0.55,0,0)
		attachment1.Orientation = Vector3.new(90, 0, -90)
		local attachment0 = Instance.new('Attachment')
		pcall(function()
			attachment0.Parent = grabbed.Torso
		end)
		pcall(function()
			attachment0.Parent = grabbed.UpperTorso
		end)
		if attachment0 and attachment1 then
			local constraint = Instance.new("HingeConstraint")
			constraint.Attachment0 = attachment0
			constraint.Attachment1 = attachment1
			constraint.LimitsEnabled = true
			constraint.UpperAngle = 0
			constraint.LowerAngle = 0
			pcall(function()
				constraint.Parent = grabbed.Torso
			end)
			pcall(function()
				constraint.Parent = grabbed.UpperTorso
			end)
		end
		local bleedBLEED= coroutine.wrap(function()
			bleed(ayybleed)
		end)
		bleedBLEED()
		
		wait(0.2)
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-40), math.rad(15)),0.08)
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-30), math.rad(15)),0.1)
		local coru=coroutine.wrap(function()
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(-90), 0), 0.07)
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.09)
		end)
		coru()
		local cor = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.04)
		end)
		cor()
		pcall(function()
			grabweld:Remove()
		end)
		throwsound:Play()
		
		local throwvel = Instance.new("BodyThrust")
		throwvel.Force = Vector3.new(0, 3000, -1000)
		pcall(function()
			throwvel.Parent = grabbed.Torso
		end)
		pcall(function()
			throwvel.Parent = grabbed.UpperTorso
		end)
		
		trail:Remove()
		at1:Remove()
		at2:Remove()
		lerp(lweld,lweld.C0,CFrame.new(-1.3, 0.7, -1) * CFrame.Angles(0, math.rad(-70), math.rad(-105)),0.04)
		pcall(function()
			ragdollpart(grabbed,"Left Arm")
			ragdollpart(grabbed,"Left Leg")
			ragdollpart(grabbed,"Right Arm")
			ragdollpart(grabbed,"Right Leg")
		end)
		pcall(function()
			ragdollpart(grabbed,"LeftUpperLeg")
			ragdollpart(grabbed,"RightUpperLeg")
			ragdollpart(grabbed,"LeftUpperArm")
			ragdollpart(grabbed,"RightUpperArm")
		end)
		wait(0.15)
		throwvel:Remove()
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		cor()
		cor2()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		local coru2=coroutine.wrap(function()
			local whyy = grabbed
		local continue = true
		local repeats = 0
		while continue == true do
			local ree = pcall(function()
				if repeats < 20 then
					whyy:FindFirstChildOfClass('Humanoid').Health = whyy:FindFirstChildOfClass('Humanoid').Health-4.9
					repeats = repeats+1
					if whyy:FindFirstChildOfClass('Humanoid').Health <= 0 then
						continue = false
					end
				else
					continue = false
				end
			end)
			if ree == false then
				continue = false
			end
			if continue == true then
				wait(0.2)
			end
		end
		ragdollpart(whyy,"Head")
		end)
		coru2()
		throwsound:Remove()
		killsound:Remove()
	end)
	pcall(function()
		grabweld:Remove()
	end)
	grabbed = nil
	working = false
end
function paralyze()
	working = true
	pcall(function()
		local rweld = char["Right Arm"]:FindFirstChild("Weld")
		local lweld = char["Left Arm"]:FindFirstChild("Weld")
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local killsound = Instance.new("Sound", grabbed.Head)
		killsound.SoundId = "rbxassetid://150315649"
		killsound.PlaybackSpeed = 1.2
		local killsoundac = Instance.new("Sound", grabbed.Head)
		killsoundac.SoundId = "rbxassetid://162194585"
		killsoundac.PlaybackSpeed = 1
		killsoundac.Volume = 1
		local throwsound = Instance.new("Sound", char.Head)
		throwsound.SoundId = "rbxassetid://711753382"
		throwsound.PlaybackSpeed = 0.75
		local chokesound = Instance.new("Sound", grabbed.Head)
		chokesound.SoundId = "rbxassetid://418658161"
		chokesound.TimePosition = 3
		chokesound.PlaybackSpeed = 1
		local bleedsound = Instance.new("Sound", grabbed.Head)
		bleedsound.SoundId = "rbxassetid://244502094"
		bleedsound.PlaybackSpeed = 1.5
		bleedsound.Volume = 1
		
		pitchun = math.random(9, 12)/10
		pitchdos = math.random(9, 13)/10
		
		killsound.PlaybackSpeed = pitchun
		killsoundac.PlaybackSpeed = pitchdos
		chokesound.PlaybackSpeed = pitchun
		
		pcall(function()
		end)
		
		lerp(rweld,rweld.C0,CFrame.new(0.5, 0.7, -0.70) * CFrame.Angles(0, math.rad(100), math.rad(105)),0.1)
		wait(0.2)
		lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(90)),0.04)
		
		killsound:Play()
		killsoundac:Play()
		chokesound:Play()
		bleedsound:Play()
		
		local ayybleed = Instance.new('Part',grabbed)
		ayybleed.Size = Vector3.new(0.2,0.2,0.2)
		ayybleed.BrickColor = BrickColor.new('Maroon')
		ayybleed.Material = Enum.Material.SmoothPlastic
		ayybleed.Name = "ayybleed"
		ayybleed.CanCollide = false
		ayybleed.Transparency = 0.5
		ayybleed.CFrame = grabbed.Head.CFrame
		ayybleed:BreakJoints()
		local attachment1 = Instance.new('Attachment',ayybleed)
		attachment1.Position = Vector3.new(-0.55,0,0)
		attachment1.Orientation = Vector3.new(90, 0, -90)
		local attachment0 = Instance.new('Attachment')
		pcall(function()
			attachment0.Parent = grabbed.Torso
		end)
		pcall(function()
			attachment0.Parent = grabbed.UpperTorso
		end)
		if attachment0 and attachment1 then
			local constraint = Instance.new("HingeConstraint")
			constraint.Attachment0 = attachment0
			constraint.Attachment1 = attachment1
			constraint.LimitsEnabled = true
			constraint.UpperAngle = 0
			constraint.LowerAngle = 0
			pcall(function()
				constraint.Parent = grabbed.Torso
			end)
			pcall(function()
				constraint.Parent = grabbed.UpperTorso
			end)
		end
		local bleedBLEED= coroutine.wrap(function()
			bleed(ayybleed)
		end)
		bleedBLEED()
		
		wait(0.2)
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-40), math.rad(15)),0.08)
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-30), math.rad(15)),0.1)
		local coru=coroutine.wrap(function()
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(-90), 0), 0.07)
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.09)
		end)
		coru()
		local cor = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.04)
		end)
		cor()
		grabweld:Remove()
		throwsound:Play()
		
		local throwvel = Instance.new("BodyThrust")
		throwvel.Force = Vector3.new(0, 3000, -1000)
		pcall(function()
			throwvel.Parent = grabbed.Torso
		end)
		pcall(function()
			throwvel.Parent = grabbed.UpperTorso
		end)
		
		trail:Remove()
		at1:Remove()
		at2:Remove()
		lerp(lweld,lweld.C0,CFrame.new(-1.3, 0.7, -1) * CFrame.Angles(0, math.rad(-70), math.rad(-105)),0.04)
		pcall(function()
			ragdollpart(grabbed,"Left Arm")
			ragdollpart(grabbed,"Left Leg")
			ragdollpart(grabbed,"Right Arm")
			ragdollpart(grabbed,"Right Leg")
		end)
		pcall(function()
			ragdollpart(grabbed,"LeftUpperLeg")
			ragdollpart(grabbed,"RightUpperLeg")
			ragdollpart(grabbed,"LeftUpperArm")
			ragdollpart(grabbed,"RightUpperArm")
		end)
		wait(0.15)
		throwvel:Remove()
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		cor()
		cor2()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		throwsound:Remove()
		killsound:Remove()
	end)
	grabbed = nil
	working = false
end

function release()
	working = true
	pcall(function()
		unstun(grabbed)
		grabbed = nil
		grabweld:Destroy()
		removewelds(char["Right Arm"])
		removewelds(char["Left Arm"])
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1, 0.7, -0.75) * CFrame.Angles(0, math.rad(95), math.rad(105))
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.25, 0.7, -0.75) * CFrame.Angles(0, math.rad(-140), math.rad(-105))
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.08)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
		lweld:Remove()
		rweld:Remove()
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
	end)
	working = false
end

function grab()
	working = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		local spinnyshit = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(-90), 0), 0.07)
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(90), 0), 0.07)
		end)
		spinnyshit()
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(90)),0.08)
		end)
		cor()
		lerp(lweld,lweld.C0,CFrame.new(-2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(-90)),0.08)
		wait(0.15)
		grabbing = true
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1, 0.7, -0.75) * CFrame.Angles(0, math.rad(95), math.rad(105)),0.08)
		end)
		cor()
		lerp(lweld,lweld.C0,CFrame.new(-1.25, 0.7, -0.75) * CFrame.Angles(0, math.rad(-140), math.rad(-105)),0.08)
		at1:Remove()
		at2:Remove()
		trail:Remove()
		wait(0.3)
		grabbing = false
		
		if grabbed == nil then
			local cor = coroutine.wrap(function()
				lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.08)
			end)
			cor()
			cor2()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
			lweld:Remove()
			rweld:Remove()
			if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
				local clone = leftclone:Clone()
				clone.Part0 = char.Torso
				clone.Part1 = char["Left Arm"]
				clone.Parent = char.Torso
			end
			if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
				local clone = rightclone:Clone()
				clone.Part0 = char.Torso
				clone.Part1 = char["Right Arm"]
				clone.Parent = char.Torso
			end
		end
	end)
	working = false
end

function hellisreal()
	working = true
	pcall(function()
		s1 = Instance.new("Sound", char.Torso)
		s1.SoundId = "rbxassetid://715673747"
		s1.TimePosition = 0.2
		s1.PlaybackSpeed = 0.5
		s1.Volume = 0.75
		s1:Play()
		
		s2 = Instance.new("Sound", char.Torso)
		s2.SoundId = "rbxassetid://155971697"
		s2.TimePosition = 0.2
		s2.PlaybackSpeed = 0.75
		s2.Volume = 0.75
		s2:Play()
		
		demon = Instance.new("Sound", char.Torso)
		demon.SoundId = "rbxassetid://1534314061"
		demon.TimePosition = 0
		demon.PlaybackSpeed = 1
		demon.Volume = 2
		demon:Play()
		
		s3 = Instance.new("Sound", char.Torso)
		s3.SoundId = "rbxassetid://356551938"
		s3.TimePosition = 0.455
		s3.PlaybackSpeed = 0.5
		s3.Volume = 0.75
		s3:Play()
		
		local bleedsound = Instance.new("Sound", char.Torso)
		bleedsound.SoundId = "rbxassetid://244502094"
		bleedsound.PlaybackSpeed = 0.75
		bleedsound.Volume = 1
		bleedsound:Play()
		
		char.Humanoid.WalkSpeed = 7
		char.Humanoid.JumpPower = 2
		for i, v in pairs(char:GetChildren()) do
			if v:IsA("Part") then
				v.Material = "Pebble"
			elseif v:IsA("Accessory") then
				v:Remove()
			elseif v:IsA("Shirt") then
				v:Remove()
			elseif v:IsA("Pants") then
				v:Remove()
			elseif v:IsA('CharacterMesh') then
				v:Remove()
			end
		end
		
		rp = char.HumanoidRootPart.RootJoint
		lh = char.Torso["Left Hip"]
		ls = char.Torso["Left Shoulder"]
		rh = char.Torso["Right Hip"]
		rs = char.Torso["Right Shoulder"]
		n1 = char.Torso.Neck:Clone()
		
		char.Head.Mesh:Remove()
		char.Head.face.Texture = "rbxassetid://481247690"
		
		char.Head.Size = Vector3.new(1.25, 1, 1)
		
		n = n1:Clone()
		n.Parent = char.Torso
		n.Part0 = char.Torso
		n.Part1 = char.Head
		n1:Remove()
		
		print(rp.C0)
		n.C0 = CFrame.new(0, 0, 0)
		lh.C0 = CFrame.new(0, 0, 0)
		rh.C0 = CFrame.new(0, 0, 0)
		ls.C0 = CFrame.new(0, 0, 0)
		rs.C0 = CFrame.new(0, 0, 0)
		rp.C0 = CFrame.new(0, -3, 0)
		local bleddd = coroutine.wrap(function()
			bleed(char.Torso)
		end)
		bleddd()
		char.Humanoid.Jump = true
		wait(2)
		
		for i = 0, 1, 0.001 do
			n.C0 = n.C0:lerp(CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), i)
			ls.C0 = ls.C0:lerp(CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0), i)
			rs.C0 = rs.C0:lerp(CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0), i)
			lh.C0 = lh.C0:lerp(CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0), i)
			rh.C0 = rh.C0:lerp(CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0), i)
			rp.C0 = rp.C0:lerp(CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), i)
			wait()
		end
	end)
	working = false
end
 
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if focused == false then
	local key = inputObject.KeyCode
	if usable and working == false then
		if key == Enum.KeyCode.P then
			if equipped == false then
				if firsttime then
					firsttime = false
					notify("Equipped || Z, X, C, V, B, J, K, N, M, L, '",true)
				else
					notify("Equipped")
				end
				equip()
			else
				notify("Unequipped")
				unequip()
			end
		elseif key == Enum.KeyCode.Quote then
			gotohouse(char)
		elseif key == Enum.KeyCode.X then
			if blademode ~= "katana" and equipped == true then
				getrid(handle)
				if firsttime2 then
					firsttime2 = false
					notify("Katana mode enabled || Q, E, Lclick",true)
				else
					notify("Katana mode enabled")
				end
				katanamode()
			elseif blademode == "katana" then
				getrid(handle)
				notify("Katana mode disabled")
			end
		elseif key == Enum.KeyCode.V then
			if blademode ~= "gun" and equipped == true then
				getrid(handle)
				if firsttime5 then
					firsttime5 = false
					notify("Gun mode enabled || Q, E, R, T, Y, F, G, H, Lclick",true)
				else
					notify("Gun mode enabled")
				end
				gunmode()
			elseif blademode == "gun" then
				hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
				getrid(handle)
				notify("Gun mode disabled")
			end
		elseif key == Enum.KeyCode.RightAlt or key == Enum.KeyCode.LeftAlt then
			if ruhroh then
				if blademode ~= "death" and equipped == true then
					getrid(handle)
					if firsttime7 then
						firsttime7 = false
						demonnotify("   wow u did it") 
 	 	 	 			hellisreal()
					else
						notify("Demon mode enabled",false,true)
					end
				elseif blademode == "death" then
					hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
					getrid(handle)
					notify("Demon mode disabled",false,true)
				end
			end
		elseif key == Enum.KeyCode.Z then
			if blademode ~= "fisticuffs" and equipped == true then
				getrid(handle)
				if firsttime6 then
					firsttime6 = false
					notify("Fisticuffs enabled || F, Lclick",true)
				else
					notify("Fisticuffs enabled")
				end
				punchymode()
			elseif blademode == "fisticuffs" then
				getrid(handle)
				notify("Fisticuffs disabled")
			end
		elseif key == Enum.KeyCode.B then
			if childlock == false then
				if blademode ~= "dildo" and equipped == true then
					getrid(handle)
					if firsttime4 then
						firsttime4 = false
						notify("Dildo mode enabled || Lclick",true)
					else
						notify("Dildo mode enabled")
					end
					dildo()
				elseif blademode == "dildo" then
					notify("Dildo mode disabled")
					getrid(handle)
				end
			else
				notify('Run the command "!setchildlock" in bot DMs, follow the instructions, then re-run the script.')
			end
		elseif key == Enum.KeyCode.C then
			if blademode ~= "knife" and equipped == true then
				getrid(handle)
				if firsttime3 then
					firsttime3 = false
					notify("Knife mode enabled ||F, E, H, Q, R, T, Y, G, H, Lclick",true)
				else
					notify("Knife mode enabled")
				end
				knifemode()
			elseif blademode == "knife" then
				notify("Knife mode disabled")
				getrid(handle)
			end
		elseif key == Enum.KeyCode.Q then
			if blademode == "katana" then
				notify()
				katanaQ()
			elseif blademode == "knife" then
				mode = "release"
				notify("Action changed || "..mode)
			elseif blademode == "gun" then
				mode2 = "molotov"
				notify("Action changed || "..mode2)
			elseif blademode == "handle" then
				notify("L O N G   R A N G E   T H O T   B A N I S H")
				longrangethotdestroyer()
			end
		elseif key == Enum.KeyCode.E then
			if blademode == "katana" then
				notify()
				katanaE()
			elseif blademode == "knife" then
				mode = "throw"
				notify("Action changed || "..mode)
			elseif blademode == "gun" then
				mode2 = "mustard gas"
				notify("Action changed || "..mode2)
			end
		elseif key == Enum.KeyCode.G then
			if blademode == "gun" then
				mode2 = "fireworks"
				notify("Action changed || "..mode2)
			elseif blademode == "handle" then
				REMOVETHETHOTS()
			elseif blademode == "knife" then
				mode = "stab"
				notify("Action changed || "..mode)
			end
		elseif key == Enum.KeyCode.F then
			if blademode == "handle" then
				notify([[ B E G O N E   T H O T ]])
				begoneTHOUGHT()
			elseif blademode == "knife" then
				mode = "kill"
				notify("Action changed || "..mode)
			elseif blademode == "gun" then
				mode2 = "shoot"
				notify("Action changed || "..mode2)
			--elseif blademode == "katana" then
				--katanaF()
			elseif blademode == "fisticuffs" then
				pOUNCHH(char["Left Arm"]:FindFirstChild("lweld"), char["Right Arm"]:FindFirstChild("rweld"), char.HumanoidRootPart:FindFirstChild("tweld"))
			end
		elseif key == Enum.KeyCode.H then
			if blademode == "gun" then
				mode2 = "ZAPPPP"
				notify("Action changed || "..mode2)
			elseif blademode == "knife" then
				mode = "kidnap"
				notify("Action changed || "..mode)
			end
		elseif key == Enum.KeyCode.R then
			if blademode == "knife" then
				mode = "paralyze"
				notify("Action changed || "..mode)
			elseif blademode == "gun" then
				mode2 = "infectionist gas"
				notify("Action changed || "..mode2)
			end
		elseif key == Enum.KeyCode.T then
			if blademode == "knife" then
				mode = "fling"
				notify("Action changed || "..mode)
			elseif blademode == "gun" then
				mode2 = "infect"
				notify("Action changed || "..mode2)
			end
		elseif key == Enum.KeyCode.Y then
			if blademode == "gun" then
				mode2 = "hang"
				notify("Action changed || "..mode2)
			elseif blademode == "knife" then
				mode = "explosive knife throwing"
				notify("Action changed || "..mode)
			end
		elseif key == Enum.KeyCode.U then
			if blademode == "gun" then
			end
		end
	end
	if key == Enum.KeyCode.L and working == false and usable then
		makeROOM(char)
	end
	if key == Enum.KeyCode.J and usable and working == false then
		track()
	end
	if key == Enum.KeyCode.R and usable and blademode == "handle" and working == false then
		oogabooga()
	end
	if key == Enum.KeyCode.M then
		pcall(function()
			ice.Playing = false
		end)
		wait()
		pcall(function()
			spook.Playing = spooking
		end)
	end
	if key == Enum.KeyCode.N then
		pcall(function()
			spook.Playing = false
		end)
		wait()
		pcall(function()
			ice.Playing = icing
		end)
	end
	end
end)

handle.ChildAdded:connect(function(child)
	if child:IsA('BasePart') then
		child.CanCollide = false
		if child.Name == "blade" then
			child.Touched:connect(function(hit)
				if blademode == "katana" and swinging then
					if gettingeem then
						if goteem == nil or goteem2 == nil or goteem3 == nil then
							if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent ~= goteem and hit.Parent ~= goteem2 and hit.Parent ~= goteem3 and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
								local sounn = Instance.new("Sound", char.Torso)
								local lipp = math.random(1, 3)
								if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
								if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
								if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
								sounn:Play()
								local cur = 0
								local thisguy = hit.Parent
								if goteem == nil then
									goteem = thisguy
								elseif goteem2 == nil then
									goteem2 = thisguy
									cur = 1.5
								elseif goteem3 == nil then
									goteem3 = thisguy
									cur = 3
								end
								pcall(function()
									ragdollpart(thisguy,"Right Arm")
									ragdollpart(thisguy,"Right Leg")
									ragdollpart(thisguy,"Left Arm")
									ragdollpart(thisguy,"Left Leg")
								end)
								pcall(function()
									ragdollpart(thisguy,"RightUpperArm")
									ragdollpart(thisguy,"RightUpperLeg")
									ragdollpart(thisguy,"LeftUpperArm")
									ragdollpart(thisguy,"LeftUpperLeg")
								end)
								pcall(function()
									local weld = Instance.new('Weld',thisguy.Torso)
									weld.Part0 = thisguy.Torso
									weld.Part1 = handle
									weld.C0 = CFrame.new(0,0,1.25+cur)*CFrame.Angles(math.rad(90),0,math.rad(-90))
								end)
								pcall(function()
									local weld = Instance.new('Weld',thisguy.UpperTorso)
									weld.Part0 = thisguy.UpperTorso
									weld.Part1 = handle
									weld.C0 = CFrame.new(0,0,1.25+cur)*CFrame.Angles(math.rad(90),0,math.rad(-90))
								end)
								pcall(function()
									local thang = "Torso"
									if thisguy:FindFirstChild('UpperTorso') then
										thang = "UpperTorso"
									end
									local ayybleed = Instance.new('Part',thisguy)
									ayybleed.Size = Vector3.new(0.2,0.2,0.2)
									ayybleed.BrickColor = BrickColor.new('Maroon')
									ayybleed.Material = Enum.Material.SmoothPlastic
									ayybleed.Name = "ayybleed"
									ayybleed.CanCollide = false
									ayybleed.Transparency = 1
									ayybleed.CFrame = thisguy[thang].CFrame
									ayybleed:BreakJoints()
									local attachment1 = Instance.new('Attachment',ayybleed)
									attachment1.Position = Vector3.new(0,0,0)
									attachment1.Orientation = Vector3.new(-90, 0, -90)
									local attachment0 = Instance.new('Attachment',thisguy[thang])
									if attachment0 and attachment1 then
										local constraint = Instance.new("HingeConstraint")
										constraint.Attachment0 = attachment0
										constraint.Attachment1 = attachment1
										constraint.LimitsEnabled = true
										constraint.UpperAngle = 0
										constraint.LowerAngle = 0
										constraint.Parent = thisguy
									end
									local bleedBLEED= coroutine.wrap(function()
										bleed(ayybleed)
									end)
									bleedBLEED()
								end)
							end
						end
					elseif SLESH then
						if hit.Parent and hit.Parent:FindFirstChild('CHOPPED') == nil and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							local shit = Instance.new('IntValue',hit.Parent)
							shit.Name = "CHOPPED"
							ragdollpart(hit.Parent,"Head",false)
						end
					else
						if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							local sounn = Instance.new("Sound", char.Torso)
							local lipp = math.random(1, 3)
							if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
							if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
							if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
							sounn:Play()
							swinging = false
							ragdollpart(hit.Parent,"Head",true,false)
						end
					end
				elseif blademode == "knife" then
					if grabbing == true and grabbed == nil then
						if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							grabbed = hit.Parent
							
							stun(grabbed)
							
							local grabwelds = Instance.new("Weld", char.Torso)
							grabwelds.Part0 = char.Torso
							pcall(function()
								grabwelds.Part1 = grabbed.Torso
							end)
							pcall(function()
								grabwelds.Part1 = grabbed.UpperTorso
							end)
							grabwelds.C0 = CFrame.new(-0.45, 0, -1)
							grabweld = grabwelds
						end
					elseif hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char and stabb == true then
						stabb = false
						
						local killsound = Instance.new("Sound", hit.Parent.Head)
						killsound.SoundId = "rbxassetid://150315649"
						killsound.PlaybackSpeed = 1.2
						local killsoundac = Instance.new("Sound", hit.Parent.Head)
						killsoundac.SoundId = "rbxassetid://162194585"
						killsoundac.PlaybackSpeed = 1
						killsoundac.Volume = 1
						local throwsound = Instance.new("Sound", char.Head)
						throwsound.SoundId = "rbxassetid://711753382"
						throwsound.PlaybackSpeed = 0.75
						
						pitchun = math.random(9, 12)/10
						pitchdos = math.random(9, 13)/10
						
						killsound.PlaybackSpeed = pitchun
						killsoundac.PlaybackSpeed = pitchdos
						
						killsound:Play()
						killsoundac:Play()
						if continuestab == false then
						local ayybleed = Instance.new('Part',hit.Parent)
						ayybleed.Size = Vector3.new(0.2,0.2,0.2)
						ayybleed.BrickColor = BrickColor.new('Maroon')
						ayybleed.Material = Enum.Material.SmoothPlastic
						ayybleed.Name = "ayybleed"
						ayybleed.CanCollide = false
						ayybleed.Transparency = 0.5
						ayybleed.CFrame = hit.Parent.Head.CFrame
						ayybleed:BreakJoints()
						local attachment1 = Instance.new('Attachment',ayybleed)
						attachment1.Position = Vector3.new(-0.55,0,0)
						attachment1.Orientation = Vector3.new(90, 0, -90)
						local attachment0 = Instance.new('Attachment')
						pcall(function()
							attachment0.Parent = hit.Parent.Torso
						end)
						pcall(function()
							attachment0.Parent = hit.Parent.UpperTorso
						end)
						if attachment0 and attachment1 then
							local constraint = Instance.new("HingeConstraint")
							constraint.Attachment0 = attachment0
							constraint.Attachment1 = attachment1
							constraint.LimitsEnabled = true
							constraint.UpperAngle = 0
							constraint.LowerAngle = 0
							pcall(function()
								constraint.Parent = hit.Parent.Torso
							end)
							pcall(function()
								constraint.Parent = hit.Parent.UpperTorso
							end)
						end
						local bleedBLEED= coroutine.wrap(function()
							bleed(ayybleed)
						end)
						bleedBLEED()
						
						pcall(function()
							ragdollpart(hit.Parent,"Left Arm")
							ragdollpart(hit.Parent,"Left Leg")
							ragdollpart(hit.Parent,"Right Arm")
							ragdollpart(hit.Parent,"Right Leg")
						end)
						pcall(function()
							ragdollpart(hit.Parent,"LeftUpperLeg")
							ragdollpart(hit.Parent,"RightUpperLeg")
							ragdollpart(hit.Parent,"LeftUpperArm")
							ragdollpart(hit.Parent,"RightUpperArm")
						end)
						
						local cor = coroutine.wrap(function()
							continue = true
							repeats = 0
							while continue == true do
								local ree = pcall(function()
									if repeats < 25 then
										hit.Parent:FindFirstChildOfClass('Humanoid').Health = hit.Parent:FindFirstChildOfClass('Humanoid').Health-5
										repeats = repeats+1
										if hit.Parent:FindFirstChildOfClass('Humanoid').Health <= 0 then
											continue = false
										end
									else
										continue = false
									end
								end)
								if ree == false then
									continue = false
								end
								if continue == true then
									wait(0.2)
								end
							end
							ragdollpart(hit.Parent,"Head")
						end)
						cor()
						end
					end
				elseif blademode == "fisticuffs" then
					if poom == true and hit and hit.Parent and hit.Parent ~= char then
						if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
							poom = false
							local hitparent = hit.Parent
							
							local obj2 = Instance.new("Part")
							obj2.FormFactor = Enum.FormFactor.Custom
							obj2.Transparency = 0.5
							obj2.TopSurface = Enum.SurfaceType.Smooth
							obj2.BottomSurface = Enum.SurfaceType.Smooth
							obj2.Material = Enum.Material.SmoothPlastic
							obj2.Size = Vector3.new(1, 1, 0.25)
							obj2.Anchored = true
							obj2.CanCollide = false
							obj2.BrickColor = BrickColor.new("Institutional white")
							obj2.Shape = Enum.PartType.Block
							obj2.Name = "Ring"
							obj2.Parent = workspace
							pcall(function()
								obj2.CFrame = char.HumanoidRootPart.CFrame--*CFrame.Angles(math.rad(90),0,0)
							end)
							local obj3 = Instance.new("SpecialMesh")
							obj3.MeshType = Enum.MeshType.FileMesh
							obj3.Scale = Vector3.new(2, 2, 0.5)
							obj3.Offset = Vector3.new(3,0,-5)
							obj3.MeshId = "http://www.roblox.com/asset/?id=3270017"
							obj3.Parent = obj2
							local hitmarker = Instance.new('Part',workspace)
							hitmarker.Anchored = true
							hitmarker.CanCollide = false
							hitmarker.Name = "lol get knuckle!*#%ed"
							hitmarker.Size = Vector3.new(1,1,1)
							hitmarker.CFrame = hit.Parent.Head.CFrame
							hitmarker.Transparency = 1
							local oof = Instance.new('BillboardGui',hitmarker)
							oof.Adornee = hitmarker
							oof.Size = UDim2.new(8,0,4,0)
							oof.LightInfluence = 0
							text = "what the fuck"
							local text = Instance.new("TextLabel", oof)
							text.BackgroundTransparency = 1
							text.Size = UDim2.new(1, 0, 1, 0)
							text.Position = UDim2.new(0,0,-0.75,0)
							text.Font = Enum.Font.Arcade
							text.FontSize = "Size48"
							text.AnchorPoint = Vector2.new(-0.5,-0.5)
							text.Text = [[-9999999999
9999999999
9999999999]]
							text.TextColor3 = Color3.new(1, 0, 0)
							text.TextScaled = true
							text.TextStrokeTransparency = 1
							text.TextWrapped = true
							spawn(function()
								while text:IsDescendantOf(workspace) do
									text.Position = UDim2.new(0,math.random(-5,5),-0.75,math.random(-5,5))
									wait()
								end
							end)
							spawn(function()
								wait(2)
								for i = 1,25 do
									wait()
									text.TextTransparency = text.TextTransparency + 0.04
								end
								hitmarker:remove()
							end)
							spawn(function()
								for i=1,12 do
									obj3.Scale = obj3.Scale+Vector3.new(4,4,0)
									obj3.Offset = obj3.Offset+Vector3.new(0,0,-2)
									obj2.Transparency = obj2.Transparency+0.04
									wait()
								end
								obj2:Destroy()
							end)
							ragdollpart(hitparent,"Head")
							local part = hitparent:FindFirstChild('Torso')
							if part == nil then
								part = hitparent:FindFirstChild('UpperTorso')
							end
							if part then
								local sound = Instance.new('Sound',part)
								sound.Volume = 5
								sound.MaxDistance = 200
								sound.EmitterSize = 20
								sound.SoundId = 'rbxassetid://168485325'
								sound:Play()
								local BV = Instance.new('BodyVelocity',part)
								local movevector = CFrame.new(Vector3.new(child.Position.X,0,child.Position.Z),Vector3.new(part.Position.X,0.1,part.Position.Z)).lookVector
								BV.Velocity = movevector*200
								part.Velocity = BV.Velocity
								game:GetService("Debris"):AddItem(BV,5)
								local touche = false
								for i,v in pairs(hitparent:GetChildren()) do
									if v:IsA('BasePart') then
										v.Touched:connect(function(BOOM)
											if v.Velocity.magnitude > 5 and BOOM.Name ~= "lol get knuckle!*#%ed" and BOOM.Name ~= "Baseplate" and BOOM:IsDescendantOf(hitparent) == false and BOOM:IsDescendantOf(char) == false and touche == false and BOOM.Name ~= "Baseplate" then
												touche = true
												BV:Destroy()
												spawn(function()
													wait(0.1)
													touche = false
												end)
												local biggest = v.Size.X
												if v.Size.Y > biggest then
													biggest = v.Size.Y
												end
												if v.Size.Z > biggest then
													biggest = v.Size.Z
												end
												start_fragmentation(v.Position,(biggest+1)+v.Velocity.magnitude/50,true)
											end
										end)
									end
								end
							end
						elseif hit.Name ~= "Baseplate" and hit.Parent:FindFirstChildOfClass('Humanoid') == nil and (hit.Parent.Parent == nil or hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil) then
							poom = false
							local sound = Instance.new('Sound',handle)
							sound.Volume = 0.5
							sound.MaxDistance = 200
							sound.EmitterSize = 20
							sound.SoundId = 'rbxassetid://134854740'
							sound:Play()
							sound.Ended:connect(function()
								sound:Destroy()
							end)
							start_fragmentation(handle.Position,2.5,true)
						end
					end
				end
			end)
		end
	elseif child:IsA("Model") then
		child.ChildAdded:connect(function(dildotip)
			if dildotip:IsA('BasePart') then
				dildotip.Touched:connect(function(hit)
					if MOAN == true then
						if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							local sound = Instance.new('Sound',hit.Parent.Head)
							sound.SoundId = 'rbxassetid://959679286'
							sound.Volume = 5
							sound:Play()
							local sound3 = Instance.new("Sound",hit.Parent.Head)
							sound3.Volume = 5.5
							sound3.SoundId = "rbxassetid://702631545"
							sound3:Play()
							pcall(function()
								for i,v in pairs(hit.Parent.Head:GetChildren()) do
									if v:IsA('Decal') then v:Destroy() end
								end
							end)
							pcall(function()
								local ree=Instance.new('Decal',hit.Parent.Head)		
								ree.Name = "face"
								ree.Texture = "rbxassetid://996521543"
							end)
							MOAN = false
							aidsificating = hit.Parent
							for i, v in pairs(handle["pink toy"]:GetChildren()) do
								if v:IsA("Part") then
									v:FindFirstChild("ParticleEmitter"):Destroy()
								end
							end
						end
					end
				end)
			end
		end)
	end
end)

mouse.Button1Down:connect(function(jew)
	if usable and working == false and equipped then
		if blademode == "katana" then
			notify()
			katanaswing()
		elseif blademode == "knife" then
			notify()
			if grabbed == nil then
				if mode == "fling" then
					fling()
				elseif mode == "explosive knife throwing" then
					flingboom()
				elseif mode == "stab" and continuestabbing == true then
					continuestab = true
				elseif mode == "stab" then
					stabocrabo()
				else
					grab()
				end
			elseif grabbed ~= nil then
				notify()
				if mode == "kill" then
					kill()
				elseif mode == "kidnap" then
					kidnapnoob()
				elseif mode == "throw" then
					throw()
				elseif mode == "release" then
					release()
				elseif mode == "paralyze" then
					paralyze()
				end
			end
		elseif blademode == "dildo" then
			notify()
			raep()
		elseif blademode == "gun" then
			if mode2 == "shoot" then
				notify()
				bangbang()
			elseif mode2 == "molotov" then
				notify()
				boomboom()
			elseif mode2 == "mustard gas" then
				notify()
				mustard()
			elseif mode2 == "infectionist gas" then
				notify()
				infectthenoobs()
			elseif mode2 == "fireworks" then
				notify()
				fireworkit()
			elseif mode2 == "infect" then
				notify()
				injector()
			elseif mode2 == "ZAPPPP" then
				notify()
				zapzap()
			elseif mode2 == "hang" then
				notify()
				lynchabitch()
			end
		elseif blademode == "fisticuffs" then
			pounch(char["Left Arm"]:FindFirstChild("lweld"), char["Right Arm"]:FindFirstChild("rweld"), char.HumanoidRootPart:FindFirstChild("tweld"))
		end
	end
end)

end
spawned()

player.CharacterAdded:connect(function(chr)
	if chr:FindFirstChild('R6') == nil then
		setR6()
		spawned()
	end
end)
local avgs = {}

game:GetService('RunService').Heartbeat:connect(function(step)
	local ofps = 1/game:GetService("RunService").RenderStepped:wait()
	if #avgs > 100 then
		table.remove(avgs,1)
	end
	table.insert(avgs,#avgs+1,ofps)
	local fpsa = 0
	for i,v in pairs(avgs) do
		fpsa = fpsa+v
	end
	fpsa = math.floor(fpsa/#avgs)
	fps.Text = 'FPS: '..tostring(fpsa)
end)

game:GetService('Players').PlayerAdded:connect(function(plr)
	for _,ban in pairs(bans) do
		if plr.Name == ban then
			kick(plr)
		end
	end
end)
local workingonit = false
local stage = 0
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if focused == false then
	local key = inputObject.KeyCode
	if key == Enum.KeyCode.K then
		banning = not banning
		if banning == true then
			notify("You are now banning people you kill.")
		else
			notify("You are now not banning people you kill.")
		end
	end
	if key == Enum.KeyCode.M then
		icing = false
		if spooking == true then spooking = false else spooking = true end
	end
	if key == Enum.KeyCode.N then
		spooking = false
		if icing == true then icing = false else icing = true end
	end
	if key == Enum.KeyCode.Up then
		if stage == 0 and workingonit == false then
			stage = 1
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		elseif stage == 1 and workingonit == true then
			stage = 2
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		end
	end
	if key == Enum.KeyCode.Down then
		if stage == 2 and workingonit == true then
			stage = 3
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		elseif stage == 3 and workingonit == true then
			stage = 4
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		end
	end
	if key == Enum.KeyCode.Left then
		if stage == 4 and workingonit == true then
			stage = 5
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		elseif stage == 6 and workingonit == true then
			stage = 7
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		end
	end
	if key == Enum.KeyCode.Right then
		if stage == 5 and workingonit == true then
			stage = 6
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		elseif stage == 7 and workingonit == true then
			stage = 8
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		end
	end
	if key == Enum.KeyCode.B then
		if stage == 8 and workingonit == true then
			stage = 9
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		end
	end
	if key == Enum.KeyCode.A then
		if stage == 9 and workingonit == true then
			stage = 10
			workingonit = true
			local atthetime = stage
			spawn(function()
				wait(0.8)
				if atthetime == stage then
					workingonit = false
					stage = 0
				end
			end)
		end
	end
	if key == Enum.KeyCode.End then
		literallyafuckingnuke()

	end
	end
end)
spawn(function()
	while wait(0.2) do
		pcall(function()
		raybeam:Destroy()
	end)
	pcall(function()
		pathree:Destroy()
	end)
	if tracking and tracking:IsDescendantOf(workspace) == false then
		tracking = nil
	end
	if tracking ~= nil then
		local stringz = "No tools."
		pcall(function()
			for i,v in pairs(game:GetService('Players'):GetPlayerFromCharacter(tracking).Backpack:GetChildren()) do
				if v:IsA('Tool') then
					stringz = ""
				end
			end
		end)
		pcall(function()
			for i,v in pairs(tracking:GetChildren()) do
				if v:IsA('Tool') then
					stringz = ""
				end
			end
		end)
		local things = {}
		pcall(function()
			for i,v in pairs(game:GetService('Players'):GetPlayerFromCharacter(tracking).Backpack:GetChildren()) do
				if v:IsA('Tool') then
					local found = false
					for n,t in pairs(things) do
						if n == v.Name then
							things[n] = t+1
							found = true
						end
					end
					if found == false then
						things[v.Name] = 1
					end
				end
			end
		end)
		pcall(function()
			for i,v in pairs(tracking:GetChildren()) do
				if v:IsA('Tool') then
					local found = false
					for n,t in pairs(things) do
						if n == v.Name then
							things[n] = t+1
							found = true
						end
					end
					if found == false then
						things[v.Name] = 1
					end
				end
			end
		end)
		local first = true
		for i,v in pairs(things) do
			if first == true then
				first = false
				if v > 1 then
					stringz = stringz..i.." (x"..v..")"
				else
					stringz = stringz..i
				end
			else
				if v > 1 then
					stringz = stringz..", "..i.." (x"..v..")"
				else
					stringz = stringz..", "..i
				end
			end
		end
		TextLabely.Text = "Tracking "..tracking.Name
		Tools.Text = stringz
		pcall(function()
			Health.Text = "Health: "..math.floor(tracking:FindFirstChildOfClass('Humanoid').Health+0.5).."/"..math.floor(tracking:FindFirstChildOfClass('Humanoid').MaxHealth+0.5)
		end)
		Parent.Text = "Parent: "..tracking.Parent:GetFullName()
		local part = tracking:FindFirstChild('Torso')
		if part == nil then
			part = tracking:FindFirstChild('UpperTorso')
		end
		pcall(function()
			RelativePosition.Text = "Relative Position: "..tostring(Vector3.new(math.floor(part.Position.X+0.5),math.floor(part.Position.Y+0.5),math.floor(part.Position.Z+0.5))-Vector3.new(math.floor(player.Character.Torso.Position.X+0.5),math.floor(player.Character.Torso.Position.Y+0.5),math.floor(player.Character.Torso.Position.Z+0.5)))
		end)
		pcall(function()
			WorldPosition.Text = "Position: "..tostring(Vector3.new(math.floor(part.Position.X+0.5),math.floor(part.Position.Y+0.5),math.floor(part.Position.Z+0.5)))
		end)
		pcall(function()
			Distance.Text = "Distance: "..tostring(math.floor((part.Position-player.Character.Torso.Position).magnitude+0.5))
		end)
		if pathfinding then
			TogglePath.Text = 'Toggle Pathfinding (On)'
			local PathfindingService = game:GetService("PathfindingService")
			local start = player.Character.Torso
			local finish = part
			local pathreee = Instance.new('Folder',workspace.CurrentCamera)
			pathree = pathreee
			local path = PathfindingService:FindPathAsync(start.Position, finish.Position)
			local waypoints = path:GetWaypoints()
			for i = 2, #waypoints do
				local lastWaypoint = waypoints[i - 1]
				local currentWaypoint = waypoints[i]
				local lastPosition = lastWaypoint.Position + Vector3.new(0, 0.5, 0)
				local currentPosition = currentWaypoint.Position + Vector3.new(0, 0.5, 0)
				local toCurrent = currentPosition - lastPosition
				local distance = toCurrent.Magnitude
				local beam = Instance.new("Part", pathreee)
				local waypointType = currentWaypoint.Action
				if waypointType == Enum.PathWaypointAction.Jump then
					beam.Color = Color3.new(1, 1, 0)
				else
					beam.Color = Color3.new(0, 1, 0)
				end
				beam.FormFactor = "Custom"
				beam.Material = "Neon"
				beam.Anchored = true
				beam.Locked = true
				beam.CanCollide = false
 				
				local distance = (lastPosition - currentPosition).magnitude
				beam.Size = Vector3.new(0.3, 0.3, distance)
				beam.CFrame = CFrame.new(lastPosition, currentPosition) * CFrame.new(0, 0, -distance / 2)
			end
		else
			TogglePath.Text = 'Toggle Pathfinding (Off)'
		end
		if linetracking then
			ToggleTracking.Text = 'Toggle Tracking (On)'
			local beam = Instance.new("Part", workspace.CurrentCamera)
			beam.BrickColor = BrickColor.new("Bright red")
			beam.FormFactor = "Custom"
			beam.Material = "Neon"
			beam.Transparency = 0
			beam.Anchored = true
			beam.Locked = true
			beam.CanCollide = false
 
			local distance = (player.Character.Torso.Position - part.position).magnitude
			beam.Size = Vector3.new(0.3, 0.3, distance)
			beam.CFrame = CFrame.new(player.Character.Torso.Position, part.Position) * CFrame.new(0, 0, -distance / 2)
			raybeam = beam
		else
			ToggleTracking.Text = 'Toggle Tracking (Off)'
		end
		Tracking.Visible = true
	else
		Tracking.Visible = false
	end
	end
end)

while true do
	for i,v in pairs(getdamaged) do
		if v and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChildOfClass('Humanoid').Health > 0 then
			if v:FindFirstChildOfClass('Humanoid').Health-(v:FindFirstChildOfClass('Humanoid').MaxHealth/1000) > 0 then
				v:FindFirstChildOfClass('Humanoid').Health = v:FindFirstChildOfClass('Humanoid').Health-(v:FindFirstChildOfClass('Humanoid').MaxHealth/1000)
			else
				ragdollpart(v,"Head")
			end
		else
			table.remove(getdamaged,i)
		end
	end
	for i,v in pairs(rekt) do
		if v.Parent ~= nil then
			if v:FindFirstChildOfClass('Humanoid') and v:FindFirstChildOfClass('Humanoid').Health>0 then
				for a,c in pairs(v:GetChildren()) do
					if c:IsA('Tool') then
						c.ManualActivationOnly = true
						wait()
						if game:GetService('Players'):GetPlayerFromCharacter(v) then
							c.Parent = game:GetService('Players'):GetPlayerFromCharacter(v).Backpack
							c.ManualActivationOnly = false
						end
					end
				end
				v:FindFirstChildOfClass('Humanoid').PlatformStand = true
				v:FindFirstChildOfClass('Humanoid').Sit = false
				v:FindFirstChildOfClass('Humanoid').JumpPower = 0
				v:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
				v:FindFirstChildOfClass('Humanoid').Name = "hecc"
			else
				table.remove(rekt,i)
			end
		else
			table.remove(rekt,i)
		end
	end
	wait()
end
end
