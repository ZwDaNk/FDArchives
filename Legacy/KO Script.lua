times = 1000
me = game.Players.yourusername
target = game.Players.noobsusernameingame
target.Character.Parent = nil 
C = target.Character 
tag = Instance.new("ObjectValue") 
tag.Name = "creator" 
tag.Value = me 
tag.Parent = target.Character.Humanoid 
for i = 1, times + 1 do 
target.Character = nil 
target.Character = C 
end 
C.Parent = game.Workspace 
C:BreakJoints() 
game.Workspace:BreakJoints()
