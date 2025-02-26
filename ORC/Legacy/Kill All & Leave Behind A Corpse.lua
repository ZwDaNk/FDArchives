-- Written by Java for older clients (2007 (?) - present)
for _,plrs in pairs(game.Players:GetChildren()) do
plrs.Character.Humanoid.Health = 0
plrs.Character.Humanoid:Destroy()
end
