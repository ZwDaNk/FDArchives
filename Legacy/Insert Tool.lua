M = Game:GetService("InsertService"):LoadAsset(23456449) 

M.Parent = Game.Workspace 

M:MakeJoints() 

M:MoveTo(Game.Workspace.YOURNAMEHERE.Torso.Position + Vector3.new(0, 0, 0))
