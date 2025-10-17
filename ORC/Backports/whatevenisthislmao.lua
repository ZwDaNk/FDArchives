-- really fucking lazily ported at 7 am
-- sultanofswing

local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character

local LaughSound = Instance.new("Sound")
LaughSound.SoundId = "rbxassetid://7816195044"
LaughSound.PlaybackSpeed = 0.421
LaughSound.Volume = 0.605
LaughSound.Looped = true
LaughSound.Name = "Laughter"

local Song = Instance.new("Sound")
Song.SoundId = "rbxassetid://9046435309"
Song.Volume = 2
Song.Looped = true
Song.Name = "SongOfHealing"

local Patrick = Instance.new("Model", workspace)
Patrick.Name = "Patrick"

local patrick = Instance.new("Part")
patrick.Size = Vector3.new(120.109, 152.799, 65.614)
patrick.Position = Vector3.new(0, 0, 0)
patrick.Anchored = true
patrick.CanCollide = false
patrick.Parent = Patrick

local patMesh = Instance.new("SpecialMesh")
patMesh.MeshId = "rbxassetid://455783801"
patMesh.TextureId = "rbxassetid://455783804"
patMesh.Parent = patrick

local patLight = Instance.new("PointLight")
patLight.Brightness = 40
patLight.Range = 60
patLight.Color = Color3.new(1, 0, 4/255)
patLight.Parent = patrick

local function newDecal(parent, texture, face)
	local decal = Instance.new("Decal")
	decal.Texture = texture
	decal.Face = face
	decal.Parent = parent
	return decal
end

newDecal(patrick, "http://www.roblox.com/asset/?id=10644190121", "Front")
newDecal(patrick, "http://www.roblox.com/asset/?id=6279708028", "Back")
newDecal(patrick, "http://www.roblox.com/asset/?id=10644188768", "Back")
newDecal(patrick, "http://www.roblox.com/asset/?id=10644190121", "Left")
newDecal(patrick, "http://www.roblox.com/asset/?id=10644190121", "Top")
newDecal(patrick, "http://www.roblox.com/asset/?id=10644190121", "Right")

local mouth = Instance.new("Part")
mouth.Position = Vector3.new(0.44, 12.121, 5.404)
mouth.Size = Vector3.new(4, 1, 2)
mouth.Transparency = 1

local mLight = patLight:Clone()
mLight.Parent = mouth

local mWeld = Instance.new("WeldConstraint")
mWeld.Part0 = mouth
mWeld.Part1 = patrick

mWeld.Parent = mouth
mouth.Parent = patrick

Patrick.PrimaryPart = patrick

local function suck(Part)
	local waiter = math.random(4, 120)
	local suckVelocity = math.random(8, 15)
	wait(math.random(10, 120))

	Part.Anchored = true

	local goal = {}
	goal.CFrame = CFrame.new(mouth.Position.X, mouth.Position.Y, mouth.Position.Z)
	local info = TweenInfo.new(suckVelocity, Enum.EasingStyle.Cubic, Enum.EasingDirection.In)

	local tween = TweenService:Create(Part, info, goal)
	tween:Play()

	tween.Completed:Connect(function()
		Part:Destroy()
	end)
end

if Character then
	local info = TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)

	local targetPos = Character:GetPrimaryPartCFrame()
	Patrick:SetPrimaryPartCFrame(Character:GetPrimaryPartCFrame() + Vector3.new(0, -176.4, 0))
	Patrick.Parent = workspace

	Lighting.TimeOfDay = 0
	Lighting.Ambient = Color3.new(0, 0, 0)
	Lighting.OutdoorAmbient = Color3.new(0, 0, 0)

	local tween = TweenService:Create(Lighting, info, {
		FogEnd = 100,
		FogColor = Color3.new(53/255, 0/255, 1/255),
	})

	local tween2 = TweenService:Create(patrick, info, {
		CFrame = targetPos + Vector3.new(0, 76.4, 0)
	})

	local tween3 = TweenService:Create(Lighting, info, {
		ClockTime = 0
	})

	tween:Play()
	tween2:Play()

	tween2.Completed:Connect(function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and (v ~= patrick and v ~= mouth) then
				coroutine.wrap(function() suck(v) end)()
			end
		end

		workspace.DescendantAdded:Connect(function(desc)
			if desc:IsA("BasePart") and (desc ~= patrick and desc ~= mouth) then
				coroutine.wrap(function() suck(desc) end)()
			end
		end)
	end)

	LaughSound.Parent = workspace
	Song.Parent = workspace

	LaughSound:Play()
	Song:Play()
end