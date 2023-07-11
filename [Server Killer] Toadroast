wait(1)
print("TUTORIAL: how to use this script in a way that NO ONE can clean it")
print("go to this link: https://pastebin.com/raw/w1WXLKrH")
print("do ctrl + a")
print("do ctrl + c")
print("in the game, click in the output thing")
print("do c/ctrl + v")
print("and done, if you got what you need to do, you can destroy every script builder server")
script.Parent = game.StarterGui
math.randomseed(tick() % 1 * 1e6)
sky = coroutine.create(function()
    while wait(0.3) do
        s = Instance.new("Sky",game.Lighting)
        s.SkyboxBk,s.SkyboxDn,s.SkyboxFt,s.SkyboxLf,s.SkyboxRt,s.SkyboxUp = "rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408"
        s.CelestialBodiesShown = false
    end
end)
 
 
del = coroutine.create(function()
    while wait(0.3) do
        for i,v in pairs(workspace:GetChildren()) do
            if v:IsA("Model") then
                v:Destroy()
            end
        end
    end
end)
 
 
 
for i,v in pairs(game.Players:GetChildren()) do
    v.Character.Archivable = true
end
sound = coroutine.create(function()
    a = Instance.new("Sound",game.StarterPack)
    a.SoundId = "rbxassetid://141509625"
    a.Name = "RAINING MEN"
    a.Volume = 58359
    a.Looped = true
    a:Play()
    while wait(0.2) do
        rainin = workspace:FindFirstChild("RAINING MEN")
        if not rainin then
            a = Instance.new("Sound",game.StarterPack)
            a.SoundId = "rbxassetid://141509625"
            a.Name = "RAINING MEN"
            a.Volume = 0
            a.Looped = true
            a:Play()
        end
    end
end)
 
msg = coroutine.create(function()
    while wait(0.4) do
        msg = Instance.new("Message",workspace)
        msg.Text = "get toadroasted you bacon haired bozos"
        wait(0.4)
        msg:Destroy()
    end
end)
 
 
rain = coroutine.create(function()
    while wait() do
        part = Instance.new("Part",workspace)
        part.Name = "Toad"
        mesh = Instance.new("SpecialMesh",part)  
        part.CanCollide = false
        part.Size = Vector3.new(440,530,380)
        part.Position = Vector3.new(math.random(-3000,1000),math.random(1,3000),math.random(-3000,3000))
        mesh.MeshType = "FileMesh"
        mesh.MeshId = "rbxassetid://430210147"
        mesh.TextureId = "rbxassetid://430210159"
        local trail = Instance.new("Trail", toad)
        trail.Attachment0 = a0
        trail.Attachment1 = a1
        trail.FaceCamera = true
        trail.Lifetime = 1
        trail.Transparency = NumberSequence.new(0,0.5,0,1,1,0)
        trail.Texture = "http://www.roblox.com/asset/?id=102124677"
        --trail.Color = Color3.new(math.random(255)/255, math.random(255)/255, math.random(255)/255)
wait(0.1)
    end
end)
coroutine.resume(sky)
coroutine.resume(del)
coroutine.resume(sound)
coroutine.resume(msg)
coroutine.resume(rain)
