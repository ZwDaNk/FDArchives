-- Written by Java for older clients (<2014)
for _,plrs in pairs(game.Players:GetChildren()) do
plrs.Character.Humanoid.Health = 0
plrs.Character.Humanoid:Destroy()
end
