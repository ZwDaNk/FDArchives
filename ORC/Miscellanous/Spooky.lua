-- chessboi_420

local lighting = game:GetService("Lighting")
lighting.TimeOfDay = "00:00:00"
lighting.FogColor = Color3.new(0,0,0)
lighting.FogEnd = 100
lighting.FogStart = 10

function rain(char)
	local rain = Instance.new("Part",workspace)
	rain.Name = "RainPart"
	rain.Anchored = true
	rain.CanCollide = false
	rain.Transparency = 1
	rain.Size = Vector3.new(128, 1, 128)
	
	local particles = Instance.new("ParticleEmitter",rain)
	particles.Texture = "rbxassetid://1742722513"
	particles.Size = NumberSequence.new(20,20)
	particles.Transparency = NumberSequence.new(0.9,0.9)
	particles.Lifetime = NumberRange.new(1,1)
	particles.Rate = 100
	particles.Speed = NumberRange.new(100,100)
	particles.EmissionDirection = Enum.NormalId.Bottom
	
	while true do wait()
		rain.Position = char.Torso.Position + Vector3.new(0,100,0)
	end
end

game:GetService("Players").PlayerAdded:Connect(function(v)
	v.CharacterAdded:Connect(function(c)
		c.Humanoid.WalkSpeed = 10
		c.Humanoid.JumpPower = 35
		coroutine.wrap(rain)(c)
	end)
end)

for i,v in pairs(game:GetService("Players"):GetChildren()) do
	if v:IsA("Player") then
		local char = v.Character
		char.Humanoid.WalkSpeed = 10
		char.Humanoid.JumpPower = 35
		coroutine.wrap(rain)(char)
		
		v.CharacterAdded:Connect(function(c)
			c.Humanoid.WalkSpeed = 10
			c.Humanoid.JumpPower = 35
			coroutine.wrap(rain)(c)
		end)
	end
end
