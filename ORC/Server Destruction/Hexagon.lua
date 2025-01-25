-- cc --
function getDescendants(inst)
	local desc = {}
	local function recurse(obj)
		for _, child in pairs(obj:GetChildren()) do
			table.insert(desc, child)
			recurse(child)
		end
	end
	recurse(inst)
	return desc
end

for _,v in pairs(getDescendants(workspace)) do
	if v:IsA("BasePart") then
		for i = 0, 5 do
			local d = Instance.new("Decal", v)
			d.Texture = "rbxassetid://129069756797665"
			d.Name = "HACKEDBYHEXAGON"
			d.Face = i
		end
		
		local p = Instance.new("ParticleEmitter", v)
		p.Texture = "rbxassetid://129069756797665"
		p.VelocitySpread = 360
		p.Rate = 50
		p.Name = "HACKEDBYHEXAGON"
	end
end

for _,v in pairs(game:GetService("Lighting"):GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
local faces = {"Bk","Ft","Dn","Up","Rt","Lf"}
local sky = Instance.new("Sky", game:GetService("Lighting"))
for _,v in pairs(faces) do
	sky["Skybox"..v] = "rbxassetid://129069756797665"
end
sky.Name = "HACKEDBYHEXAGON"

for _,v in pairs(game:GetChildren()) do
	pcall(function() v.Name = "HACKEDBYHEXAGON" end) -- hacky lool
end
