-- Doge Army, now for revivals!
-- Backported to 2016E by SultanOfSwing
-- Thanks to LuaGunsX for finding this
-- Some backport funcs by louknt

--//SERVICES\\--
local tweening = game:GetService("TweenService")
local insert = game:GetService("InsertService")

--//VARIABLES\\--
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:wait()
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")
local gui = game:GetService("CoreGui")
local mouse = player:GetMouse()

--//OTHER\\--
local status = "PASSIVE"
local side = "RIGHT"
local class = "NORMAL"
local focus = nil
local number = 0

--//SETTING\\--
local zkill = Instance.new("Vector3Value")
zkill.Name = "ZombieKill"
zkill.Parent = gui

--//BACKPORT FUNCS\\--
local function rgb(r,g,b) return Color3.new(r/255,g/255,b/255) end -- from louknt's fehaxx lol

local function fromHsv(h, s, v) -- thanks louknt for this color3.fromhsv func
	h = h % 1 -- clamp
	local r, g, b

	if s == 0 then
		r, g, b = v, v, v
	else
		local i = math.floor(h * 6)
		local f = h * 6 - i
		local p = v * (1 - s)
		local q = v * (1 - f * s)
		local t = v * (1 - (1 - f) * s)

		i = i % 6
		if i == 0 then
			r, g, b = v, t, p
		elseif i == 1 then
			r, g, b = q, v, p
		elseif i == 2 then
			r, g, b = p, v, t
		elseif i == 3 then
			r, g, b = p, q, v
		elseif i == 4 then
			r, g, b = t, p, v
		elseif i == 5 then
			r, g, b = v, p, q
		end
	end

	return Color3.new(r,g,b)
end

local rColorSequence = ColorSequence -- my shitty colorsequence wrapper to fix 2016e syntax
local ColorSequence = {
	new = function(t)
		local kek1, kek2 = t[1], t[#t]
		return rColorSequence.new(kek1.Value, kek2.Value)
	end,
}

local function rightVector(cframe) -- this is from louknt's 2016 freecam script lol
	local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cframe:components()
	return Vector3.new(r00, r10, r20)
end

local function GetDescendants(parent) -- from louknt's backporting utility pack
	local descendants = {}
	local function rec(inst)
		for _, child in ipairs(inst:GetChildren()) do
			table.insert(descendants, child)
			rec(child)
		end
	end
	return descendants
end

local function FindFirstChildOfClass(parent, class)-- also from louknt's backporting utility pack
	for _, child in ipairs(parent:GetChildren()) do
		if child.ClassName == class then
			return child
		end
	end
end

local function isColor3(idekbro) -- disgusting fucking hack since no typeof.. 
	local s = pcall(function()
		return idekbro.r, idekbro.g, idekbro.b
	end)
	return s
end

function TweenCreate(object, time, goalProps) -- my BEAUTIFUL tweenservice wrapper
	local startValues = {}
	local deltas = {}
	local color3cache = false

	for prop, goal in pairs(goalProps) do
		local start = object[prop]
		if isColor3(start) and isColor3(goal) then
			color3cache = true
			startValues[prop] = start
			deltas[prop] = Color3.new(
				goal.r - start.r,
				goal.g - start.g,
				goal.b - start.b
			)
		else
			startValues[prop] = start
			deltas[prop] = goal - start
		end
	end

	return {
		Play = function()
			local elapsed = 0
			local connection
			connection = game:GetService("RunService").RenderStepped:connect(function(dt)
				elapsed = elapsed + dt
				local alpha = math.min(elapsed / time, 1) -- THANK GOD this script only uses linear easing..

				for prop, start in pairs(startValues) do
					local delta = deltas[prop]

					if color3cache then
						object[prop] = Color3.new(
							start.r + delta.r * alpha,
							start.g + delta.g * alpha,
							start.b + delta.b * alpha
						)
					else
						object[prop] = start + delta * alpha
					end
				end

				if alpha >= 1 then
					connection:disconnect()
				end
			end)
		end
	}
end

--//FUNCTIONS\\--
local function write(text,object)
	if object:IsA("TextLabel") == true then
		local count = object:FindFirstChild("Count")
		if count == nil then
			count = Instance.new("NumberValue")
			count.Parent = object
			count.Name = "Count"
			count.Value = count.Value + 1
		else
			count.Value = count.Value + 1
		end
		local startcount = count.Value
		for i = 1,#text do
			if count.Value == startcount then
				local letter = string.sub(text,i,i)
				object.Text = string.sub(text,1,i)
				local sound = Instance.new("Sound")
				sound.Parent = gui
				sound.Name = "Tick"
				sound.PlaybackSpeed = 1.5
				sound.SoundId = "rbxassetid://151715959"
				sound.Playing = true
				game:GetService("Debris"):AddItem(sound,sound.TimeLength)
				wait(0.01)
			else
				break
			end
		end
	end
end
local dawgshutupinfo = {new=function(a) return a end} -- LAZY AS FUCK LMAOOOOOOOOO
local function shake()
	if hum then
		delay(0,function()
			for shake = 1,4,1 do
				local length = 0.02
				local propertieschanged = {
					CameraOffset = Vector3.new(2,1,-1.2)
				}
				local info = dawgshutupinfo.new(length,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
				local tween = TweenCreate(hum,info,propertieschanged)
				tween:Play()
				wait(length)
				local length = 0.01
				local propertieschanged = {
					CameraOffset = Vector3.new(-1.6,-0.8,3)
				}
				local info = dawgshutupinfo.new(length,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
				local tween = TweenCreate(hum,info,propertieschanged)
				tween:Play()
				wait(length)
				local length = 0.03
				local propertieschanged = {
					CameraOffset = Vector3.new(-2.1,1.1,1.4)
				}
				local info = dawgshutupinfo.new(length,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
				local tween = TweenCreate(hum,info,propertieschanged)
				tween:Play()
				wait(length)
			end
			local propertieschanged = {
				CameraOffset = Vector3.new(0,0,0)
			}
			local info = dawgshutupinfo.new(0.03,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
			local tween = TweenCreate(hum,info,propertieschanged)
			tween:Play()
		end)
	end
end

local function create(special)
	local npcmodel = insert:LoadAsset(257489726)
	local doge = npcmodel:GetChildren()[1]:Clone()
	doge.Parent = workspace
	if npcmodel and npcmodel.Parent then
		npcmodel:Destroy()
	end
	local parts = doge:WaitForChild("Head"):GetChildren()
	for i,object in pairs(parts) do
		if object:IsA("BasePart") == true and object.Name ~= "Fire" then
			object:Destroy()
		end
	end
	number = number + 1
        --[[
        local doge = Instance.new("Part")
        doge.Parent = workspace
        doge.Parent = workspace
        doge.CastShadow = false
        doge.Anchored = false
        doge.CanCollide = true
        doge.Massless = true
        doge.Size = Vector3.new(1,2,4)
        doge.CFrame = root.CFrame + root.CFrame.lookVector * 5 + Vector3.new(0,4,0)
        --]]
	if special == nil then
		doge:WaitForChild("Torso").CFrame = root.CFrame + root.CFrame.lookVector * 5 + Vector3.new(0,4,0)
	else
		doge:WaitForChild("Torso").CFrame = CFrame.new(zkill.Value + Vector3.new(0,6,0))
	end
	local particle = Instance.new("ParticleEmitter")
	particle.Parent = doge:WaitForChild("Torso")
	particle.Enabled = true
	particle.ZOffset = 2
	particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(1,1)})
	particle.Speed = NumberRange.new(3)
	particle.LightEmission = 1
	particle.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(math.random(0,255),math.random(0,255),math.random(0,255))),ColorSequenceKeypoint.new(1,rgb(math.random(0,255),math.random(0,255),math.random(0,255)))})
	particle.VelocitySpread = 360
	particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2),NumberSequenceKeypoint.new(1,0)})
	particle.Rate = 500
	particle.Rotation = NumberRange.new(-360,360)
	particle.Lifetime = NumberRange.new(1)
	delay(0.2,function()
		particle.Enabled = false
	end)
	game:GetService("Debris"):AddItem(particle,1.2)
	local cast = doge:WaitForChild("Head"):WaitForChild("Wow")
	cast.Volume = 2
	cast.Playing = true
	local targetval = Instance.new("Vector3Value")
	targetval.Name = "Target"
	targetval.Parent = doge
	local targetnum = Instance.new("NumberValue")
	targetnum.Name = "Number"
	targetnum.Value = number
	targetnum.Parent = targetval
	local dogetier = Instance.new("StringValue")
	dogetier.Name = "Type"
	dogetier.Value = class
	dogetier.Parent = doge
	local currentvictim = Instance.new("ObjectValue")
	currentvictim.Name = "Victim"
	currentvictim.Parent = doge
	currentvictim.Value = nil
	local add = 1
	if side == "RIGHT" then
		targetval.Name = "RIGHT"
		add = 1
		local target = root.CFrame + rightVector(root.CFrame) * (2 + (targetnum.Value + add))
		targetval.Value = target.p
		side = "LEFT"
	elseif side == "LEFT" then
		targetval.Name = "LEFT"
		add = 0
		local target = root.CFrame - rightVector(root.CFrame) * (2 + (targetnum.Value + add))
		targetval.Value = target.p
		side = "RIGHT"
	end
	if dogetier.Value == "FIRE" then
		local parts = doge:GetChildren()
		for i,obj in pairs(parts) do
			if obj:IsA("BasePart") == true then
				obj.BrickColor = BrickColor.new("Neon orange")
				if obj.Transparency ~= 1 then
					if obj.Name == "Head" or obj.Name == "Tail" or obj.Name == "Torso" then
						local fire = Instance.new("ParticleEmitter")
						fire.Parent = obj
						if obj.Name == "Head" or obj.Name == "Tail" then
							fire.LockedToPart = true
						end
						fire.Rate = 500
						fire.Rotation = NumberRange.new(-360,360)
						fire.RotSpeed = NumberRange.new(-100,100)
						fire.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(255,85,0)),ColorSequenceKeypoint.new(1,rgb(255,255,255))})
						fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5),NumberSequenceKeypoint.new(1,0)})
						fire.Lifetime = NumberRange.new(0.7,1)
						fire.Speed = NumberRange.new(5,6)
						fire.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.95),NumberSequenceKeypoint.new(1,0.95)})
						fire.ZOffset = 1
						fire.Name = "Fire"
						fire.LightEmission = 1
						fire.Texture = "http://www.roblox.com/asset/?id=11601142"
						fire.Enabled = true
					end
				end
			end
		end
		local parts = GetDescendants(doge)
		for i,par in pairs(parts) do
			if par:IsA("SpecialMesh") == true then
				par.TextureId = ""
			end
		end
		local burn = Instance.new("Sound")
		burn.Parent = doge:WaitForChild("Head")
		burn.Looped = true
		burn.Name = "Fire"
		burn.SoundId = "rbxassetid://1250876841"
		burn.Playing = true
	elseif dogetier.Value == "ZOMBIE" then
		local parts = GetDescendants(doge)
		for i,par in pairs(parts) do
			if par:IsA("SpecialMesh") == true then
				par.TextureId = ""
				par.Parent.BrickColor = BrickColor.new("Dark green")
			end
		end
		local bark = doge:WaitForChild("Head"):WaitForChild("Bark")
		bark.SoundId = "rbxassetid://408341537"
		bark.PlaybackSpeed = 1.5
	elseif dogetier.Value == "KAMIKAZE" then
		local tail = doge:FindFirstChild("Tail")
		if tail then
			local mesh = tail:FindFirstChild("Mesh")
			if mesh then
				tail.Material = Enum.Material.Neon
				tail.BrickColor = BrickColor.new("Really red")
				mesh.TextureId = ""
				mesh.MeshId = ""
				mesh.MeshType = Enum.MeshType.Sphere
				mesh.Scale = Vector3.new(1.2,1.2,1.2)
				mesh.Offset = Vector3.new(0.3,0,0)
				local beep = Instance.new("Sound")
				beep.Parent = doge:WaitForChild("Head")
				beep.PlaybackSpeed = 1
				beep.Looped = true
				beep.SoundId = "rbxassetid://138081500"
				beep.Volume = 0.5
				beep.Playing = true
				local explo = Instance.new("BoolValue")
				explo.Parent = doge
				explo.Value = false
				explo.Name = "Exploding"
				delay(0,function()
					local between = 0.41
					while wait(between) do
						if doge:WaitForChild("Humanoid").Health > 0 then
							tail.BrickColor = BrickColor.new("Institutional white")
							local ti = 0.4
							if explo.Value == true then
								between = 0.1
								ti = 0.2
								beep.PlaybackSpeed = 3
							end
							local propertieschanged = {
								Color = rgb(255,0,0),
							}
							local info = dawgshutupinfo.new(ti,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
							local tween = TweenCreate(tail,info,propertieschanged)
							tween:Play()
						end
					end
				end)
				explo.Changed:connect(function()
					if explo.Value == true then
						doge:WaitForChild("Humanoid").WalkSpeed = 0
						wait(2)
						local exp = Instance.new("ParticleEmitter")
						exp.Parent = tail
						exp.Rate = 500
						exp.Rotation = NumberRange.new(-360,360)
						exp.RotSpeed = NumberRange.new(-100,100)
						exp.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(255,170,0)),ColorSequenceKeypoint.new(1,rgb(255,255,255))})
						exp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(0.5,10),NumberSequenceKeypoint.new(1,0)})
						exp.Lifetime = NumberRange.new(0.5)
						exp.Speed = NumberRange.new(160)
						exp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.4,0),NumberSequenceKeypoint.new(1,1)})
						exp.ZOffset = 10
						exp.Name = "Fire"
						exp.LightEmission = 1
						exp.VelocitySpread = 360
						exp.Texture = "http://www.roblox.com/asset/?id=11601142"
						exp.Enabled = true
						game:GetService("Debris"):AddItem(exp,2)
						local fire = exp:Clone()
						fire.Parent = tail
						local smoke = Instance.new("ParticleEmitter")
						smoke.Parent = tail
						smoke.Rate = 500
						smoke.Rotation = NumberRange.new(-360,360)
						smoke.RotSpeed = NumberRange.new(-100,100)
						smoke.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(0,0,0)),ColorSequenceKeypoint.new(1,rgb(0,0,0))})
						smoke.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(0.8,10),NumberSequenceKeypoint.new(1,0)})
						smoke.Lifetime = NumberRange.new(1.2)
						smoke.Speed = NumberRange.new(160)
						smoke.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.9),NumberSequenceKeypoint.new(1,1)})
						smoke.ZOffset = 1
						smoke.Name = "Smoke"
						smoke.LightEmission = 0
						smoke.VelocityInheritance = 360
						smoke.Texture = "http://www.roblox.com/asset/?id=249338959"
						smoke.Enabled = true
						game:GetService("Debris"):AddItem(smoke,2)
						local explode = Instance.new("Sound")
						explode.Parent = tail
						explode.SoundId = "rbxassetid://165969964"
						explode.Playing = true
						explode.Volume = 1
						game:GetService("Debris"):AddItem(explode,explode.TimeLength + 2)
						delay(0.5,function()
							exp.Enabled = false
							fire.Enabled = false
							smoke.Enabled = false
						end)
						shake()
						number = number - 1
						local get = GetDescendants(workspace)
						for i,check in pairs(get) do
							if check:IsA("Humanoid") == true then
								if check.Parent.Name ~= player.Name and check.Parent.Name ~= "Doge" then
									local hit = check.Parent:FindFirstChild("HumanoidRootPart")
									if hit then
										if (hit.Position - doge:WaitForChild("Torso").Position).magnitude <= 90 then
											check:TakeDamage(200)
											local explode = Instance.new("Sound")
											explode.Parent = hit
											explode.SoundId = "rbxassetid://429400881"
											explode.Playing = true
											game:GetService("Debris"):AddItem(explode,explode.TimeLength + 1)
											local get = check.Parent:GetChildren()
											for i,obj in pairs(get) do
												if obj:IsA("BasePart") == true then
													local blood = Instance.new("ParticleEmitter")
													blood.Parent = obj
													blood.Texture = "rbxassetid://709137722"
													blood.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.8,0),NumberSequenceKeypoint.new(1,1)})
													blood.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(85,0,0)),ColorSequenceKeypoint.new(1,rgb(85,0,0))})
													blood.Name = "Blood"
													blood.Enabled = true
													blood.Lifetime = NumberRange.new(1)
													blood.Speed = NumberRange.new(10)
													blood.LightEmission = 0.8
													blood.Rate = 500
													blood.Rotation = NumberRange.new(-360,360)
													blood.RotSpeed = NumberRange.new(-100,100)
													blood.VelocitySpread = 360
													blood.Acceleration = Vector3.new(0,-10,0)
													blood.Drag = 1
													blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.87),NumberSequenceKeypoint.new(0.104,2.06),NumberSequenceKeypoint.new(1,0)})
													game:GetService("Debris"):AddItem(blood,2)
													delay(0.4,function()
														blood.Enabled = false
													end)
												end
											end
										end
									end
								end
							end
						end
						doge:BreakJoints()
						beep.Playing = false
						local get = doge:GetChildren()
						for i,get in pairs(get) do
							if get:IsA("BasePart") == true then
								get.Transparency = 1
							end
						end
						game:GetService("Debris"):AddItem(doge,6)
					end
				end)
			end
		end
	end
	local dogehum = doge:WaitForChild("Humanoid")
	dogehum.WalkSpeed = 20
	dogehum.MaxHealth = 500
	mouse.Button1Down:connect(function()
		if status == "MOVE TO" then
			dogehum.Jump = true
			local check = root:FindFirstChild("Bark")
			if check == nil then
				local bark = doge:WaitForChild("Head"):WaitForChild("Bark"):Clone()
				bark.Parent = root
				bark.Playing = true
				game:GetService("Debris"):AddItem(bark,bark.TimeLength + 1)
			end
		end
	end)
	local debounce = Instance.new("BoolValue")
	debounce.Parent = doge
	debounce.Value = false
	debounce.Name = "Debounce"

	for _,v in ipairs(dogehum.Parent:GetChildren()) do
		if v:IsA("BasePart") then
			v.Touched:connect(function(hit)
				if debounce.Value == false and dogetier.Value ~= "KAMIKAZE" then
					local check = FindFirstChildOfClass(hit.Parent, "Humanoid") or FindFirstChildOfClass(hit.Parent.Parent, "Humanoid")
					if check and hit:IsDescendantOf(char) == false and check.Parent.Name ~= "Doge" and hit.Transparency ~= 1 then
						debounce.Value = true
						delay(0.4,function()
							debounce.Value = false
						end)
						if dogetier.Value == "NORMAL" then
							local starting = check.Health
							check:TakeDamage(15)
							local bark = doge:WaitForChild("Head"):WaitForChild("Bark")
							bark.Playing = true
							local stab = Instance.new("Sound")
							stab.Parent = doge:WaitForChild("Head")
							stab.SoundId = "rbxassetid://220833976"
							stab.Playing = true
							game:GetService("Debris"):AddItem(stab,stab.TimeLength + 1)
							if check.Health <= 0 and starting > 0 then
								local explode = Instance.new("Sound")
								explode.Parent = hit
								explode.SoundId = "rbxassetid://429400881"
								explode.Playing = true
								game:GetService("Debris"):AddItem(explode,explode.TimeLength + 1)
								local get = check.Parent:GetChildren()
								for i,obj in pairs(get) do
									if obj:IsA("BasePart") == true then
										local blood = Instance.new("ParticleEmitter")
										blood.Parent = obj
										blood.Texture = "rbxassetid://709137722"
										blood.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.8,0),NumberSequenceKeypoint.new(1,1)})
										blood.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(85,0,0)),ColorSequenceKeypoint.new(1,rgb(85,0,0))})
										blood.Name = "Blood"
										blood.Enabled = true
										blood.Lifetime = NumberRange.new(1)
										blood.Speed = NumberRange.new(10)
										blood.LightEmission = 0.8
										blood.Rate = 500
										blood.Rotation = NumberRange.new(-360,360)
										blood.RotSpeed = NumberRange.new(-100,100)
										blood.VelocitySpread = 360
										blood.Acceleration = Vector3.new(0,-10,0)
										blood.Drag = 1
										blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.87),NumberSequenceKeypoint.new(0.104,2.06),NumberSequenceKeypoint.new(1,0)})
										game:GetService("Debris"):AddItem(blood,2)
										delay(0.4,function()
											blood.Enabled = false
										end)
									end
								end
							end
							if check.Health <= 0 then
								if hit.Transparency ~= 1 then
									hit.Size = hit.Size - Vector3.new(0.1,0.1,0.1)
									dogehum.Health = dogehum.Health + 20
									dogehum.WalkSpeed = dogehum.WalkSpeed + 1
									if hit.Size.x < 0.1 or hit.Size.y < 0.1 or hit.Size.z < 0.1 then
										hit.Transparency = 1
										local explode = Instance.new("Sound")
										explode.Parent = hit
										explode.SoundId = "rbxassetid://264486467"
										explode.Playing = true
										game:GetService("Debris"):AddItem(explode,explode.TimeLength + 1)
									end
								end
							end
							local blood = Instance.new("ParticleEmitter")
							blood.Parent = hit
							blood.Texture = "rbxassetid://709137722"
							blood.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.8,0),NumberSequenceKeypoint.new(1,1)})
							blood.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(85,0,0)),ColorSequenceKeypoint.new(1,rgb(85,0,0))})
							blood.Name = "Blood"
							blood.Enabled = true
							blood.Lifetime = NumberRange.new(1)
							blood.Speed = NumberRange.new(10)
							blood.LightEmission = 0.8
							blood.Rate = 500
							blood.Rotation = NumberRange.new(-360,360)
							blood.RotSpeed = NumberRange.new(-100,100)
							blood.VelocitySpread = 360
							blood.Acceleration = Vector3.new(0,-10,0)
							blood.Drag = 1
							blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.87),NumberSequenceKeypoint.new(0.104,2.06),NumberSequenceKeypoint.new(1,0)})
							game:GetService("Debris"):AddItem(blood,2)
							delay(0.2,function()
								blood.Enabled = false
							end)
						elseif dogetier.Value == "FIRE" then
							local bark = doge:WaitForChild("Head"):WaitForChild("Bark")
							bark.Playing = true
							local douse = Instance.new("Sound")
							douse.Parent = doge:WaitForChild("Head")
							douse.SoundId = "rbxassetid://533243953"
							douse.Playing = true
							game:GetService("Debris"):AddItem(douse,douse.TimeLength + 3)
							local starting = check.Health
							delay(0,function()
								for dmg = 1,10,1 do
									check:TakeDamage(3)
									local make = check.Parent:FindFirstChild("AlreadyBeingBurnt")
									if check.Health <= 0 and starting > 0 and make == nil then
										local body = check.Parent:FindFirstChild("Body Colors")
										if body then
											body:Destroy()
										end
										local new = Instance.new("BoolValue")
										new.Parent = check.Parent
										new.Name = "AlreadyBeingBurnt"
										new.Value = true
										local explode = Instance.new("Sound")
										explode.Parent = hit
										explode.SoundId = "rbxassetid://1250876841"
										explode.Playing = true
										game:GetService("Debris"):AddItem(explode,explode.TimeLength + 1)
										local get = check.Parent:GetChildren()
										for i,obj in pairs(get) do
											if obj:IsA("BasePart") == true and obj.Transparency ~= 1 then
												local fire = Instance.new("ParticleEmitter")
												fire.Parent = obj
												fire.Acceleration = Vector3.new(0,10,0)
												fire.Rate = 500
												fire.Rotation = NumberRange.new(-360,360)
												fire.RotSpeed = NumberRange.new(-100,100)
												fire.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(255,85,0)),ColorSequenceKeypoint.new(1,rgb(255,255,255))})
												fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5),NumberSequenceKeypoint.new(1,0)})
												fire.Lifetime = NumberRange.new(0.7,1)
												fire.Speed = NumberRange.new(1,2)
												fire.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.95),NumberSequenceKeypoint.new(1,0.95)})
												fire.ZOffset = 1
												fire.Name = "Fire"
												fire.LightEmission = 1
												fire.Texture = "http://www.roblox.com/asset/?id=11601142"
												fire.Enabled = true
												delay(0,function()
													local propertieschanged = {
														Color = rgb(0,0,0),
													}
													local info = dawgshutupinfo.new(5,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
													local tween = TweenCreate(obj,info,propertieschanged)
													tween:Play()
													for eat = 1,10,1 do
														local propertieschanged = {
															Size = obj.Size - Vector3.new(0.1,0.1,0.1),
														}
														local info = dawgshutupinfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
														local tween = TweenCreate(obj,info,propertieschanged)
														tween:Play()
														if obj.Size.x < 0.1 or obj.Size.y < 0.1 or obj.Size.z < 0.1 then
															game:GetService("Debris"):AddItem(obj,1)
															fire.Enabled = false
															explode.Playing = false
															local propertieschanged = {
																Transparency = 1,
															}
															local info = dawgshutupinfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
															local tween = TweenCreate(obj,info,propertieschanged)
															tween:Play()
														end
														wait(1)
													end
												end)
											elseif obj:IsA("Accessory") == true then
												local handle = obj:FindFirstChild("Handle")
												if handle then
													handle:BreakJoints()
													local propertieschanged = {
														Transparency = 1,
													}
													local info = dawgshutupinfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
													local tween = TweenCreate(handle,info,propertieschanged)
													tween:Play()
												end
											end
										end
									end
									wait(0.3)
								end
							end)
							if check.Health ~= 0 then
								local fire = Instance.new("ParticleEmitter")
								fire.Parent = hit
								fire.Acceleration = Vector3.new(0,3,0)
								fire.Rate = 500
								fire.Rotation = NumberRange.new(-360,360)
								fire.RotSpeed = NumberRange.new(-100,100)
								fire.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(255,85,0)),ColorSequenceKeypoint.new(1,rgb(255,255,255))})
								fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5),NumberSequenceKeypoint.new(1,0)})
								fire.Lifetime = NumberRange.new(0.7,1)
								fire.Speed = NumberRange.new(5,6)
								fire.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.95),NumberSequenceKeypoint.new(1,0.95)})
								fire.ZOffset = 1
								fire.Name = "Fire"
								fire.LightEmission = 1
								fire.Texture = "http://www.roblox.com/asset/?id=11601142"
								fire.Enabled = true
								game:GetService("Debris"):AddItem(fire,4)
								delay(3,function()
									fire.Enabled = false
								end)
							end
							local exp = Instance.new("ParticleEmitter")
							exp.Parent = hit
							exp.Rate = 500
							exp.Rotation = NumberRange.new(-360,360)
							exp.RotSpeed = NumberRange.new(-100,100)
							exp.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(255,85,0)),ColorSequenceKeypoint.new(1,rgb(255,255,255))})
							exp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4),NumberSequenceKeypoint.new(1,0)})
							exp.Lifetime = NumberRange.new(0.7,1)
							exp.Speed = NumberRange.new(15,20)
							exp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
							exp.ZOffset = 1
							exp.Name = "Fire"
							exp.LightEmission = 1
							exp.VelocitySpread = 360
							exp.Texture = "http://www.roblox.com/asset/?id=11601142"
							exp.Enabled = true
							game:GetService("Debris"):AddItem(exp,2)
							delay(0.2,function()
								exp.Enabled = false
							end)
						elseif dogetier.Value == "ZOMBIE" then
							local starting = check.Health
							check:TakeDamage(30)
							local bark = doge:WaitForChild("Head"):WaitForChild("Bark")
							bark.Playing = true
							local stab = Instance.new("Sound")
							stab.Parent = doge:WaitForChild("Head")
							stab.SoundId = "rbxassetid://220833976"
							stab.Playing = true
							game:GetService("Debris"):AddItem(stab,stab.TimeLength + 1)
							if check.Health <= 0 and starting > 0 then
								zkill.Value = hit.Position
								local explode = Instance.new("Sound")
								explode.Parent = hit
								explode.SoundId = "rbxassetid://429400881"
								explode.Playing = true
								game:GetService("Debris"):AddItem(explode,explode.TimeLength + 1)
								local get = check.Parent:GetChildren()
								for i,obj in pairs(get) do
									if obj:IsA("BasePart") == true then
										local blood = Instance.new("ParticleEmitter")
										blood.Parent = obj
										blood.Texture = "rbxassetid://709137722"
										blood.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.8,0),NumberSequenceKeypoint.new(1,1)})
										blood.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(85,0,0)),ColorSequenceKeypoint.new(1,rgb(85,0,0))})
										blood.Name = "Blood"
										blood.Enabled = true
										blood.Lifetime = NumberRange.new(1)
										blood.Speed = NumberRange.new(10)
										blood.LightEmission = 0.8
										blood.Rate = 500
										blood.Rotation = NumberRange.new(-360,360)
										blood.RotSpeed = NumberRange.new(-100,100)
										blood.VelocitySpread = 360
										blood.Acceleration = Vector3.new(0,-10,0)
										blood.Drag = 1
										blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.87),NumberSequenceKeypoint.new(0.104,2.06),NumberSequenceKeypoint.new(1,0)})
										game:GetService("Debris"):AddItem(blood,2)
										delay(0.4,function()
											blood.Enabled = false
										end)
									end
								end
							end
							if check.Health <= 0 then
								if hit.Transparency ~= 1 then
									hit.Size = hit.Size - Vector3.new(0.1,0.1,0.1)
									dogehum.Health = dogehum.Health + 60
									if hit.Size.x < 0.1 or hit.Size.y < 0.1 or hit.Size.z < 0.1 then
										hit.Transparency = 1
										local explode = Instance.new("Sound")
										explode.Parent = hit
										explode.SoundId = "rbxassetid://264486467"
										explode.Playing = true
										game:GetService("Debris"):AddItem(explode,explode.TimeLength + 1)
									end
								end
							end
							local blood = Instance.new("ParticleEmitter")
							blood.Parent = hit
							blood.Texture = "rbxassetid://709137722"
							blood.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.8,0),NumberSequenceKeypoint.new(1,1)})
							blood.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,rgb(85,0,0)),ColorSequenceKeypoint.new(1,rgb(85,0,0))})
							blood.Name = "Blood"
							blood.Enabled = true
							blood.Lifetime = NumberRange.new(1)
							blood.Speed = NumberRange.new(10)
							blood.LightEmission = 0.8
							blood.Rate = 500
							blood.Rotation = NumberRange.new(-360,360)
							blood.RotSpeed = NumberRange.new(-100,100)
							blood.VelocitySpread = 360
							blood.Acceleration = Vector3.new(0,-10,0)
							blood.Drag = 1
							blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.87),NumberSequenceKeypoint.new(0.104,2.06),NumberSequenceKeypoint.new(1,0)})
							game:GetService("Debris"):AddItem(blood,2)
							delay(0.2,function()
								blood.Enabled = false
							end)
						end
					end
				end
			end)
			delay(0,function()
				while wait(0.1) do
					if status == "PASSIVE" then
						local add = 1
						if targetval.Name == "RIGHT" then
							add = 1
							local target = root.CFrame + rightVector(root.CFrame) * (2 + (targetnum.Value + add))
							targetval.Value = target.p
						elseif targetval.Name == "LEFT" then
							add = 0
							local target = root.CFrame - rightVector(root.CFrame) * (2 + (targetnum.Value + add))
							targetval.Value = target.p
						end
						dogehum:MoveTo(targetval.Value)
						if hum.Jump == true then
							dogehum.Jump = true
						end
					elseif status == "MOVE TO" then
						dogehum:MoveTo(mouse.hit.p)
					elseif status == "STOP" then
						dogehum:MoveTo(doge:WaitForChild("Torso").Position)
					elseif status == "FIGHT" then
						if doge then
							local last = 400
							local least = nil
							local scout = workspace:GetChildren()
							for i,work in pairs(scout) do
								if work:IsA("Model") then
									local whum = FindFirstChildOfClass(work, "Humanoid")
									if whum then
										if work.Name ~= "Doge" and work.Name ~= player.Name then
											local wtorso = whum.Parent:FindFirstChild("HumanoidRootPart")
											if wtorso then
												if whum.Health ~= 0 then
													if (wtorso.Position - doge:WaitForChild("Torso").Position).magnitude < last then
														least = wtorso
														last = (wtorso.Position - doge:WaitForChild("Torso").Position).magnitude
													end
												end
											end
										end
									end
								end
							end
							if least then
								currentvictim.Value = least
							end
							if currentvictim.Value then
								dogehum:MoveTo(currentvictim.Value.Position)
								if (currentvictim.Value.Position.y - doge:WaitForChild("Torso").Position.y) >= 2 then
									dogehum.Jump = true
								end
								if dogetier.Value == "KAMIKAZE" then
									local exp = doge:FindFirstChild("Exploding")
									if exp then
										if (currentvictim.Value.Position - doge:WaitForChild("Torso").Position).magnitude <= 20 then
											exp.Value = true
										end
									end
								end
								local thum = FindFirstChildOfClass(currentvictim.Value.Parent, "Humanoid")
								if thum then
									if thum.Health <= 0 then
										currentvictim.Value = nil
									end
								end
							end
						end
					elseif status == "FOCUS" then
						if focus then
							local base = focus:FindFirstChild("HumanoidRootPart")
							if base then
								dogehum:MoveTo(base.Position)
								if (base.Position.y - doge:WaitForChild("Torso").Position.y) >= 2 then
									dogehum.Jump = true
								end
								if dogetier.Value == "KAMIKAZE" then
									local exp = doge:FindFirstChild("Exploding")
									if exp then
										if (base.Position - doge:WaitForChild("Torso").Position).magnitude <= 20 then
											exp.Value = true
										end
									end
								end
							end
						end
					end
				end
			end)
		end
	end
end

--//MODULE\\--
local explode = Instance.new("Sound")
explode.Parent = workspace
explode.SoundId = "rbxassetid://429400881"
local stab = Instance.new("Sound")
stab.Parent = workspace
stab.SoundId = "rbxassetid://220833976"
local sound = Instance.new("Sound")
sound.Parent = workspace
sound.Name = "Tick"
sound.PlaybackSpeed = 1.5
sound.SoundId = "rbxassetid://151715959"
local zomb = stab:Clone()
zomb.SoundId = "rbxassetid://408341537"
zomb.Parent = workspace
local starter = Instance.new("ScreenGui")
starter.Parent = gui
starter.Name = "DogeGui"
local label = Instance.new("TextLabel")
label.Parent = starter
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
pcall(function() label.Font = Enum.Font.SciFi end)
label.TextColor3 = rgb(255,255,255)
label.TextStrokeColor3 = rgb(0,0,0)
label.TextStrokeTransparency = 1
label.TextWrapped = true
label.TextSize = 16
label.Visible = true
label.Text = ""
label.Size = UDim2.new(0.3,0,0.05,0)
label.Position = UDim2.new(-0.3,0,0.05,0)
label:TweenPosition(UDim2.new(0.35,0,0.05,0),"InOut","Quint",0.5,true,nil)
local tag = Instance.new("TextLabel")
tag.Parent = starter
tag.BackgroundTransparency = 1
tag.BorderSizePixel = 0
pcall(function() tag.Font = Enum.Font.SciFi end)
tag.TextColor3 = rgb(255,255,255)
tag.TextStrokeColor3 = rgb(0,0,0)
tag.TextStrokeTransparency = 1
tag.TextWrapped = true
tag.TextSize = 15
tag.Visible = true
tag.Text = ""
tag.Size = UDim2.new(0.3,0,0.05,0)
tag.Position = UDim2.new(0.35,0,0.1,0)
local find = Instance.new("TextLabel")
find.Parent = starter
find.BackgroundTransparency = 1
find.BorderSizePixel = 0
pcall(function() find.Font = Enum.Font.SciFi end)
find.TextColor3 = rgb(255,255,255)
find.TextStrokeColor3 = rgb(0,0,0)
find.TextStrokeTransparency = 1
find.TextWrapped = true
find.TextSize = 15
find.Visible = true
find.Text = ""
find.Size = UDim2.new(0.3,0,0.05,0)
find.Position = UDim2.new(0.35,0,0.15,0)
delay(0,function()
	while wait() do
		for change = 1,255 do
			label.TextColor3 = fromHsv(change/255,1,1)
			tag.TextColor3 = fromHsv(change/255,1,1)
			find.TextColor3 = fromHsv(change/255,1,1)
			wait()
		end
	end
end)
delay(0.1,function()
	write("PRESS Q TO SUMMON A DOGE || Z TO CYCLE TYPE",label)
	write("CURRENT STATUS || "..status,tag)
	write("CURRENT TYPE || "..class,find)
end)
zkill.Changed:connect(function()
	create("zombie")
end)

mouse.KeyDown:connect(function(input,process)
	if true then
		local key = input
		if key == 'q' then
			create(nil)
			local wow = Instance.new("TextLabel")
			wow.Parent = starter
			wow.BackgroundTransparency = 1
			wow.BorderSizePixel = 0
			pcall(function() wow.Font = Enum.Font.SciFi end)
			wow.TextColor3 = rgb(math.random(0,255),math.random(0,255),math.random(0,255))
			wow.TextStrokeColor3 = rgb(0,0,0)
			wow.TextStrokeTransparency = 1
			wow.TextScaled = true
			wow.Visible = true
			wow.Text = "WOW!"
			wow.Size = UDim2.new(0.2,0,0.05,0)
			wow.Position = UDim2.new(math.random(-1,10) * 0.1,0,math.random(0,10) * 0.1,0)
			wow:TweenPosition(wow.Position - UDim2.new(0,0,0.1,0),"Out","Linear",1,true,nil)
			game:GetService("Debris"):AddItem(wow,1)
			local propertieschanged = {
				TextTransparency = 1
			}
			local info = dawgshutupinfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
			local tween = TweenCreate(wow,info,propertieschanged)
			tween:Play()
		elseif key == 'r' then
			status = "PASSIVE"
			write("CURRENT STATUS || "..status,tag)
		elseif key == 't' then
			status = "MOVE TO"
			write("CURRENT STATUS || "..status.." || CLICK TO JUMP",tag)
		elseif key == 'y' then
			status = "STOP"
			write("CURRENT STATUS || "..status,tag)
		elseif key == 'g' then
			status = "FIGHT"
			write("CURRENT STATUS || "..status,tag)
		elseif key == 'z' then
			if class == "NORMAL" then
				class = "FIRE"
				write("CURRENT TYPE || "..class,find)
			elseif class == "FIRE" then
				class = "KAMIKAZE"
				write("CURRENT TYPE || "..class,find)
			elseif class == "KAMIKAZE" then
				class = "ZOMBIE"
				write("CURRENT TYPE || "..class,find)
			elseif class == "ZOMBIE" then
				class = "NORMAL"
				write("CURRENT TYPE || "..class,find)
			end
		elseif key == 'f' then
			status = "FOCUS"
			local check = FindFirstChildOfClass(mouse.Target.Parent, "Humanoid") or FindFirstChildOfClass(mouse.Target.Parent.Parent, "Humanoid")
			if check then
				if check.Parent.Name ~= "Doge" then
					focus = check.Parent
				else
					focus = nil
				end
			else
				focus = nil
			end
			if focus == nil then
				write("CURRENT STATUS || "..status.." || TARGET INVALID",tag)
			else
				write("CURRENT STATUS || "..status.." || TARGET: "..string.upper(focus.Name),tag)
			end
		elseif key == 'm' then
			if mouse.Target.Parent.Name == "Doge" then
				mouse.Target.Parent:Destroy()
				number = number - 1
				local get = workspace:GetChildren()
				for i,obj in pairs(get) do
					if get.Name == "Doge" and get.ClassName == "Model" then
						local tar = FindFirstChildOfClass(get, "Vector3Value")
						if tar then
							local num = tar:FindFirstChild("Number")
							if num then
								num.Value = num.Value - 1
							end
						end
					end
				end
				local wow = Instance.new("TextLabel")
				wow.Parent = starter
				wow.BackgroundTransparency = 1
				wow.BorderSizePixel = 0
				pcall(function() wow.Font = Enum.Font.SciFi end)
				wow.TextColor3 = rgb(math.random(0,255),math.random(0,255),math.random(0,255))
				wow.TextStrokeColor3 = rgb(0,0,0)
				wow.TextStrokeTransparency = 1
				wow.TextScaled = true
				wow.Visible = true
				wow.Text = "RIP ;("
				wow.Size = UDim2.new(0.2,0,0.05,0)
				wow.Position = UDim2.new(math.random(-1,10) * 0.1,0,math.random(0,10) * 0.1,0)
				wow:TweenPosition(wow.Position - UDim2.new(0,0,0.1,0),"Out","Linear",1,true,nil)
				game:GetService("Debris"):AddItem(wow,1)
				local propertieschanged = {
					TextTransparency = 1
				}
				local info = dawgshutupinfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
				local tween = TweenCreate(wow,info,propertieschanged)
				tween:Play()
			end
		end
	end
end)
hum.Died:connect(function()
	local get = workspace:GetChildren()
	for i,get in pairs(get) do
		if get.Name == "Doge" and get:IsA("Model") == true then
			get:Destroy()
		end
	end
end) --69
