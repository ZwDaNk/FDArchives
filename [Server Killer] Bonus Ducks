while wait(.1) do
	local duck = Instance.new("Part", game.Workspace)
	duck.Size = Vector3.new(40,40,40)
	local asd = Instance.new("FileMesh", duck)
	asd.MeshId = "rbxassetid://521754610"
	asd.TextureId = "rbxassetid://521754612"
	asd.Scale = Vector3.new(40,40,40)
	duck.CanCollide = false
	duck.CFrame = CFrame.new(math.random(-1000,1000), math.random(300,700), math.random(-1000,1000))
	local quack = Instance.new("Sound", duck)
	quack.SoundId = "rbxassetid://198462271"
	quack.Volume = 5
	quack:Play()
	game.Debris:AddItem(quack, 0.5)
end
