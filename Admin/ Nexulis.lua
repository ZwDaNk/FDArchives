-- __  __                          ___                  
--/\ \/\ \                        /\_ \    __           
--\ \ `\\ \     __   __  _  __  __\//\ \  /\_\    ____  
-- \ \ , ` \  /'__`\/\ \/'\/\ \/\ \ \ \ \ \/\ \  /',__\ 
--  \ \ \`\ \/\  __/\/>  </\ \ \_\ \ \_\ \_\ \ \/\__, `\
--   \ \_\ \_\ \____\/\_/\_\\ \____/ /\____\\ \_\/\____/
--    \/_/\/_/\/____/\//\/_/ \/___/  \/____/ \/_/\/___/ 
--------------------------Version Beta--------------------------
---------------------------------------------------------------
---------------------------N3xul---------------------------
---------------------------------------------------------------

local gCoreGui = game:GetService('CoreGui')
local gPlayers = game:GetService('Players')
local gLighting = game:GetService('Lighting')
local gWorkspace = game:GetService('Workspace')
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local char = Player.Character
local LP = gPlayers.LocalPlayer
local MOUSE = LP:GetMouse()

local gPlayers = game:GetService("Players")
local admin = gPlayers.LocalPlayer.Name

local services={}
local cmds={}
local std={}
local origsettings = {abt = game.Lighting.Ambient, brt = game.Lighting.Brightness, time = game.Lighting.TimeOfDay, fclr = game.Lighting.FogColor, fe = 
game.Lighting.FogEnd, fs = game.Lighting.FogStart}
function FIND_CHILD(PATH, NAME) if PATH:FindFirstChild(NAME) then return true end return false end

local Version = '1.9'

wait(0.1)

services.players=gPlayers
services.lighting=game:GetService('Lighting')
services.workspace=game:GetService('Workspace')
services.events = {}
local user = gPlayers.LocalPlayer
local gCoreGui = game:GetService('CoreGui')
local gPlayers = game:GetService('Players')
local gLighting = game:GetService('Lighting')
local gWorkspace = game:GetService('Workspace')

local cmdprefix=';'
local scriptprefix='\\'
local split=" "

-------------------------
-----Ban information-----
-------------------------

local BanFolder = Instance.new("Fire", game.ContextActionService)
BanFolder.Name = "BanList"
BanFolder.RobloxLocked = true
_G.Banned = function(Ban)
        local SValue = Instance.new("StringValue", BanFolder)
        SValue.Value = Ban
        SValue.RobloxLocked = true
end

BannedPlayers = {
	'norma832', -- oh my god leave me alone
	'LordCrazy13' -- u are just annoying
}

------------------------
-------Admin Data-------
------------------------

local AdminFolder = Instance.new("Folder", game.ContextActionService)
AdminFolder.Name = "AdminList"
AdminFolder.RobloxLocked = true
_G.Admin = function(Admin)
	local SValue = Instance.new("StringValue", AdminFolder)
	SValue.Value = Admin
	SValue.RobloxLocked = true
end

------------------------
-----Defines Admins-----
------------------------

local admins = {
	'DontAddAnything(MakesItBug)',
}

-------------------------------------------
---Commands that show up in the CMD list---
-------------------------------------------

CMDs = {
	'1. ff player',
	'2. unff player',
	'3. fire player',
	'4. unfire player',
	'5. sparkles player',
	'6. unsparkles player',
	'7. smoke player',
	'8. unsmoke player',
	'9. btools player',
	'10. god player',
	'11. sgod player',
	'12. ungod player',
	'13. heal player',
	'14. freeze player',
	'15. thaw player',
	'16. kill player',
	'17. sound',
	'18. volume',
	'19. pitch',
	'20. explode player',
	'21. invisible player',
	'22. visible player',
	'23. goto player',
	'24. bring player',
	'25. tp player',
	'26. char player',
	'27. speed player',
	'28. time',
	'29. kick player',
	'30. ban player',
	'31. unlockws',
	'32. unanchorws',
	'33. hat player',
	'34. gear player',
	'35. m "message"',
	'36. skick player',
	'37. admin player',
	'38. unadmin player',
	'39. firstp player',
	'40. thirdp player',
	'41. chat player',
	'42. insert',
	'43. name player',
	'44. unname player',
	'45. stun player',
	'46. unstun player',
	'47. sit player',
	'48. guest player',
	'49. damage player',
	'50. view player',
	'51. unview player',
	'52. nolimbs player',
	'53. box player 1012',
	'54. nobox player',
	'55. ghost player',
	'56. sphere player',
	'57. loadmap',
	'58. sky',
	'59. ambient',
	'60. gui',
	'61. jail player',
	'62. unjail player',
	'63. shutdown',
	'64. animation player',
	'65. normal player',
	'66. creeper player',
	'67. uncreeper player',
	'68. shrek player',
	'69. unshrek player',
	'70. spam',
	'71. nospam',
	'72. control player',
	'73. nuke player',
	'74. infect player',
	'75. uninfect player',
	'76. duck player',
	'77. unduck player',
	'78. disable player',
	'79. enable player',
	'80. size player',
	'81. confuse player',
	'82. unconfuse player',
	'83. clone player',
	'84. spin player',
	'85. unspin player',
	'86. dog player',
	'87. undog player',
	'88. tptool',
	'89. loopsit player',
	'90. unloopsit player',
	'91. loopjump player',
	'92. unloopjump player',
	'93. loopheal player',
	'94. unloopheal player',
	'95. fling player',
	'96. ayylmao player',
	'97. nograv player',
	'98. grav player',
	'99. seizure player',
	'100. unseizure player',
	'101. cape 1012',
	'102. uncape',
	'103. paper player',
	'104. punish player',
	'105. unpunish player',
	'106. disco',
	'107. undisco',
	'108. lockws',
	'109. base',
	'110. fix',
	'111. flood',
	'112. spookyify',
	'113. explorer (Possible crash)',
	'114. decalspam ID',
	'115. wtrbtools',
	'116. respawn',
	'117. lightsaber',
	'118. draw',
	'119. devuzi',
	'- float player',
	'- unfloat player',
	'- noclip',
	'- clip',
	'- prefix <string>',
	'- admins',
	'- bans',
	'- cmds',
	'- version'
}

-------
--Lib--
-------

updateevents=function()
	for i,v in pairs(services.events) do services.events:remove(i) v:disconnect() end
	for i,v in pairs(gPlayers:players())do
		local ev = v.Chatted:connect(function(msg) do_exec(msg,v) end)
		services.events[#services.events+1] = ev
	end
end

std.inTable=function(tbl,val)
    if tbl==nil then return false end

    for _,v in pairs(tbl)do
        if v==val then return true end
    end 
	return false
end

std.out=function(str)
    print(str)
end

std.list=function(tbl)
    local str=''
    for i,v in pairs(tbl)do
        str=str..tostring(v)
        if i~=#tbl then str=str..', ' end
    end 
	return str
end

std.endat=function(str,val)
    local z=str:find(val)
    if z then 
		return str:sub(0,z-string.len(val)),true
    else 
		return str,false 
	end
end

std.first=function(str) return str:sub(1,1) end

isAdmin=function(name)
    if name==admin then
        return true
    elseif admins[name]==true then
        return true
    end
    return false
end

local exec=function(str)
    spawn(function()
        local script, loaderr = loadstring(str)
        if not script then
            error(loaderr)
        else
        	script()
		end
    end)
end

local findCmd=function(cmd_name)
    for i,v in pairs(cmds)do
        if v.NAME:lower()==cmd_name:lower() or std.inTable(v.ALIAS,cmd_name:lower())then
            return v
        end
    end
end

local getCmd=function(msg)
    local cmd,hassplit=std.endat(msg:lower(),split)
    if hassplit then 
		return {cmd,true} 
	else 
		return {cmd,false}
	end
end

local getprfx=function(strn)
    if strn:sub(1,string.len(cmdprefix))==cmdprefix then return{'cmd',string.len(cmdprefix)+1}
    elseif strn:sub(1,string.len(scriptprefix))==scriptprefix then return{'exec',string.len(scriptprefix)+1}
    end return
end

local getArgs=function(str)
    local args={}
    local new_arg=nil
    local hassplit=nil
    local s=str
    repeat
        new_arg,hassplit=std.endat(s:lower(),split)
        if new_arg~='' then
            args[#args+1]=new_arg
            s=s:sub(string.len(new_arg)+string.len(split)+1)
        end
    until hassplit==false
    return args
end

local function execCmd(str, plr)
    local s_cmd
    local a
    local cmd
    s_cmd = getCmd(str)
    cmd = findCmd(s_cmd[1])
    if cmd == nil then return end
    a = str:sub(string.len(s_cmd[1]) + string.len(split) + 1)
    local args=getArgs(a)

    pcall(function()
	cmd.FUNC(args, plr)
	end)
end

function do_exec(str,plr)
	if not isAdmin(plr.Name)then return end	
	
    str=str:gsub('/e ','')

    local t=getprfx(str)
    if t==nil then return end
    str=str:sub(t[2])
    if t[1]=='exec' then
        exec(str)
    elseif t[1]=='cmd' then
        execCmd(str, plr)
    end
end

updateevents()
_G.exec_cmd = execCmd
--game.Players.LocalPlayer.Chatted:connect(doexec)

local _char=function(plr_name)
    for i,v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then
            if v.Name==plr_name then return v.Character end
        end
    end
    return
end

local _plr=function(plr_name)
    for i,v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then
            if v.Name==plr_name then return v end
        end
    end
    return
end

function addcmd(name,desc,alias,func)
    cmds[#cmds+1]=
    {
        NAME=name;
        DESC=desc;
        ALIAS=alias;
        FUNC=func;
    }
end

local function getPlayer(name)
	local nameTable = {}
	name=name:lower()
	if name == "me" then
		nameTable[#nameTable+1]=admin
	elseif name == "others" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then
                if v.Name~=admin then
                    nameTable[#nameTable+1]=v.Name
                end
            end
		end
	elseif name == "all" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then 
                nameTable[#nameTable+1]=v.Name
            end
		end
	else
		for i,v in pairs(gPlayers:GetChildren()) do
			local lname = v.Name:lower()
			local i,j = lname:find(name)
			if i == 1 then
				return {v.Name}
			end
		end
	end
	return nameTable
end

---------------
---Cape Info---
---------------

local capeColor = 1012

function Cape(playerCaped)

if playerCaped.Character:FindFirstChild("Cape") ~= nil then
	playerCaped.Character.Cape:Destroy()
end

repeat
	wait()
until playerCaped and playerCaped.Character and playerCaped.Character:FindFirstChild("Torso")

local Torso = playerCaped.Character.Torso

local Cape = Instance.new("Part", Torso.Parent)
Cape.Name = "Cape"
Cape.Anchored = false
Cape.CanCollide = false
Cape.TopSurface = 0
Cape.BottomSurface = 0
Cape.BrickColor = BrickColor.new("" .. capeColor)
Cape.Material = "Neon"
Cape.formFactor = "Custom"
Cape.Size = Vector3.new(0.2,0.2,0.2)

local msh = Instance.new("BlockMesh", Cape)
msh.Scale = Vector3.new(9,17.5,.5)

local motor1 = Instance.new("Motor", Cape)
motor1.Part0 = Cape
motor1.Part1 = Torso

motor1.MaxVelocity = 1
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)

local wave = false

repeat wait(1/44)
local ang = 0.2
local oldmag = Torso.Velocity.magnitude
local mv = .1

if wave then
	ang = ang + ((Torso.Velocity.magnitude/10) * .05) + 1
	wave = false
else
	wave = false
end
ang = ang + math.min(Torso.Velocity.magnitude/30, 1)
motor1.MaxVelocity = math.min((Torso.Velocity.magnitude/10), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.05 and motor1.DesiredAngle > -.05 then
	motor1.MaxVelocity = .04
end
repeat
	wait()
until 
motor1.CurrentAngle == motor1.DesiredAngle or math.abs(Torso.Velocity.magnitude - oldmag)  >= (Torso.Velocity.magnitude/10) + 1
if Torso.Velocity.magnitude < .1 then
	wait(.1)
end
until not Cape or Cape.Parent ~= Torso.Parent
end

game.Lighting.Outlines = false -- outlines look ugly

----------------
----Commands----
----------------

addcmd('ff','gives ff to player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        Instance.new("ForceField", pchar)
    end
end)

addcmd('unff', 'takes away ff from player',{'unff'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar:GetChildren()) do
			if v1:IsA("ForceField") then
				v1:Destroy()
			end
		end
    end
end)

addcmd('fire', 'set a player on fire',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        local Fire1 = Instance.new("Fire", pchar.Head)
        local Fire2 = Instance.new("Fire", pchar.Torso)
        local Fire3 = Instance.new("Fire", pchar["Left Arm"])
        local Fire4 = Instance.new("Fire", pchar["Right Arm"])
        local Fire5 = Instance.new("Fire", pchar["Left Leg"])
        local Fire6 = Instance.new("Fire", pchar["Right Leg"])
        Fire1.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire1.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire2.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire2.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire3.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire3.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire4.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire4.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire5.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire5.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire6.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire6.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
    end
end)

addcmd('nofire', 'extinguish a player',{'unfire'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Head:GetChildren()) do
			if v1:IsA("Fire") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar.Torso:GetChildren()) do
			if v1:IsA("Fire") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Left Arm"]:GetChildren()) do
			if v1:IsA("Fire") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Right Arm"]:GetChildren()) do
			if v1:IsA("Fire") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Left Leg"]:GetChildren()) do
			if v1:IsA("Fire") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Right Leg"]:GetChildren()) do
			if v1:IsA("Fire") then
				v1:Destroy()
			end
		end
    end
end)

addcmd('sparkles', 'give a player sparkles',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        local Sparkles1 = Instance.new("Sparkles", pchar.Head)
        local Sparkles2 = Instance.new("Sparkles", pchar.Torso)
        local Sparkles3 = Instance.new("Sparkles", pchar["Left Arm"])
        local Sparkles4 = Instance.new("Sparkles", pchar["Right Arm"])
        local Sparkles5 = Instance.new("Sparkles", pchar["Left Leg"])
        local Sparkles6 = Instance.new("Sparkles", pchar["Right Leg"])
        Sparkles1.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles2.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles3.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles4.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles5.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles6.Color = Color3.new((args[2]),(args[3]),(args[4]))
    end
end)

addcmd('nosparkles', 'remove sparkles from a player',{'unsparkles'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Head:GetChildren()) do
			if v1:IsA("Sparkles") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar.Torso:GetChildren()) do
			if v1:IsA("Sparkles") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Left Arm"]:GetChildren()) do
			if v1:IsA("Sparkles") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Right Arm"]:GetChildren()) do
			if v1:IsA("Sparkles") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Left Leg"]:GetChildren()) do
			if v1:IsA("Sparkles") then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar["Right Leg"]:GetChildren()) do
			if v1:IsA("Sparkles") then
				v1:Destroy()
			end
		end
    end
end)

addcmd('smoke', 'give a player smoke',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        Instance.new("Smoke", pchar.Torso)
    end
end)

addcmd('unsmoke', 'remove smoke from a player',{'nosmoke'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Torso:GetChildren()) do
			if v1:IsA("Smoke") then
				v1:Destroy()
			end
		end
    end
end)

addcmd('btools', 'gives a player btools',{},
function(args)
    local players = getPlayer(args[1])
    if players ~= nil then
		for i, v in pairs(players) do
	  		Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 2
			Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 3
			Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 4
			Notify('Gave ' .. gPlayers[v].Name .. ' btools')
		end
	end
end)

addcmd('devuzi', 'its da dev uzi',{},
function(args)
wait(0.001); 

--------------------------------------------------------------------------------------

_clear=function()
        local c={char;bag;gui;};
        for i=1,#c do
                local c=c[i]:children();
                for i=1,#c do
                        if(c[i].Name==name)then
                                c[i].Parent=nil;
                        end;
                end;
        end;
        local n=name..user.Name;
        local c=workspace:children();
        for i=1,#c do
                if(c[i].Name==n)then
                        c[i].Parent=nil;
                end;
        end;
end;

_valid_key=function(object,key)
        return object[key],key;
end;

_new=function(class)
        return function(props)
                if(type(list_base_props)=='table')then
                        for i,v in next,list_base_props do
                                if(props[i]==nil)then
                                        props[i]=v;
                                end;
                        end;
                end;
                
                local object=class;
                
                if(type(class)=='string')then
                        object=Instance.new(class:sub(1,1):upper()..class:sub(2));
                end;
                
                local parent=props[1];
                        props[1]=nil;
                
                for i,v in next,props do
                        local load,res,key=pcall(_valid_key,object,i:sub(1,1):upper()..i:sub(2));
                        if(not load)then
                                load,res,key=pcall(_valid_key,object,i);
                        end;
                        
                        if(key)then
                                t=type(res);
                                s=tostring(res);
                                if(t=='userdata'and s=='Signal '..key)then
                                        if(type(v)=='table')then
                                                for i=1,#v do
                                                        res:connect(v[i]);
                                                end;
                                        else
                                                res:connect(v);
                                        end;
                                else
                                        object[key]=v;
                                end;
                        end;
                end;
                
                if(parent)then
                        object.Parent=parent;
                end;
                
                return object;
        end;
end;

_RGB=function(r,g,b)
        return Color3.new(r/255,g/255,b/255);
end;

_copy=function(o)
        local def=o.archivable;
        o.archivable=true;
        local c=o:clone();
        o.archivable=def;
        return c;
end;

_hum=function(char)
        local hum=char:findFirstChild'Humanoid';
        if(not hum or hum.className~='Humanoid')then
                local c=char:children();
                for i=1,#c do
                        if(c[i].className=='Humanoid')then
                                return c[i];
                        end;
                end;
        else
                return hum;
        end;
end;

_hum_tag=function(hum)
        local c=hum:findFirstChild'creator'or Instance.new('ObjectValue',hum);
                c.Name='creator';
                c.Value=user;
        if(hum.Health==0 and not hum:findFirstChild'killed')then
                Instance.new('BoolValue',hum).Name='killed';
                bullets.clip=bullets.clip+10;
        end;
end;

_hum_dam=function(hum,dam,percent)
        hum.Health=hum.Health-(percent and hum.MaxHealth*(dam*0.01)or dam);
        if(hum.Health<=hum.MaxHealth*0.1)then
                _hum_tag(hum);
        end;
end;

_ray=function(v0,v1,i)
        local mag=(v0-v1).magnitude;
        local ray=Ray.new(v0,(v1-v0).unit*(mag>999 and 999 or mag));
        
        return(type(i)=='table'and workspace.FindPartOnRayWithIgnoreList or workspace.FindPartOnRay)(workspace,ray,i);
end;

_must=function(v0,v1,i)
        local hit,pos=_ray(v0,v1,i);
        return not hit and mouse.target or hit,pos;
end;

_cframe=function(x,y,z,r0,r1,r2)
        return CFrame.Angles(
                math.rad(r0 or 0),
                math.rad(r1 or 0),
                math.rad(r2 or 0)
        )*CFrame.new(x,y,z);
end;

_update=function()
        if(bool_active and not screen.Parent)then
                screen.Parent=gui;
        elseif(not bool_active and screen.Parent)then
                screen.Parent=nil;
        end;
end;

_light=function(v0,v1)
        local mag=(v0-v1).magnitude;
        local len=math.random(2,7);
                len=len>mag/2 and mag/2 or len;
        
        local light=_new'part'{
                cFrame=CFrame.new(v0,v1);
                size=Vector3.new(1,1,1);
                color=_RGB(255,255,0);
                anchored=true;
                inv;
        };
                _new'blockMesh'{
                        scale=Vector3.new(0.2,0.2,len);
                        offset=Vector3.new(0,0,-len/2);
                        light;
                };
                
        local bb=_new'billboardGui'{
                size=UDim2.new(2,0,2,0);
                adornee=light;
                light;
        };
                _new'imageLabel'{
                        image=url:format(109101526);
                        backgroundTransparency=1;
                        size=UDim2.new(1,0,1,0);
                        bb;
                };
                
        _rem(light,0.15);
end;

_rem=function(object,del)
        if(del)then
                delay(del,function()
                        if(object.Parent)then
                                object.Parent=nil;
                        end;
                end);
        else
                pcall(function()
                        if(object.Parent)then
                                object.Parent=nil;
                        end;
                end);
        end;
end;

_blood=function(pos,count)
        for i=1,count do
                local p=_new'part'{
                        rotVelocity=Vector3.new(math.random(),math.random(),math.random())*50;
                        position=pos+Vector3.new(math.random(),math.random(),math.random());
                        velocity=Vector3.new(math.random(),math.random(),math.random())*50;
                        size=Vector3.new(math.random(),math.random(),math.random())/3;
                        color=_RGB(255,0,0);
                        transparency=0.5;
                        canCollide=true;
                        bottomSurface=0;
                        topSurface=0;
                        formFactor=3;
                        locked=true;
                        inv;
                };
                delay(5,function()
                        p.Parent=nil;
                end);
        end;
end;

_make_hue=function()
        h_hue=_new'part'{
                size=Vector3.new(0.25,1.8,0.35);
                color=_RGB(100,100,100);
                formFactor=3;
                name='hue';
                handle;
        };
        hh_weld=_new'weld'{
                c1=_cframe(0,0.5,0);
                part0=handle;
                part1=h_hue;
                handle;
        };
end;

_shot=function(v0,v1)
        if(not time_left)then
                time_left=0;
        end;
        if(time_left>time())then
                return nil;
        else
                time_left=time()+math.random(1,10)/100;
        end;
        
        if(bullets.current<1)then
                local tick_sound=head:findFirstChild'tick_sound'or _new'sound'{
                        soundId='rbxasset://sounds/SWITCH3.wav';
                        name='tick_sound';
                        volume=0.2;
                        pitch=2;
                        head;
                };
                tick_sound:play();
                if(bullets.clip>0)then
                        time_left=time()+2;
                        h_hue:breakJoints();
                        h_hue.CanCollide=true;
                        h_hue.Velocity=(h_hue.CFrame*CFrame.new(0,5,0)).lookVector*10;
                        _rem(h_hue,10);
                        delay(1.9,function()
                                _make_hue();
                                local got=(bullets.clip>bullets.maximum and 
                                        bullets.maximum or 
                                        bullets.clip)-bullets.current;

                                bullets.clip=bullets.clip-got;
                                bullets.current=bullets.current+got;
                        end);
                end;
                return nil;
        else
                bullets.current=bullets.current-1;
                
                h_weld.C1=_cframe(0,0.75,0,
                                        -math.random(1000,1100)/10,180,0);
                d_weld.C1=_cframe(0,-0.25,0.3);
                
                lightstuff.Visible=true;
                delay(0.1,function()
                        lightstuff.Visible=false;
                end);
                
                _rem(_new'part'{
                        velocity=CFrame.new(drag.Position,(drag.CFrame*CFrame.new(-4,-5,0)).p).lookVector*10;
                        cFrame=drag.CFrame*CFrame.new(-0.5,0,0);
                        size=Vector3.new(0.1,0.1,0.4);
                        color=_RGB(200,200,0);
                        material='Slate';
                        canCollide=true;
                        formFactor=3;
                        inv;
                },5);
                delay(0.1,function()
                        d_weld.C1=_cframe(0,-0.25,0);
                        if(bool_active)then
                                h_weld.C1=h_weld_cf_active;
                        end;
                end)
        end;
        
        local hit,pos=_must(v0,v1,char);
        
        shot_sound:play();
        
        _light(v0,v1);
        
        if(not hit)then return nil;end;
        
        if(hit.Parent.className=='Hat')then
                hit:breakJoints();
                hit.CanCollide=true;
                hit.Velocity=CFrame.new(v0,pos).lookVector*math.random(30,50);
                hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90));
        else
                local hum=_hum(hit.Parent);
                if(not hum)then
                        if(hit.Anchored==false and hit.Size.magnitude<4)then
                                hit:breakJoints();
                                hit.CanCollide=true;
                        end;
                else
                        _hum_dam(hum,math.random(4,6));
                        _blood(pos,math.random(3,6));
                        hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90))/6;
                        if(hit.Name=='Head')then
                                hum.Health=0;
                                _blood(pos,math.random(3,6));
                                delay(0.001,function()
                                        _new(workspace:FindFirstChild'head_shot'or'sound'){
                                                pitch=math.random(70,100)*0.01;
                                                soundId=url:format(1876552);
                                                name='head_shot';
                                                workspace;
                                        }:play();
                                end);
                                _hum_tag(hum);
                                _rem(_new'part'{
                                        cFrame=CFrame.new(v0,pos)*CFrame.new(0,0,-(v0-pos).magnitude*0.5);
                                        size=Vector3.new(0.1,0.1,(v0-pos).magnitude);
                                        color=torso.Color;
                                        transparency=0.5;
                                        canCollide=false;
                                        bottomSurface=0;
                                        anchored=true;
                                        formFactor=3;
                                        topSurface=0;
                                        inv;
                                },30);
                                hit.Parent=nil;
                                for b=0,1 do
                                        for a=0,1 do
                                                for i=0,1 do
                                                        _rem(_new'part'{
                                                                velocity=CFrame.new(v0,pos).lookVector*20;
                                                                cFrame=hit.CFrame*CFrame.new(i,-b,a);
                                                                size=Vector3.new(0.5,0.5,0.5);
                                                                color=_RGB(255,255,255);
                                                                bottomSurface=0;
                                                                canCollide=true;
                                                                transparency=0;
                                                                formFactor=3;
                                                                topSurface=0;
                                                                hum;
                                                        },30);
                                                end;
                                        end;
                                end;
                        end;
                end;
        end;
end;

----------------------------------------------------------------------------------------

_cf_select=function(mouse)
        mouse.Icon=url:format(109111387);--108999296
        bool_active=true;
        
        local arm=char:findFirstChild'Right Arm';
        local weld=torso:findFirstChild'Right Shoulder';
        if(arm and weld)then
                h_weld.Part0=arm;
                h_weld.C1=h_weld_cf_active;
                
                weld.Part1=nil;
                weld.Part0=nil;
                
                weld=_new(torso:findFirstChild'right_arml'or'weld'){
                        name='right_arml';
                        part0=torso;
                        part1=arm;
                        torso;
                };
                
                arml=(arml or 0)+1;
                local alv=arml;
                local gyro=torso:findFirstChild'p_gyro'or Instance.new('BodyGyro',torso);
                        gyro.maxTorque=Vector3.new(5e5,5e5,5e5);
                        gyro.P=30000;
                        gyro.D=1000;
                        gyro.Name='p_gyro';
                repeat
                        local pos=mouse.hit.p;
                        local val,valp,p0,p1,p2,hitpos,cj,c0,c1;
                        
                        val=-math.pi*0.5;
                        valp=val*-1;
                        p0=torso.CFrame;
                        p0=p0+((p0*CFrame.Angles(valp,0,0)).lookVector*0.5)+(p0*CFrame.Angles(0,val,0)).lookVector;
                        p1=p0+((p0.p-pos).unit*-2);
                        p2=CFrame.new((p0.p+p1.p)/2,p0.p)*CFrame.Angles(val,val,0);
                        hitpos=torso.Position;
                        cj=CFrame.new(hitpos);
                        c0=torso.CFrame:inverse()*cj;
                        c1=p2:inverse()*cj;
                        weld.C0=c0;
                        weld.C1=c1;
                        
                        gyro.cframe=CFrame.new(torso.Position,Vector3.new(pos.X,torso.Position.Y,pos.Z));
                        
                        wait(0.001);
                until arml~=alv;
                gyro.Parent=nil;
        end;
end;

_cf_deselect=function()
        bool_active=false;
        arml=(arml or 0)+1;
        loop_shot=(loop_shot or 0)+1;
                
        h_weld.Part0=torso;
        h_weld.C1=h_weld_cf_inactive;
        
        local weld=torso:findFirstChild'right_arml';
        if(weld)then
                weld.Part1=nil;
                weld.Part0=nil;
        end;
        local arm=char:findFirstChild'Right Arm';
        local weld=torso:findFirstChild'Right Shoulder';
        if(arm and weld)then
                weld.Part0=torso;
                weld.Part1=arm;
        end;
end;

_cf_mouse=function(event,fun)
        mouse[event:sub(1,1):upper()..event:sub(2)]:connect(function(...)
                if(bool_active)then
                        fun(...);
                end;
        end);
end;

----------------------------------------------------------------------------------------

do
        local main=getfenv(0);
        local c=game:children();
        local check=function(v)
                if(v.className~=''and v.className~='Instance'and game:service(v.className))then
                        main[v.className:sub(1,1):lower()..v.className:sub(2)]=v;
                end;
        end;
        for i=1,#c do
                pcall(check,c[i]);
        end;
end;

----------------------------------------------------------------------------------------

bullets={
        maximum=51111111111111111111111111110;
        current=511111111111111111111111111111110;
        clip=501111111111111111111111111111111*4;
};

list_base_props={
        backgroundColor3=_RGB(0,0,0);
        textColor3=_RGB(200,200,200);
        borderSizePixel=0;
        color=_RGB(0,0,0);
        archivable=false;
        canCollide=false;
        bottomSurface=0;
        topSurface=0;
        formFactor=0;
        locked=true;
};

----------------------------------------------------------------------------------------

user=players.localPlayer;
mouse=user:getMouse();
char=user.Character;
gui=user.PlayerGui;
bag=user.Backpack;
torso=char.Torso;
head=char.Head;
hum=_hum(char);

url='rbxassetid://%d';
name='dev-uzi';

h_weld_cf_inactive=_cframe(0.35,0.5,0.5,
                                                        0,90,-70);
h_weld_cf_active=_cframe(0,0.75,0,
                                                -110,180,0);

assert(hum,'humanoid is not found');

----------------------------------------------------------------------------------------

_clear();

----------------------------------------------------------------------------------------

_cf_mouse('button1Down',function()
        loop_shot=(loop_shot or 0)+1;
        local vers=loop_shot;
        local step=runService.Stepped;
        repeat
                _shot((tube.CFrame*CFrame.new(0,0,tube.Size.Z*0.5)).p,mouse.hit.p);
                step:wait();--wait(0.001);
        until vers~=loop_shot;
end);

_cf_mouse('button1Up',function()
        loop_shot=(loop_shot or 0)+1;
end);

_cf_mouse('move',function()
        cross_f.Position=UDim2.new(0,mouse.X-11,0,mouse.Y-11);
end);

_cf_mouse('keyDown',function(k)
        if(k=='r')then
                if(bullets.clip>0 and time_left<=time())then
                        local got=(bullets.clip>bullets.maximum and 
                                bullets.maximum or 
                                bullets.clip)-bullets.current;

                        bullets.clip=bullets.clip-got;
                        bullets.current=bullets.current+got;
                        if(got~=0)then
                                time_left=time()+2;
                        end;
                end;
        end;
end);

----------------------------------------------------------------------------------------

screen=_new'screenGui'{
        name=name;
};

cross_f=_new'frame'{
        size=UDim2.new(0,21,0,21);
        backgroundTransparency=1;
        screen;
};

for i=0,1 do
        _new'frame'{
                position=UDim2.new(0,13*i,0,11);
                size=UDim2.new(0,10,0,1);
                cross_f;
        };
end;

for i=0,1 do
        _new'frame'{
                position=UDim2.new(0,11,0,13*i);
                size=UDim2.new(0,1,0,10);
                cross_f;
        };
end;

----------------------------------------------------------------------------------------

shot_sound=_new(head:findFirstChild'2920959'or'sound'){
        soundId=url:format(2920959);
        pitch=1.4;
        head;
};
if(shot_sound.Name~='2920959')then
        shot_sound.Name='2920959';
        shot_sound:play();
end;

bin=_new'hopperBin'{
        deselected=_cf_deselect;
        selected=_cf_select;
        name=name;
        bag;
};

inv=_new'model'{
        name=name;
        char;
};

handle=_new'part'{
        size=Vector3.new(0.3,1.3,0.4);
        color=_RGB(140,140,140);
        name='handle';
        formFactor=3;
        inv;
        touched=function(hit)
                if(hit.Parent.className=='Model')then
                        local hum=_hum(hit.Parent);
                        if(hum~=nil)then
                                _hum_dam(hum,handle.Velocity.magnitude);
                        end;
                end;
        end;
};
        h_weld=_new'weld'{
                c1=h_weld_cf_inactive;
                part1=handle;
                part0=torso;
                handle;
        };
                _make_hue();
                
                h_part=_new'part'{
                        size=Vector3.new(0.4,0.4,1.4);
                        color=_RGB(140,140,140);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                hp_weld=_new'weld'{
                        c1=_cframe(0,-1.3/2,-0.3,
                                                20,0,0);
                        part0=handle;
                        part1=h_part;
                        handle;
                };
                
                drag=_new'part'{
                        size=Vector3.new(0.5,0.45,1.5);
                        color=_RGB(100,100,100);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                d_weld=_new'weld'{
                        c1=_cframe(0,-0.25,0);
                        part0=h_part;
                        part1=drag;
                        handle;
                };
                
                tube=_new'part'{
                        size=Vector3.new(0.2,0.2,1.5);
                        color=_RGB(0,0,0);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                t_weld=_new'weld'{
                        c1=_cframe(0,-0.3,-0.1);
                        part0=h_part;
                        part1=tube;
                        handle;
                };

bullets_label=_new'textLabel'{
        textStrokeColor3=_RGB(0,0,0);
        textColor3=_RGB(200,200,200);
        textStrokeTransparency=0;
        backgroundTransparency=1;
        fontSize=5;
        screen;
};

lightstuff=_new'frame'{
        backgroundColor3=_RGB(255,255,255);
        position=UDim2.new(0,0,0,-1);
        backgroundTransparency=0.5;
        size=UDim2.new(1,0,1,1);
        borderSizePixel=0;
        visible=false;
        screen;
};

coroutine.wrap(function()
        local red,white,green;
        repeat
                if(screen.Parent)then
                        if(not green and bullets.current==bullets.maximum)then
                                green=true;
                                bullets_label.TextColor3=_RGB(0,200,0);
                        elseif(not red and bullets.current==0)then
                                red=true;
                                bullets_label.TextColor3=_RGB(200,0,0);
                        elseif((red or green)and bullets.current~=0 and bullets.current~=bullets.maximum)then
                                bullets_label.TextColor3=_RGB(200,200,200);
                                green=false;
                                red=false;
                        end;
                        bullets_label.Text=('Bullets: %d/%d'):format(bullets.current,bullets.clip);
                        bullets_label.Size=UDim2.new(0,bullets_label.TextBounds.X,0,bullets_label.TextBounds.Y);
                        bullets_label.Position=UDim2.new(1,-bullets_label.TextBounds.X-6,1,-bullets_label.TextBounds.Y-6);
                end;
                wait(0.001);
        until nil;
end)();

----------------------------------------------------------------------------------------

_G.dev_pistol_version=(_G.dev_pistol_version or 0)+1;
local vers=_G.dev_pistol_version;
repeat _update();wait(0.001);until _G.dev_pistol_version~=vers or hum.Health==0;
if(hum.Health==0)then
        _clear();
end;
script.Disabled=true;

--mediafire-----------------------------------------------------------------------------



end)

addcmd('draw', 'drawing tool',{},
function(args)
for i,v in next,game:children()do
	pcall(function()
		local c=v.className;
		rawset(getfenv(0),c:sub(1,1):lower()..c:sub(2),game:service(c));
	end);
end;


user=players.LocalPlayer;
uname=user.Name;
guis=user.PlayerGui;
pack=user.Backpack;

keyDowns={};
freeKeys={};
shortcuts={};

_G.mine=_G.mine or{};

name='Draw3D';
url='http://www.roblox.com/asset/?id=%d';

iconNormal=url:format(96578285);
iconOnDown=url:format(96584484);

ver=0;
drawPixel=0.10;
_G.drawLimit=_G.drawLimit or 1000;

_G.drawColor=_G.drawColor or Color3.new();





destroy=game.remove;
find=game.findFirstChild;
new=Instance.new;
with=function(c)
	return function(p)
		local o=type(c)=='string'and new(c)or c;
		local x=p.Parent;p.Parent=nil;
		for i,v in next,p do
			o[i]=v;
		end;
		if(x)then
			o.Parent=x;
		end;
		return o;
	end;
end;
getPlace=function()
	if(find(workspace,'draw')==nil)then
		new('Model',workspace).Name='draw';
	end;
	if(find(workspace.draw,uname)==nil)then
		new('Model',workspace.draw).Name=uname;
	end;
	return workspace.draw[uname];
end;
drawLine=function(start,target)
	local gui=with'BlockMesh'{
		Parent=with'Part'{
			CFrame=CFrame.new(start,target)*CFrame.new(0,0,-(start-target).magnitude/2);
			Size=Vector3.new(drawPixel,drawPixel,(start-target).magnitude+.325*drawPixel);
			Parent=getPlace();
			Color=_G.drawColor;
			BottomSurface=0;
			Anchored=true;
			TopSurface=0;
			formFactor=3;
			Name=name;
	}}.Parent;
	table.insert(_G.mine,gui);
	return gui;
end;
onDown=function()
	if(drawing)then
		return nil;
	end;
	if(selectGui.Adornee)then
		destroy(selectGui.Adornee);
	end;
	
	drawing=true;
	
	mouse.Icon=iconOnDown;
	ver=ver+1;
	
	
	local cVer,start,target=ver,mouse.hit.p;
	
	local group={};
	repeat
		Wait(0.02);
		
		if(mouse.target and mouse.target.Name~=name and mouse.hit.p~=start)then
			
			target=mouse.hit.p;
			
			table.insert(group,drawLine(start,target));
			
			start=target;
		end;
	until ver~=cVer;
	drawing=false;
	
	local groupM=new('Model',getPlace());
	for i,v in next,group do
		if(v:IsDescendantOf(Workspace))then
			v.Parent=groupM;
		end;
	end;
	if(next(groupM:children())==nil)then
		destroy(groupM);
	end;
end;
onUp=function()
	mouse.Icon=iconNormal;
	ver=ver+1;
end;
onKeyDown=function(k)
	if(freeKeys[k]==false)then
		return false;
	end;
	freeKeys[k]=false;
	Wait(0.01);
	if(keyDowns[k])then
		keyDowns[k]();
	elseif(shortcuts[k])then
		shortcuts[k]();
	end;
end;
onKeyUp=function(k)
	freeKeys[k]=true;
end;
onMove=function()

end;
onSelect=function(lmouse)
	frame.Visible=true;

	mouse=lmouse;
	
	mouse.Icon=iconNormal;
	
	mouse.Button1Down:connect(onDown);
	mouse.KeyDown:connect(onKeyDown);
	mouse.Button1Up:connect(onUp);
	mouse.KeyUp:connect(onKeyUp);
	mouse.Move:connect(onMove);
end;
onDeselect=function()
	ver=ver+1;
	frame.Visible=false;
	selectGui.Adornee=nil;
	mouse.Icon=iconNormal;
	for i,v in next,freeKeys do
		freeKeys[i]=true;
	end;
end;
addButton=function(title,shortcut,fun)
	with'TextButton'{
		Text=string.format(' %s (%s)',title,shortcut);
		TextXAlignment=0;
		Parent=frame;
	}.MouseButton1Up:connect(fun);
	
	shortcuts[shortcut]=fun;
	
	local c=#frame:children();
	for i,v in next,frame:children()do
		v.Position=UDim2.new(0,0,0,20*(i-1));
		v.Size=UDim2.new(1,0,0,20);
	end;
	
	frame.Position=UDim2.new(1,-152,.5,-c*10);
	frame.Size=UDim2.new(0,150,0,c*20);
end;








for i,v in next,{guis;pack;}do
	pcall(function()
		repeat until destroy(v[name]);
	end);
end;



tool=with'HopperBin'{
	Parent=pack;
	Name=name;
};
tool.Deselected:connect(onDeselect);
tool.Selected:connect(onSelect);




screen=with'ScreenGui'{
	Parent=guis;
	Name=name;
};
frame=with'Frame'{
	Parent=screen;
	Visible=false;
};
clframe=with'Frame'{
	Position=UDim2.new(.5,-50,.5,-50);
	Size=UDim2.new(0,100,0,100);
	Visible=false;
	Parent=screen;
};
selectGui=with'SelectionBox'{
	Parent=screen;
};

local c=0;
for y=0,7 do
	for x=0,7 do
		local color=BrickColor.palette(c).Color;
		
		with'ImageButton'{
			Position=UDim2.new(.125*x,0,.125*y);
			Size=UDim2.new(.125,0,.125);
			BackgroundColor3=color;
			Parent=clframe;
		}.MouseButton1Up:connect(function()
			clframe.Visible=false;
			_G.drawColor=color;
		end);
		
		c=c+1;
	end;
end;

addButton('Color','c',function()
	clframe.Visible=true;
end);
addButton('Remove your draws','r',function()
	repeat
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
		Wait(0.01);
	until nil;
end);
addButton('Remove global draws','k',function()
	destroy(workspace.draw);
	while(_G.mine[1])do
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
	end;
end);
addButton('Remove selected','x',function()
	repeat
		if(find(workspace,'draw'))then
			local dt=mouse.target;
			if(dt and dt:IsDescendantOf(workspace.draw))then
				selectGui.Adornee=dt.Parent;
			else
				selectGui.Adornee=nil;
			end;
		else
			selectGui.Adornee=nil;
		end;
		Wait(0.01);
	until freeKeys.x;
	selectGui.Adornee=nil;
end);




repeat
	Wait(0.01);
	if(next(_G.mine)and _G.mine[_G.drawLimit])then
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
	end;
until script.Parent==nil or tool.Parent==nil;
script.Disabled=true;
destroy(screen);

end)

addcmd('god', 'gods player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.MaxHealth=math.huge end
    end
end)

addcmd('sgod', 'silently gods player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        spawn(function()
            pchar.Humanoid.MaxHealth = 10000000
			wait()
			pchar.Humanoid.Health = 10000000
			Notify('Godded ' .. gPlayers[v].Name)
        end)
    end
end)

addcmd('ungod', 'removes god from a player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then 
			pchar.Humanoid.MaxHealth=100 
			pchar.Humanoid.Health=100
		end
    end
end)

addcmd('heal', 'resets a players health',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.Health=pchar.Humanoid.MaxHealth;end
    end
end)

addcmd('decalspam', 'you can already guess...',{},
function(args)
Notify('Decal Spammed ID: ' ..args[1])
decalID = args[1]
function exPro(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id="..decalID then
v.Parent = nil
elseif v:IsA("BasePart") then
v.Material = "Plastic"
v.Transparency = 0
local One = Instance.new("Decal", v)
local Two = Instance.new("Decal", v)
local Three = Instance.new("Decal", v)
local Four = Instance.new("Decal", v)
local Five = Instance.new("Decal", v)
local Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id="..decalID
Two.Texture = "http://www.roblox.com/asset/?id="..decalID
Three.Texture = "http://www.roblox.com/asset/?id="..decalID
Four.Texture = "http://www.roblox.com/asset/?id="..decalID
Five.Texture = "http://www.roblox.com/asset/?id="..decalID
Six.Texture = "http://www.roblox.com/asset/?id="..decalID
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
end
exPro(v)
end
end
function asdf(root)
for _, v in pairs(root:GetChildren()) do
asdf(v)
end
end
exPro(game.Workspace)
asdf(game.Workspace)
end)

addcmd('sky', 'sets the sky',{},
function(args)
s = Instance.new("Sky")
s.Name = "Sky"
s.Parent = game.Lighting
skyboxID = args[1]
s.SkyboxBk = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxDn = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxFt = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxLf = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxRt = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxUp = "http://www.roblox.com/asset/?id="..skyboxID
game.Lighting.TimeOfDay = 12
end)

addcmd('freeze', 'freezes a player',{'freeze'},
function(args)
	local players = getPlayer(args[1])
	if players ~= nil then
		for i, v in pairs(players) do
			_char(v).Torso.Anchored = true
		end
	end
end)

addcmd('thaw', 'unfreezes a player',{},
function(args)
	local players = getPlayer(args[1])
	if players ~= nil then
		for i, v in pairs(players) do
			_char(v).Torso.Anchored = false
		end
	end
end)

addcmd('kill', 'kills a player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.MaxHealth=0;pchar.Humanoid.Health=0;end
		Notify('RIP ' .. gPlayers[v].Name)
    end
end)

addcmd('sound', 'plays a sound',{},
function(args)
    local function dels(instance)
        for i,v in pairs(instance:GetChildren())do
            if v:IsA'Sound'then v:Destroy()end
            dels(v)
        end
    end
    dels(workspace)

    local c = args[1] or 'stop'
    if std.inTable({'stop'}, c:lower()) then return end
	local s = Instance.new("Sound", workspace)
	s.Name = "IYsound"
	s.Looped = true
	s.SoundId = "rbxassetid://" .. c
    s.Volume = 1
	s:Play()
	Notify('Playing ' .. c)
end)

addcmd('volume','changes volume of sound',{},
function(args)
	for i,v in pairs(game.Workspace:GetChildren())do
		if v:IsA("Sound") and v.Name == "IYsound" then
			v.Volume = args[1]
			Notify('Changed volume to ' .. args[1])
		end
	end
end)

addcmd('pitch','changes pitch of sound',{},
function(args)
	for i,v in pairs(game.Workspace:GetChildren())do
		if v:IsA("Sound") and v.Name == "IYsound" then
			v.Pitch = args[1]
			Notify('Changed pitch to ' .. args[1])
		end
	end
end)

addcmd('explode', 'explode a player', {},
function(args)
    local players = getPlayer(args[1])
    for i, v in pairs(players) do
        local char = _char(v)
        if char:FindFirstChild("Torso") then
            Instance.new("Explosion", char).Position = char.Torso.Position					
        end
    end
end)

addcmd('flood', 'makes a flood e.e', {},
function(args)
game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")
end)

addcmd('spookyify', 'makes it sp00ky', {},
function(args)
local music = Instance.new("Sound", workspace)
music.SoundId = "http://www.roblox.com/asset/?id=257569267"
music.Volume = 20
music.Looped = true
music:Play()

tex1 = "http://www.roblox.com/asset/?id=185495987"
tex2 = "http://www.roblox.com/asset/?id=260858020"
tex3 = "http://www.roblox.com/asset/?id=149213919"
tex4 = "http://www.roblox.com/asset/?id=171905673"

local w = game.Workspace:GetChildren()

for i= 1,#w do
    if w[i]:isA("BasePart") then
        pe = Instance.new("ParticleEmitter", w[i])
        pe.Texture = tex4
        pe.VelocitySpread = 5
    end
end

local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=171905673"
pe.VelocitySpread = 50
end

texture = "http://www.roblox.com/asset/?id=185495987"

local A = game.Workspace:GetChildren()
local B = game.Workspace:GetChildren()
local C = game.Workspace:GetChildren()
local D = game.Workspace:GetChildren()
local E = game.Workspace:GetChildren()
local F = game.Workspace:GetChildren()
for i,v in pairs(A) do
    if v:IsA("Part") then
    local d =    Instance.new("Decal",v)
        v.Decal.Face = "Top"
        v.Decal.Texture = texture
        v.Anchored = true        
    end
end

for i,v in pairs(B) do
    if v:IsA("Part") then
        local s = Instance.new("Decal",v)
        s.Face = "Front"
        s.Texture = texture
    end
end

for i,v in pairs(C) do
    if v:IsA("Part") then
        local h = Instance.new("Decal",v)
        h.Face = "Back"
        h.Texture = texture
    end
end

for i,v in pairs(D) do
    if v:IsA("Part") then
        local j = Instance.new("Decal",v)
        j.Face = "Left"
        j.Texture = texture
    end
end

for i,v in pairs(E) do
    if v:IsA("Part") then
        local k = Instance.new("Decal",v)
        k.Face = "Right"
        k.Texture = texture
    end
end

for i,v in pairs(F) do
    if v:IsA("Part") then
        local l = Instance.new("Decal",v)
        l.Face = "Bottom"
        l.Texture = texture
    end

	imageOne = "http://www.roblox.com/asset/?id=169585459"
imageTwo = "http://www.roblox.com/asset/?id=169585475"
imageThree = "http://www.roblox.com/asset/?id=169585485"
imageFour = "http://www.roblox.com/asset/?id=169585502"
imageFive = "http://www.roblox.com/asset/?id=169585515"
imageSix = "http://www.roblox.com/asset/?id=169585502"
imageSeven = "http://www.roblox.com/asset/?id=169585485"
imageEight = "http://www.roblox.com/asset/?id=169585475"

Spooky = Instance.new("Sound", workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://174270407"
Spooky.Volume = 15
Spooky.Looped = true
Spooky:Play()

Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne


while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.15)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.15)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.15)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.15)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.15)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.15)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.15)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.15)
    
end
end
end)

addcmd('invisible', 'make a player invisible',{},
function(args)
    local players = getPlayer(args[1])
    for i, v in pairs(players) do
        for k, v2 in pairs(_char(v):GetChildren()) do
			if v2.className == "Part" then
                if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 1 end
            elseif v2.className == "Hat" then
                if v2:FindFirstChild("Handle") then
                    v2.Handle.Transparency = 1 
					Notify(gPlayers[v].Name .. ' is now invisible')
                end
			end
            if v2:FindFirstChild("face") then
                v2.face:Destroy()
			end
		end
    end
end)

addcmd('visible', 'make a player visible',{},
function(args)
    local players = getPlayer(args[1])
    for i, v in pairs(players) do
        for k, v2 in pairs(_char(v):GetChildren()) do
            if v2.className == "Part" then
				if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 0 end
				elseif v2.className == "Hat" then
                if v2:FindFirstChild("Handle") then v2.Handle.Transparency = 0 end
				Notify(gPlayers[v].Name .. ' is now visible')
            end
			if v2:FindFirstChild("face") then
				v2.face:Destroy()
			end
		end
    end
end)

addcmd('goto', 'go to a player',{},
function(args)
    local players = getPlayer(args[1])
	if players ~= nil and _char(players[1]):FindFirstChild("HumanoidRootPart") then
		_char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
	end
end)

addcmd('bring', 'bring a player to you',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		if _char(v):FindFirstChild("HumanoidRootPart") then
			_char(v).HumanoidRootPart.CFrame = _char(admin).HumanoidRootPart.CFrame	
		end
	end
end)

addcmd('tp', 'teleport player 1 to player 2',{},
function(args)
    local players1=getPlayer(args[1])
    local players2=getPlayer(args[2])
    if not players2[1] then return end
    for i,v in pairs(players1) do
		if _char(v):FindFirstChild("HumanoidRootPart") and _char(players2[1]):FindFirstChild("HumanoidRootPart") then
			_char(v).HumanoidRootPart.CFrame = _char(players2[1]).HumanoidRootPart.CFrame
			wait(0.1)
			_char(v).HumanoidRootPart.CFrame = _char(players2[1]).HumanoidRootPart.CFrame
		end		
	end
end)

addcmd('char', 'change a players appearance',{},
function(args)
    local players = getPlayer(args[1])
    if not args[1]or not args[2]then return end
    local id=args[2]
	if players ~= nil then
		for i,v in pairs(players) do
			gPlayers[v].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..id
			if _char(v):FindFirstChild("Head") then
				_char(v).Head:Destroy()	
			end
		end
	end
end)

addcmd('speed', 'change a players walkspeed',{},
function(args)
    local players = getPlayer(args[1])
    if not args[1]or not args[2]then return end
    local num=args[2]
	for i,v in pairs(players) do
		if _char(v):FindFirstChild("Humanoid") then
			_char(v).Humanoid.WalkSpeed=tonumber(num)
			Notify(gPlayers[v].Name .. ' now has speed set to ' .. args[2])
		end
	end
end)

addcmd('lightsaber', 'gives lightsaber',{},
function(args)
Players = game:GetService("Players")
Player = Players.LocalPlayer
Bp = Player.Backpack
Pg = Player.PlayerGui
Char = Player.Character
Head = Char.Head
Torso = Char.Torso
Hum = Char.Humanoid
Humanoid = Hum
Neck = Torso["Neck"]
LS = Torso["Left Shoulder"]
RS = Torso["Right Shoulder"]
Ra = Char["Right Arm"]
La = Char["Left Arm"]
mouse = nil
Mouse = nil

bets =
{"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "}
inew = Instance.new
it = Instance.new
bc = BrickColor.new
vn = Vector3.new
cn = CFrame.new
ca = CFrame.Angles
mpi = math.pi
v3 = vn
mr = math.rad
br = BrickColor.new
cf = CFrame.new
ca = CFrame.Angles
Colors = {"Really Red"}
BladeColor = tostring(BrickColor.Random()) --Colors[math.random(1,#Colors)]
TrailColor = BladeColor
HopperName = "light saber"
Rage = 100000
MaxRage = Rage
SwordType = "Single"
LeftDebounce = {}
RightDebounce = {}
OtherDebounce = {}
Anim = {key = {}}
for i=1,#bets do table.insert(Anim.key,bets) end
Anim.Move = "None"
Anim.Click = false
Anim.Button = false
Anim.CanBerserk = 0
Anim.ComboBreak = false
Anim.Equipped = false
keydown = false
Speed = 2
RageIncome = 500
Left = false
Right = false
Anim.Act = false
RealSpeed = 35
DebounceSpeed = 0.85/Speed
RageCost = {
["Berserk"] = 200;
["RotorBlade"] = 30;
["Blocking"] = 0.1;
["Boomerang"] = 30;
["RageRegening"] = -0.7;
["BoulderForce"] = 45;
["ForceWave"] = 65;
["ForceWave"] = 32;
["Teleport"] = 25;
["DualSpin"] = 4;
}
MagnitudeHit = {
["ForceWave"] = 500;
}
Damage = {
["RotorBlade"] = 8;
["BoulderForce"] = 100;
["Boomerang"] = 100;
["ForceWave"] = 100;
["DualSpin"] = 5;
}
Props = {}
Props.MaxTeleDistance = 500
Props.Buff = 1
BlastMesh = Instance.new("FileMesh")
BlastMesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
RingMesh = Instance.new("FileMesh")
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RockMesh = Instance.new("FileMesh")
RockMesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
RockMesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
RingMesh = Instance.new("FileMesh")
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RockMesh = Instance.new("FileMesh")
RockMesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
RockMesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
RockMesh = Instance.new("FileMesh")
RockMesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
RockMesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"

function rayCast(Pos, Dir, Max, Ignore)
return Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function MinusRage(raggge)
Rage = Rage - raggge
if Rage < 0 then Rage = 0 end
end

function r(zParent,zName)
if zParent:findFirstChild(zName) ~= nil then
zParent[zName]:Remove()
else
end
end
function rclass(zParent,zClass)
local ch = zParent:GetChildren()
for i=1,#ch do
if (ch.className == zClass) then
ch:Remove()
else
end
end
end

function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f)
local funcw = Instance.new("Weld")
funcw.Name = zName
funcw.Parent = zParent
funcw.Part0 = zPart0
funcw.Part1 = zPart1
if (zCoco == true) then
funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
else
funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
end
return funcw
end
function Dash(ob,se,mes,of)
local off = nil
if of == nil then off = 0 else off = of end
pcall(function()
coroutine.resume(coroutine.create(function()
local dashin = true
local oldpos = (ob.CFrame *CFrame.new(0,off,0)).p
coroutine.resume(coroutine.create(function()
wait(se) dashin = false end))
for i=1,9999 do
if dashin == false then break end
local newpos = (ob.CFrame *CFrame.new(0,off,0)).p --+ Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
local np = Instance.new("Part")
np.BrickColor = BrickColor.new(TrailColor) np.CanCollide = false
np.BottomSurface = 0 np.TopSurface = 0 np.Anchored = true np.Transparency = 0.4
np.formFactor = "Custom" np.Parent = ob local mag = math.abs((newpos - oldpos).magnitude)
local mp = nil
if mes ~= nil then
np.Size = Vector3.new(2,mag,2) mp = Instance.new("FileMesh",np) mp.MeshId = mes else
np.Size = Vector3.new(0.4,0.4,mag) mp = Instance.new("BlockMesh",np) end
np.CFrame = CFrame.new(newpos,oldpos)
np.CFrame = np.CFrame + np.CFrame.lookVector* (mag/2)
if mes == BlastMesh.MeshId then np.CFrame = np.CFrame *ca(mr(-90),0,0) else np.CFrame = np.CFrame *ca(0,0,mr(-45)) end
oldpos = newpos
coroutine.resume(coroutine.create(function()
for i=1,0,-0.1 do
np.Transparency = np.Transparency + 0.03
--if mes ~= nil then
--mp.Scale = Vector3.new(i,mag,i) else
mp.Scale = Vector3.new(i,i,1) -- end
wait()
end
np:Remove()
end))
wait(0.08)
end
end))
end)
end
Sounds = {
Boom = "http://www.roblox.com/asset/?id=16976189";
SniperFire = "http://www.roblox.com/asset/?id=1369158";
ShotgunFire2 = "http://www.roblox.com/asset/?id=1868836";
MinigunFire = "http://www.roblox.com/asset/?id=2692806";
MinigunCharge = "http://www.roblox.com/asset/?id=2692844";
MinigunDischarge = "http://www.roblox.com/asset/?id=1753007";
Flashbang = "http://www.roblox.com/asset/?id=16976189";
Beep = "http://www.roblox.com/asset/?id=15666462";
Smash = "http://www.roblox.com/asset/?id=2801263";
Punch = "http://www.roblox.com/asset/?id=31173820";
Slash = "rbxasset://sounds/swordslash.wav";
Falcon = "http://www.roblox.com/asset/?id=1387390";
Cast = "http://www.roblox.com/asset/?id=2101137";
Spin = "http://www.roblox.com/asset/?id=1369159";
Abscond = "http://www.roblox.com/asset/?id=2767090";
ElectricalCharge = "http://www.roblox.com/asset/?id=2800815";
FireExplosion = "http://www.roblox.com/asset/?id=3264793";
SaberLightUp = "http://www.roblox.com/asset/?id=10209303";
SaberSlash = "http://www.roblox.com/asset/?id=10209280";
SaberHit = "http://www.roblox.com/asset/?id=44463749";
EnergyBlast = "http://www.roblox.com/asset/?id=10209268";
}
function Sound(sid,pit,vol)
local ss = Instance.new("Sound")
ss.Name = "Sound"
ss.Parent = Head
ss.SoundId = sid
ss.Pitch = pit
ss.Volume = vol
ss.PlayOnRemove = true
wait()
ss:Remove()
end


r(Char,"SwordPack")
r(Char,"Suit")
r(Char,"Saber" ..Player.Name)
r(Pg,"Sabers")
Suit = inew("Model")
Suit.Name = "Suit"
Suit.Parent = Char
function p(pa,sh,x,y,z,c,a,tr,re,bc)
local fp = it("Part",pa)
fp.formFactor = "Custom"
fp.Shape = sh
fp.Size = v3(x,y,z)
fp.CanCollide = c
fp.Anchored = a
fp.BrickColor = br(bc)
fp.Transparency = tr
fp.Reflectance = re
fp.BottomSurface = 0
fp.TopSurface = 0
fp.CFrame = Torso.CFrame
fp:BreakJoints()
return fp
end
function weld(pa,p0,p1,x,y,z,a,b,c)
local fw = it("Weld",pa)
fw.Part0 = p0
fw.Part1 = p1
fw.C0 = cf(x,y,z) *ca(a,b,c)
return fw
end
function ft(tab,nam)
if tab == nil or nam == nil then print("U: Fail table") return false end
for i=1,#tab do
if tab == nam then
return i
else
end
end
return nil
end
function spm(ty,pa,ssx,ssy,ssz)
local sp = it("SpecialMesh",pa)
sp.MeshType = ty
sp.Scale = Vector3.new(ssx,ssy,ssz)
return sp
end
Torso.Transparency = 1
Torm = Instance.new("Model",Char)
Torm.Name = "Saber" ..Player.Name
Tor = p(Torm,"Block",1.98,1.98,1,false,false,0,0,"basda") Tor.Name = "Torso"
Torw = weld(Tor,Torso,Tor,0,0,0,0,0,0)
pcall(function() Char.Shirt:Clone().Parent = Torm end)
pcall(function() Char.Pants:Clone().Parent = Torm end)
function ShockWave(onb,scale,col)
coroutine.resume(coroutine.create(function()
local e1 = Instance.new("Part")
e1.Anchored = true
e1.formFactor = "Custom"
e1.CanCollide = false
e1.Size = Vector3.new(1,1,1)
e1.BrickColor = BrickColor.new(col)
e1.Transparency = 0.6
e1.TopSurface = 0
e1.BottomSurface = 0
e1.Parent = Torm
e1.CFrame = onb.CFrame
e1.CFrame = e1.CFrame *CFrame.Angles(math.rad(-90),0,0)
local e1m = Instance.new("SpecialMesh")
e1m.MeshType = "FileMesh"
e1m.Scale = Vector3.new(3,3,3)
e1m.Parent = e1
e1m.MeshId = RingMesh.MeshId
local r1 = Instance.new("Part")
r1.Anchored = true
r1.formFactor = "Custom"
r1.CanCollide = false
r1.Size = Vector3.new(1,1,1)
r1.BrickColor = BrickColor.new(col)
r1.Transparency = 0.6
r1.TopSurface = 0
r1.BottomSurface = 0
r1.Parent = Torm
r1.CFrame = e1.CFrame *CFrame.Angles(math.rad(90),0,0)
local r1m = Instance.new("SpecialMesh")
r1m.MeshType = "FileMesh"
r1m.Scale = Vector3.new(3,3,3)
r1m.Parent = r1
r1m.MeshId = BlastMesh.MeshId
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal/1.5,pluscal/3,pluscal/1.5)
r1.CFrame = r1.CFrame * CFrame.Angles(0,math.rad(6),0)
wait()
end
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal/1.5,pluscal/4,pluscal/1.5)
r1.CFrame = r1.CFrame * CFrame.Angles(0,math.rad(6),0)
e1.Transparency = e1.Transparency + 0.1
r1.Transparency = r1.Transparency + 0.1
wait()
end
e1:Remove()
r1:Remove()
end))
end

function Explode(onb,scale,col)
coroutine.resume(coroutine.create(function()
local e1 = Instance.new("Part")
e1.Anchored = true
e1.formFactor = "Custom"
e1.CanCollide = false
e1.Size = Vector3.new(1,1,1)
e1.BrickColor = BrickColor.new(col)
e1.Transparency = 0.6
e1.TopSurface = 0
e1.BottomSurface = 0
e1.Parent = Torm
e1.CFrame = onb.CFrame
local e1m = Instance.new("SpecialMesh")
e1m.MeshType = "Sphere"
e1m.Parent = e1
local r1 = Instance.new("Part")
r1.Anchored = true
r1.formFactor = "Custom"
r1.CanCollide = false
r1.Size = Vector3.new(1,1,1)
r1.BrickColor = BrickColor.new(col)
r1.Transparency = 0.6
r1.TopSurface = 0
r1.BottomSurface = 0
r1.Parent = Torm
r1.CFrame = e1.CFrame *CFrame.Angles(math.rad(180),0,0)
local r1m = Instance.new("SpecialMesh")
r1m.MeshType = "FileMesh"
r1m.Scale = Vector3.new(3,3,3)
r1m.Parent = r1
r1m.MeshId = RingMesh.MeshId
local r2 = Instance.new("Part")
r2.Anchored = true
r2.formFactor = "Custom"
r2.CanCollide = false
r2.Size = Vector3.new(1,1,1)
r2.BrickColor = BrickColor.new(col)
r2.Transparency = 0.6
r2.TopSurface = 0
r2.BottomSurface = 0
r2.Parent = Torm
r2.CFrame = e1.CFrame *CFrame.Angles(0,math.rad(180),0)
local r2m = Instance.new("SpecialMesh")
r2m.MeshType = "FileMesh"
r2m.Parent = r2
r2m.Scale = Vector3.new(3,3,3)
r2m.MeshId = RingMesh.MeshId
local bla = Instance.new("Part")
bla.Anchored = true
bla.formFactor = "Custom"
bla.CanCollide = false
bla.Size = Vector3.new(1,1,1)
bla.BrickColor = BrickColor.new(col)
bla.Transparency = 0.6
bla.TopSurface = 0
bla.BottomSurface = 0
bla.Parent = Torm
bla.CFrame = CFrame.new(e1.Position.x,e1.Position.y,e1.Position.z)
local blam = Instance.new("SpecialMesh")
blam.MeshType = "FileMesh"
blam.Parent = bla
blam.Scale = Vector3.new(5,5,5)
blam.MeshId = BlastMesh.MeshId
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r2m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale + Vector3.new(pluscal,pluscal/2,pluscal)
bla.CFrame = bla.CFrame * CFrame.Angles(0,math.rad(12),0)
r1.CFrame = r1.CFrame * CFrame.Angles(math.rad(6),0,0)
r2.CFrame = r2.CFrame * CFrame.Angles(0,math.rad(6),0)
wait()
end
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r2m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale + Vector3.new(pluscal/1.5,pluscal/3,pluscal/1.5)
bla.CFrame = bla.CFrame * CFrame.Angles(0,math.rad(12),0)
r1.CFrame = r1.CFrame * CFrame.Angles(math.rad(6),0,0)
r2.CFrame = r2.CFrame * CFrame.Angles(0,math.rad(6),0)
bla.Transparency = bla.Transparency + 0.1
e1.Transparency = e1.Transparency + 0.1
r1.Transparency = r1.Transparency + 0.1
r2.Transparency = r2.Transparency + 0.1
wait()
end
e1:Remove()
r1:Remove()
r2:Remove()
end))
end
H1 = p(Torm,"Block",0.5,0.9,0.5,false,false,0,0.1,"Medium stone grey") spm("Head",H1,1,1.3,1)
H1w = weld(Tor,Torso,H1,0.4,-0.7,0.5,0,0,mr(45))
H2 = p(Torm,"Block",0.5,0.9,0.5,false,false,0,0.1,"Medium stone grey") spm("Head",H2,1,1.3,1)
H2w = weld(Tor,H1,H2,0,-0.8,0,mr(180),0,0)
Des1 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Instance.new("CylinderMesh",Des1)
Des1w = weld(Tor,H1,Des1,0,0.5,0,0,0,0)
Des2 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Instance.new("CylinderMesh",Des2)
Des2w = weld(Tor,H2,Des2,0,0.5,0,0,0,0)
Des21 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Des21m = Instance.new("CylinderMesh",Des21) Des21m.Scale = Vector3.new(1,0.6,1)
Des21w = weld(Tor,H1,Des21,0,-0.55,0,0,0,0)
Des22 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Des22m = Instance.new("CylinderMesh",Des22) Des22m.Scale = Vector3.new(1,0.6,1)
Des22w = weld(Tor,H2,Des22,0,-0.55,0,0,0,0)

Blad1 = p(Torm,"Block",0.3,4,0.3,false,false,1,0.25,BladeColor) M1 = spm("Head",Blad1,1,1,1)
Blad1w = weld(Tor,H1,Blad1,0,1.9,0,0,0,0)
Blad2 = p(Torm,"Block",0.3,4,0.3,false,false,1,0.25,BladeColor) M2 = spm("Head",Blad2,1,1,1)
Blad2w = weld(Tor,H2,Blad2,0,1.9,0,0,0,0)
Glow1 = p(Torm,"Block",0.47,4.2,0.47,false,false,1,0,BladeColor) GM1 = spm("Head",Glow1,1,1,1)
Glow1w = weld(Tor,H1,Glow1,0,1.9,0,0,0,0)
Glow2 = p(Torm,"Block",0.47,4.2,0.47,false,false,1,0,BladeColor) GM2 = spm("Head",Glow2,1,1,1)
Glow2w = weld(Tor,H2,Glow2,0,1.9,0,0,0,0)

r(Bp,HopperName)
bin = inew("HopperBin")
bin.Name = HopperName
bin.Parent = Bp

Gui = Instance.new("ScreenGui",Pg)
Gui.Name = "Sabers"
Frame = Instance.new("Frame",Gui)
Frame.BackgroundTransparency = 1 Frame.Size = UDim2.new(1,0,1,0)
ImageGui = Instance.new("ImageLabel",Frame)
ImageGui.Image = "http://www.roblox.com/asset/?id=51262246"
ImageGui.BackgroundTransparency = 1
ImageGui.Size = UDim2.new(0.3,0,0.075,0)
HealthBar = Instance.new("ImageLabel",Frame)
HealthBar.Image = "http://www.roblox.com/asset/?id=48965808"
HealthBar.BorderSizePixel = 0
HealthBar.Size = UDim2.new(0.23,0,0.017,0)
HealthBar.Position = UDim2.new(0.06,0,0.017,0)
RageBar = Instance.new("ImageLabel",Frame)
RageBar.Image = "http://www.roblox.com/asset/?id=48965808"
RageBar.BorderSizePixel = 0
RageBar.Size = UDim2.new(0.165,0,0.012,0)
RageBar.Position = UDim2.new(0.06,0,0.04,0)
RageBar.BackgroundColor3 = BrickColor.new("Alder").Color
SelectBar = Instance.new("ImageButton",Frame)
SelectBar.Image = "http://www.roblox.com/asset/?id=48965808"
SelectBar.BorderSizePixel = 0
SelectBar.Size = UDim2.new(0.1,0,0.07,0)
SelectBar.Position = UDim2.new(0.8,0,0.6,0)
SelectBar.BackgroundColor3 = BrickColor.new(BladeColor).Color
SelectrBar = Instance.new("TextLabel",SelectBar)
SelectrBar.BackgroundTransparency = 1
SelectrBar.BorderSizePixel = 0
SelectrBar.Size = UDim2.new(0,0,0,0)
SelectrBar.Position = UDim2.new(0.5,0,0.5,0)
SelectrBar.Font = "ArialBold"
SelectrBar.FontSize = "Size18"
SelectBar.MouseButton1Up:connect(function()
if Anim.Move ~= "None" then return end
if Anim.Act == true then return end
if Anim.Equipped == false then return end
if SwordType == "Single" then
Anim.Move = "Changing"
Anims.ChangeToDual(0,1,0.065*Speed) SwordType = "Dual"
Anim.Move = "None"
else
Anim.Move = "Changing"
Anims.ChangeToSingle(0,1,0.065*Speed) SwordType = "Single"
Anim.Move = "None"
end
end)
coroutine.resume(coroutine.create(function()
while true do
wait(0.05)
local hh = Hum.Health local hmh = Hum.MaxHealth
HealthBar.Size = UDim2.new((hh/hmh)*0.23,0,0.017,0)
if ((hh/hmh)*100) > 75 then
HealthBar.BackgroundColor3 = BrickColor.new("Alder").Color
elseif ((hh/hmh)*100) > 25 and ((hh/hmh)*100) < 76 then
HealthBar.BackgroundColor3 = BrickColor.new("Deep orange").Color
elseif ((hh/hmh)*100) < 26 then
HealthBar.BackgroundColor3 = BrickColor.new("Bright red").Color
end
RageBar.Size = UDim2.new((Rage/MaxRage)*0.165,0,0.012,0)
SelectrBar.Text = SwordType
end
end))
-------
function TellXPos(brick1,posd)
local lb = p(nil,"Block",1,1,1,true,false,1,0.1,BladeColor)
lb.CFrame = CFrame.new((brick1.CFrame *cf(-10,0,0)).p)
local rb = p(nil,"Block",1,1,1,true,false,1,0.1,BladeColor)
rb.CFrame = CFrame.new((brick1.CFrame *cf(10,0,0)).p)
local posml = math.abs((posd - rb.Position).magnitude)
local posmr = math.abs((posd - lb.Position).magnitude)
if posml > posmr then
return "left"
else
return "right"
end
end
function GetNearPlayer(urpos,maxmag)
if maxmag == nil then return nil end
for i,v in pairs(game.Players:GetChildren()) do
if v.Character ~= Char and v.Character ~= nil and v.Character:findFirstChild("Torso") ~= nil and math.abs((v.Character.Torso.Position-urpos).magnitude) < maxmag then
return v.Character.Torso
end
end
return nil
end
function Dmgz(hum,dmg)
dmg = dmg*Props.Buff
hum.Health = hum.Health - dmg
Rage = Rage + ((dmg/1.25)*RageIncome)
if Rage > MaxRage then Rage = MaxRage end
end
coroutine.resume(coroutine.create(function()
while true do
wait()
if Right == true and Anim.Move == "ForceWave" then
for i,v in pairs(workspace:GetChildren()) do
coroutine.resume(coroutine.create(function()
if v ~= Char and v ~= nil and v:findFirstChild("Torso") ~= nil and math.abs((v.Torso.Position-Blad2.Position).magnitude) < MagnitudeHit[Anim.Move] then
local hit = v.Torso
if hit ~= nil and hit.Parent:findFirstChild("Humanoid") ~= nil and ft(RightDebounce,hit.Parent.Name) == nil then
Dmgz(hit.Parent.Humanoid,Damage[Anim.Move])
table.insert(RightDebounce,hit.Parent.Name)
wait(DebounceSpeed) local nf = ft(RightDebounce,hit.Parent.Name) if nf ~= nil then table.remove(RightDebounce,nf) end
end
else
if v:IsA("BasePart") and v.Anchored == false and math.abs((v.Position-Blad2.Position).magnitude) < MagnitudeHit[Anim.Move] then v:BreakJoints() v.Velocity = cf(Blad2.Position,v.Position).lookVector*30 + Vector3.new(0,20,0) end
end
end))
end -- for
end
end
end))
Blad1.Touched:connect(function(hit)
if Left == true then
if hit ~= nil and hit.Parent:findFirstChild("Humanoid") ~= nil and ft(LeftDebounce,hit.Parent.Name) == nil then
coroutine.resume(coroutine.create(function()
table.insert(LeftDebounce,hit.Parent.Name)
wait(DebounceSpeed) local nf = ft(LeftDebounce,hit.Parent.Name) if nf ~= nil then table.remove(LeftDebounce,nf) end
end))
Sound(Sounds.SaberHit,1,1)
Dmgz(hit.Parent.Humanoid,Damage[Anim.Move])
else
--if hit.Parent:findFirstChild("Humanoid") == nil and not hit:IsDescendantOf(Char) and hit.Anchored == false then hit:BreakJoints() hit.Velocity = cf(Blad1.Position,hit.Position).lookVector*30 end
end
end
end)

Blad2.Touched:connect(function(hit)
if Right == true then
if hit ~= nil and hit.Parent:findFirstChild("Humanoid") ~= nil and ft(RightDebounce,hit.Parent.Name) == nil then
coroutine.resume(coroutine.create(function()
table.insert(RightDebounce,hit.Parent.Name)
wait(DebounceSpeed) local nf = ft(RightDebounce,hit.Parent.Name) if nf ~= nil then table.remove(RightDebounce,nf) end
end))
Sound(Sounds.SaberHit,1,1)
Dmgz(hit.Parent.Humanoid,Damage[Anim.Move])
else
--if hit.Parent:findFirstChild("Humanoid") == nil and not hit:IsDescendantOf(Char) and hit.Anchored == false then hit:BreakJoints() hit.Velocity = cf(Blad2.Position,hit.Position).lookVector*30 end
end
end
end)
LW = inew("Weld")
RW = inew("Weld")
Fla = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Fra = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Flaw = fWeld("Weld",Fla,Tor,Fla,true,-1.5,0.5,0,0,0,0)
Fraw = fWeld("Weld",Fla,Tor,Fra,true,1.5,0.5,0,0,0,0)
Flaw.C1 = CFrame.new(0,0.5,0)
Fraw.C1 = CFrame.new(0,0.5,0)

Fll = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Frl = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Fllw = fWeld("Weld",Fll,Torso,Fll,true,0,0,0,0,0,0)
Frlw = fWeld("Weld",Fll,Torso,Frl,true,0,0,0,0,0,0)

function FeetWeld(yesorno,lhh,rhh)
if yesorno == false then
lhh.Parent = nil
rhh.Parent = nil
Lh.Parent = Torso
Rh.Parent = Torso
Lh.Part0 = Tor
Rh.Part0 = Tor
Lh.Part1 = Char["Left Leg"]
Rh.Part1 = Char["Right Leg"]
return Lh,Rh
else
Rh.Parent = nil
Lh.Parent = nil
local hl,hr = it("Weld",Torso),it("Weld",Torso)
hl.Part0 = Fll
hr.Part0 = Frl
hl.Part1 = Char["Left Leg"]
hr.Part1 = Char["Right Leg"]
hr.C1 = cf(-0.5,1.75,0)
hl.C1 = cf(0.5,1.75,0)
return hl,hr
end
end
Anims = {}
Anims.Equip = function(i1,i2,is)
Anim.Act = true
for i=i1,i2,is do
RW.C1 = ca(mr(40*i),mr(20*i),0)
RW.C0 = cf(-0.4*i,-0.1*i,0.4*i)
wait()
end
H1w.Part0 = Ra
H1w.Part1 = H1
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(180),0) H1w.C1 = ca(mr(-90),0,0)
Sound(Sounds.Slash,1,1)
for i=i1,i2,is do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(270*i)),0)
LW.C1 = ca(mr(-80*i),mr(40*i),0)
LW.C0 = cf(0.6*i,0.3*i,-1*i)
RW.C1 = ca(mr(40+(-120*i)),mr(20+(-60*i)),0)
RW.C0 = cf(-0.4+(-0.2*i),-0.1+(0.4*i),0.4+(-1.4*i))
wait()
end
Sound(Sounds.SaberLightUp,3,1)
for i=i1,i2,is do
Blad1w.C0 = cf(0,0.95+(0.95*i),0)
Blad2w.C0 = cf(0,0.95+(0.95*i),0)
M1.Scale = Vector3.new(1,1*i,1)
M2.Scale = Vector3.new(1,1*i,1)
Blad1.Transparency = 0.9-(1*i)
Blad2.Transparency = 0.9-(1*i)
Glow1w.C0 = cf(0,0.95+(0.95*i),0)
Glow2w.C0 = cf(0,0.95+(0.95*i),0)
GM1.Scale = Vector3.new(1,1*i,1)
GM2.Scale = Vector3.new(1,1*i,1)
Glow1.Transparency = 1.05-(0.5*i)
Glow2.Transparency = 1.05-(0.5*i)
wait()
end
Anim.Act = false
end
Anims.UnEquip = function(i1,i2,is)
Anim.Act = true
Sound(Sounds.SaberLightUp,3,1)
for i=i1,i2,is do
Blad1w.C0 = cf(0,0.95+(0.95*i),0)
Blad2w.C0 = cf(0,0.95+(0.95*i),0)
M1.Scale = Vector3.new(1,1*i,1)
M2.Scale = Vector3.new(1,1*i,1)
Blad1.Transparency = 0.9-(1*i)
Blad2.Transparency = 0.9-(1*i)
Glow1w.C0 = cf(0,0.95+(0.95*i),0)
Glow2w.C0 = cf(0,0.95+(0.95*i),0)
GM1.Scale = Vector3.new(1,1*i,1)
GM2.Scale = Vector3.new(1,1*i,1)
Glow1.Transparency = 1.05-(0.5*i)
Glow2.Transparency = 1.05-(0.5*i)
wait()
end
Sound(Sounds.Slash,1,1)
for i=i1,i2,is do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(270*i)),0)
LW.C1 = ca(mr(-80*i),mr(40*i),0)
LW.C0 = cf(0.6*i,0.3*i,-1*i)
RW.C1 = ca(mr(40+(-120*i)),mr(20+(-60*i)),0)
RW.C0 = cf(-0.4+(-0.2*i),-0.1+(0.4*i),0.4+(-1.4*i))
wait()
end
H1w.Part0 = Torso
H1w.Part1 = H1
H1w.C0 = cf(0.4,-0.7,0.5) *ca(0,0,mr(45))
H1w.C1 = cf(0,0,0) *ca(0,0,0)
for i=i1,i2,is do
RW.C1 = ca(mr(40*i),mr(20*i),0)
RW.C0 = cf(-0.4*i,-0.1*i,0.4*i)
wait()
end
Anim.Act = false
end
Anims.ChangeToDual = function(i1,i2,is)
Anim.Act = true
for i=i1,i2,is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(mr(-80*i),mr(50*i),0)
wait()
end
Sound(Sounds.SaberHit,1,1)
Sound(Sounds.SaberLightUp,2,0.5)
H1w.Part0 = La
H1w.Part1 = H1
H2w.Part0 = Ra
H2w.Part1 = H2
H2w.C1 = ca(mr(-90),0,0)
for i=i1,i2,is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-90+(-90*i)),mr(20+(-20*i)))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(90*i)),mr(-35+(-35*i)))
LW.C1 = ca(mr(-80+(20*i)),mr(40+(-70*i)),0)
LW.C0 = cf(0.6+(-0.6*i),0.3+(-0.3*i),-1+(0.5*i))
RW.C1 = ca(mr(-80+(20*i)),mr(-40+(70*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(-0.3*i),-1+(0.5*i))
wait()
end
Anim.Act = false
end
Anims.ChangeToSingle = function(i1,i2,is)
Anim.Act = true
for i=i2,i1,-is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-90+(-90*i)),mr(20+(-20*i)))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(90*i)),mr(-35+(-35*i)))
LW.C1 = ca(mr(-80+(20*i)),mr(40+(-70*i)),0)
LW.C0 = cf(0.6+(-0.6*i),0.3+(-0.3*i),-1+(0.5*i))
RW.C1 = ca(mr(-80+(20*i)),mr(-40+(70*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(-0.3*i),-1+(0.5*i))
wait()
end
H1w.Part0 = Ra
H1w.Part1 = H1
H2w.Part0 = H1
H2w.Part1 = H2
H2w.C1 = ca(0,0,0)
H2w.C0 = cf(0,-0.8,0) *ca(mr(180),0,0)
Sound(Sounds.SaberLightUp,2,0.5)
Sound(Sounds.SaberHit,1,1)
for i=i2,i1,-is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(mr(-80*i),mr(50*i),0)
wait()
end
Anim.Act = false
end
Anims.RotorBlade = function(i1,i2,is,RaigCost)
local lolpos = (Torso.Position - mouse.hit.p).unit
local allx = (lolpos.y*80)-10
local ally = (((mouse.X-(mouse.ViewSizeX/2))/mouse.ViewSizeX)*1.8)*-90
Anim.Act = true
for i=i1,i2,is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(90*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(((-90)+ally)*i),0)
Torw.C1 = ca(0,mr(-90*i),0)
wait()
end
DebounceSpeed = DebounceSpeed - (0.5*Speed)
Hum.WalkSpeed = Hum.WalkSpeed + (8*Speed)
Left = true
Right = true
Dash(Blad1,2/Speed,nil,2)
Dash(Blad2,2/Speed,nil,2)
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,-0.4,0) *ca(mr(-90),0,0)
local soundtime = 0
for i=i1,i2*4,is do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(360*i),0)
wait()
end
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,0,0) *ca(mr(-90),0,0)
DebounceSpeed = DebounceSpeed + (0.5*Speed)
Hum.WalkSpeed = Hum.WalkSpeed - (8*Speed)
Left = false
Right = false
for i=i2,i1,-is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(90*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(((-90)+ally)*i),0)
Torw.C1 = ca(0,mr(-90*i),0)
wait()
end
Torw.C1 = ca(0,0,0)
Anim.Act = false
end
-------
Anims.Boomerang = function(i1,i2,is,RaigCost)
MinusRage(RaigCost)
local lolpos = (Head.Position - mouse.hit.p).unit
local allx = (lolpos.y*80)-10
Anim.Act = true
for i=i1,i2,is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(60*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-60*i),0)
Torw.C1 = ca(0,mr(-60*i),0)
H1w.C0 = cf(0,-1.1,0) *ca(mr(80*i),0,0)
wait()
end
DebounceSpeed = DebounceSpeed - (0.5*Speed)
Left = true
Right = true
Dash(Blad1,3.8/Speed,nil,2)
Dash(Blad2,3.8/Speed,nil,2)
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,-0.4,0) *ca(mr(-90),0,0)
local soundtime = 0
for i=i1,i2,is/2 do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(10*i,-1.1+(-15*i),0) *ca(mr(90),mr(720*i),0)
wait()
end
for i=i1,i2,is/2 do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(10+(-20*i),-16.1,0) *ca(mr(90),mr(720*i),0)
wait()
end
for i=i1,i2,is/2 do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(-10+(10*i),-16.1+(15*i),0) *ca(mr(90),mr(720*i),0)
wait()
end
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,0,0) *ca(mr(-90),0,0)
DebounceSpeed = DebounceSpeed + (0.5*Speed)
Left = false
Right = false
for i=i2,i1,-is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(60*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-60*i),0)
Torw.C1 = ca(0,mr(-60*i),0)
H1w.C0 = cf(0,-1.1,0) *ca(mr(80*i),0,0)
wait()
end
Torw.C1 = ca(0,0,0)
Anim.Act = false
end
Anims.BoulderForce = function(i1,i2,is,RaigCost)
MinusRage(RaigCost)
Anim.Act = true
for i=i1,i2,is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
local bould = p(workspace,"Block",4,4,8,true,true,0,0,"Medium stone grey") bould.Name = "Boulder" bould.Material = "Concrete"
local rm = RockMesh:Clone() rm.Scale = Vector3.new(3,3,4.8) rm.Parent = bould
bould.Elasticity = 0 bould.Friction = 2 bould.CFrame = cf(Torso.Position.x+(math.random(-14,14)),Torso.Position.y-5,Torso.Position.z+(math.random(-14,14))) *CFrame.Angles(math.random(-33,33)/10,math.random(-33,33)/10,math.random(-33,33)/10)
local warpdes = true
local bpos = bould.Position
Sound(Sounds.Cast,0.95,0.8)
coroutine.resume(coroutine.create(function() repeat Functions.BrickWarpDesign(bould,9) wait() until warpdes == false end))
for i=0,1,0.08 do bould.CFrame = CFrame.new(bpos.x,bpos.y,bpos.z) + Vector3.new(0,20*i,0) wait() end wait(1) bould.CFrame = CFrame.new(bpos.x,bpos.y+20,bpos.z) bould.CFrame = cf(bould.Position,mouse.hit.p)
bould.Anchored = false wait() bould.Velocity = bould.CFrame.lookVector *(math.random(180,350)) bould.Touched:connect(function(hit) Functions.BoulderTouch(hit,bould) end)
wait(0.5)
warpdes = false
game.Debris:AddItem(bould,10)
for i=i2,i1,-is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
Torw.C1 = ca(0,0,0)
Anim.Act = false
end
Anims.ForceWave = function(i1,i2,is,RaigCost)
local Hit, hitpos = rayCast(Torso.Position,((Torso.Position - Vector3.new(0,10000,0)) - Torso.Position),999.999,Player.Character)
if Hit == nil then Anim.Act = false return end
MinusRage(RaigCost)
Anim.Act = true
lh2,rh2 = FeetWeld(true,Lh,Rh)
local bp2 = Instance.new("BodyPosition",Torso)
bp2.maxForce = Vector3.new(0,math.huge,0)
Humanoid.WalkSpeed = Humanoid.WalkSpeed - (RealSpeed-4)
DebounceSpeed = DebounceSpeed + (1.1*Speed)
bp2.position = Torso.Position + Vector3.new(0,25,0)
Dash(Blad1,2.5/Speed)
Dash(Blad2,2.5/Speed)
local wav = p(Torm,"Block",0.1,0.1,0.1,true,false,0.3,0,BladeColor) wav.Anchored = true
local wavm = BlastMesh:Clone()
wavm.Parent = wav
wavm.Scale = Vector3.new(15,6,15)
local cff = Torso.CFrame - Vector3.new(0,0,0)
coroutine.resume(coroutine.create(function()
Dash(Blad1,4/Speed)
Dash(Blad2,4/Speed)
for i=i1,i2,is*Speed do
LW.C1 = ca(mr(-80+(-100*i)),mr(40-(40*i)),mr(45*i))
LW.C0 = cf(0.6,0.3+(1.4*i),-1+(1*i))
RW.C1 = ca(mr(-80+(-100*i)),mr(-40+(40*i)),mr(-45*i))
RW.C0 = cf(-0.6,0.3+(1.4*i),-1+(1*i))
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
H1w.C0 = cf(0,-1.1+(-0.9*i),0) *ca(0,mr(360*i),0)
H1w.C1 = ca(mr(-90+(40*i)),0,0)
wait()
end for i=i1,i2*3,is*Speed do H1w.C1 = ca(mr(-50),mr(360*i),0) wait() end end)) Sound(Sounds.Cast,0.45,1) for i=i1,i2*5,is do Functions.BrickWarpDesign(Torso,13) wav.CFrame = cff *ca(0,mr(180*i),0) wait() end
for i=1,0.3,-0.14*Speed do wav.Transparency = i wait() end wav:Remove()
for i=i2,i1,-is*Speed do
LW.C1 = ca(mr(-80+(-100*i)),mr(40-(40*i)),mr(45*i))
LW.C0 = cf(0.6,0.3+(1.4*i),-1+(1*i))
RW.C1 = ca(mr(-80+(-100*i)),mr(-40+(40*i)),mr(-45*i))
RW.C0 = cf(-0.6,0.3+(1.4*i),-1+(1*i))
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
H1w.C0 = cf(0,-1.1+(-0.9*i),0) *ca(0,mr(360*i),0)
H1w.C1 = ca(mr(-90+(40*i)),0,0)
wait()
end
bp2:Remove()
local bg = Instance.new("BodyGyro",Torso) bg.maxTorque = Vector3.new(math.huge,0,math.huge)
local bp = Instance.new("BodyPosition",Torso) bp.position = Torso.Position bp.maxForce = Vector3.new(math.huge,1000000,math.huge)
rpos = math.abs(hitpos.y - Torso.Position.y)
rpos = rpos - 1.2
local tpos = Torso.Position
Hum.WalkSpeed = 0
Hum.PlatformStand = true
Dash(Blad2,1.6/Speed,RingMesh.MeshId)
for i=i1,i2,is do
bp.position = tpos - Vector3.new(0,rpos*i,0)
Neck.C0 = cf(0,1-(0.5*i),-0.5*i) *ca(Neck.C1:toEulerAnglesXYZ())
Torw.C1 = ca(mr(20*i),0,0)
Torw.C0 = cf(0,-0.2*i,-0.2*i)
lh2.C0 = cf(-0.5,-1.9+(1*i),-1.1*i) *ca(mr(10*i),mr(90),0)
rh2.C0 = cf(0.5,-1.9+(1*i),0.1*i) *ca(mr(-95*i),mr(-90),0)
LW.C1 = ca(mr(-80+(30*i)),mr(40),0)
LW.C0 = cf(0.6,0.3-(0.3*i),-1+(0.3*i))
RW.C1 = ca(mr(-80+(30*i)),mr(-40),0)
RW.C0 = cf(-0.6,0.3-(0.3*i),-1+(0.3*i))
H1w.C0 = cf(0,-1.1,0) *ca(mr(55*i),0,0)
wait()
end
wait(0.25)
Sound(Sounds.Boom,0.5,1)
Sound(Sounds.EnergyBlast,0.9,1)
Right = true
ShockWave(Torso,50,BladeColor)
wait(1.5)
Right = false
local t2pos = Torso.Position
for i=i2,i1,-is do
bp.position = t2pos - Vector3.new(0,1.5-(1.5*i),0)
Neck.C0 = cf(0,1-(0.5*i),-0.5*i) *ca(Neck.C1:toEulerAnglesXYZ())
Torw.C1 = ca(mr(20*i),0,0)
Torw.C0 = cf(0,-0.2*i,-0.2*i)
lh2.C0 = cf(-0.5,-1.9+(1*i),-1.1*i) *ca(mr(10*i),mr(90),0)
rh2.C0 = cf(0.5,-1.9+(1*i),0.1*i) *ca(mr(-95*i),mr(-90),0)
LW.C1 = ca(mr(-80+(30*i)),mr(40),0)
LW.C0 = cf(0.6,0.3-(0.3*i),-1+(0.3*i))
RW.C1 = ca(mr(-80+(30*i)),mr(-40),0)
RW.C0 = cf(-0.6,0.3-(0.3*i),-1+(0.3*i))
H1w.C0 = cf(0,-1.1,0) *ca(mr(55*i),0,0)
wait()
end
DebounceSpeed = DebounceSpeed - (1.1*Speed)
bp:Remove()
bg:Remove()
Hum.PlatformStand = false
Hum.WalkSpeed = RealSpeed
Torw.C1 = ca(0,0,0)
Anim.Act = false
Lh,Rh = FeetWeld(false,lh2,rh2)
end
Anims.DualSpin = function(i1,i2,is,RaigCost)
MinusRage(RaigCost)
Anim.Act = true
for i=i1,i2,is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-180-(-90*i)),mr(0*i)) H1w.C1 = ca(mr(-90-(60*i)),0,mr(0*i))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(180-(270*i)),mr(0*i)) H2w.C1 = ca(mr(-90+(-30*i)),0,0)
LW.C1 = ca(mr(-60+(-40*i)),mr(-30+(-75*i)),mr(0*i))
LW.C0 = cf(0.13*i,0.5*i,-0.5+(0.5*i))
RW.C1 = ca(mr(-60+(-20*i)),mr(30+(45*i)),mr(0*i))
RW.C0 = cf(0.13*i,0.4*i,-0.5+(0.4*i))
wait()
end
DebounceSpeed = DebounceSpeed - (0.5*Speed) Right = true Left = true Dash(Blad1,2.6/Speed,nil,2) Dash(Blad2,2.6/Speed,nil,2) local x,y,z = Neck.C0:toEulerAnglesXYZ()
local soundtime = 0
for i=i1,i2*4,is*Speed do if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end Torw.C1 = ca(0,mr(i*360),0) Neck.C0 = cf(0,1,0) *ca(x,y,z+mr(-360*i)) wait() end Neck.C0 = cf(0,1,0) *ca(x,y,z)Torw.C1 = ca(0,0,0)
DebounceSpeed = DebounceSpeed + (0.5*Speed) for i=i2,i1,-is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-180-(-90*i)),mr(0*i)) H1w.C1 = ca(mr(-90-(60*i)),0,mr(0*i))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(180-(270*i)),mr(0*i)) H2w.C1 = ca(mr(-90+(-30*i)),0,0)
LW.C1 = ca(mr(-60+(-40*i)),mr(-30+(-75*i)),mr(0*i))
LW.C0 = cf(0.13*i,0.5*i,-0.5+(0.5*i))
RW.C1 = ca(mr(-60+(-20*i)),mr(30+(45*i)),mr(0*i))
RW.C0 = cf(0.13*i,0.4*i,-0.5+(0.4*i))
wait()
end Right = false Left = false
Anim.Act = false
end

----------------------------
----------------------------
----------------------------
----------------------------

Lh = Torso["Left Hip"]
Rh = Torso["Right Hip"]

Functions = {}
Functions.BoulderTouch = function(hit2,bould)
print(bould.Name)
for i,v in pairs(workspace:GetChildren()) do
if v ~= Char and v ~= nil and v:findFirstChild("Torso") ~= nil and v:findFirstChild("Humanoid") ~= nil then
if math.abs((v.Torso.Position-bould.Position).magnitude) < 11 and ft(RightDebounce,v.Name) == nil then
Sound(Sounds.Smash,1,1)
Dmgz(v.Humanoid,Damage["BoulderForce"])
table.insert(RightDebounce,v.Name)
print(v.Name)
coroutine.resume(coroutine.create(function()wait(DebounceSpeed) local nf = ft(RightDebounce,v.Name) if nf ~= nil then table.remove(RightDebounce,nf) end end))
end
else
if v ~= bould and v:IsA("BasePart") and v.Anchored == false and math.abs((v.Position-bould.Position).magnitude) < 11 then v:BreakJoints() v.Velocity = cf(bould.Position,v.Position).lookVector*10 + Vector3.new(0,10,0) end
end
end -- for
end
Functions.Sparkle = function(bb,scal,si)
if si == nil then si = 1 end
local rand = bb.Position + Vector3.new(math.random(-scal,scal),math.random(-scal,scal),math.random(-scal,scal))
local np = p(Torm,"Block",0.1,0.1,0.1,false,true,0.1,0.2,BladeColor)
np.CFrame = cf(rand.x,rand.y,rand.z) *ca(math.random(-33,33)/10,math.random(-33,33)/10,math.random(-33,33)/10)
local dm = DiamondMesh:Clone() dm.Scale = Vector3.new(0,0,0) dm.Parent = np
coroutine.resume(coroutine.create(function()
for i=0,1*si,0.1*si do
dm.Scale = Vector3.new(1*i,1.25*i,1*i)
wait()
end
end))
coroutine.resume(coroutine.create(function()
wait(0.1)
for i=0,1,0.1 do
np.Transparency = i
wait()
end
np:Remove()
end))
end
Functions.BrickWarpDesign = function(bb,scal)
local rand = bb.Position + Vector3.new(math.random(-scal,scal),math.random(-scal,scal),math.random(-scal,scal))
local mag = (rand - bb.Position).magnitude
local np = p(Torm,"Block",0.1,0.1,mag-3,false,true,0.1,0.2,BladeColor)
np.CFrame = cf(bb.Position,rand)
np.CFrame = np.CFrame + np.CFrame.lookVector*((scal/5)+(mag/2))
coroutine.resume(coroutine.create(function()
for i=0.1,1,0.05 do
np.Transparency = i
wait()
end
np:Remove()
end))
end
Functions.RageRegen = function()
local lostcontrol = false
local hpos = Torso.Position.y + 10
Anim.Move = "RageRegening"
Anim.Act = true
local wav = p(Torm,"Block",0.1,0.1,0.1,true,false,1,0,BladeColor) wav.Anchored = true
local wavm = BlastMesh:Clone()
wavm.Parent = wav
local wavv = 0
wavm.Scale = Vector3.new(5,3.5,5)
wav.CFrame = cf((Torso.CFrame * CFrame.new(0,-2.5,0)).p) *ca(0,mr(wavv),0)
local bp = Instance.new("BodyPosition",Torso)
bp.maxForce = Vector3.new(0,math.huge,0)
Humanoid.WalkSpeed = Humanoid.WalkSpeed - (RealSpeed-4)
bp.position = Torso.Position + Vector3.new(0,10,0)
local bpos = bp.position
coroutine.resume(coroutine.create(function()
lh2,rh2 = FeetWeld(true,Lh,Rh)
if SwordType == "Single" then
for i=0,1,0.1*Speed do
LW.C1 = ca(mr(-80+(-30*i)),mr(40-(40*i)),0)
LW.C0 = cf(0.6-(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-80+(-30*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
else
for i=0,1,0.1*Speed do
LW.C1 = ca(mr(-60+(-50*i)),mr(-40-(-40*i)),0)
LW.C0 = cf(-0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-60+(-50*i)),mr(40+(-40*i)),0)
RW.C0 = cf(0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
end
local function movezx(i1,i2,is,bp)
if SwordType == "Single" then
for i=i1,i2,is*Speed do
LW.C1 = ca(mr(-120+(20*i)),0,0)
LW.C0 = cf(0,0.8,0.7) *ca(0,mr(120+(20*i)),0)
RW.C1 = ca(mr(-120+(20*i)),0,0)
RW.C0 = cf(0,0.8,0.7) *ca(0,mr(-120+(-20*i)),0)
lh2.C1 = ca(mr(30+(-15*i)),0,mr(15+(-8*i)))
rh2.C1 = ca(mr(30+(-15*i)),0,mr(-15+(8*i)))
lh2.C0 = cf(-0.7,-1.9,0.35)
rh2.C0 = cf(0.7,-1.9,0.35)
bp.position = Vector3.new(bpos.x,(hpos+10)+(3*i),bpos.z)
wait()
end
else
for i=i1,i2,is*Speed do
LW.C1 = ca(mr(-110),mr(0),0)
LW.C0 = cf(-0.1,0.8,0.7) *ca(0,mr(120+(20*i)),0)
RW.C1 = ca(mr(-110),mr(0),0)
RW.C0 = cf(0.1,0.8,0.7) *ca(0,mr(-120+(-20*i)),0)
lh2.C1 = ca(mr(30+(-15*i)),0,mr(15+(-8*i)))
rh2.C1 = ca(mr(30+(-15*i)),0,mr(-15+(8*i)))
lh2.C0 = cf(-0.7,-1.9,0.35)
rh2.C0 = cf(0.7,-1.9,0.35)
bp.position = Vector3.new(bpos.x,(hpos+10)+(3*i),bpos.z)
wait()
end
end
end
local moved = 2
repeat
if Rage >= MaxRage or Anim.key.z == false then break end
if moved == 2 then moved = 1 movezx(0,1,0.025,bp) else moved = 2 movezx(1,0,-0.025,bp) end
until Rage >= MaxRage or Anim.key.z == false or lostcontrol == true
if SwordType == "Single" then
for i=1,0,-0.1*Speed do
LW.C1 = ca(mr(-80+(-30*i)),mr(40-(40*i)),0)
LW.C0 = cf(0.6-(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-80+(-30*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
else
for i=1,0,-0.1*Speed do
LW.C1 = ca(mr(-60+(-50*i)),mr(-40-(-40*i)),0)
LW.C0 = cf(-0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-60+(-50*i)),mr(40+(-40*i)),0)
RW.C0 = cf(0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
end
Lh,Rh = FeetWeld(false,lh2,rh2)
wait(0.6)
Anim.Act = false
Anim.Move = "None"
end))
for i=1,0.3,-0.14*Speed do wav.Transparency = i wait() end
rpos = 0
Sound(Sounds.Cast,0.8,1)
repeat wait()
local Hit, hitpos = rayCast(Torso.Position,((Torso.Position - Vector3.new(0,10000,0)) - Torso.Position),999.999,Player.Character)
if Hit == nil then lostcontrol = true break end
hpos = hitpos.y if math.random(1,6) == 4 then Functions.Sparkle(Torso,8) end
if math.random(1,3) == 3 then Functions.BrickWarpDesign(Torso,10) end wavv = wavv + 10 Rage = Rage - (RageCost["RageRegening"]*RageIncome)
wav.CFrame = cf(Torso.Position.x,hpos+1.4,Torso.Position.z) *ca(0,mr(wavv),0)
until Rage >= MaxRage or Anim.key.z == false
for i=0.3,01,0.14*Speed do wav.Transparency = i wait() end wav:Remove()
bp:Remove()
Humanoid.WalkSpeed = Humanoid.WalkSpeed + (RealSpeed-4)
end
Functions.Teleport = function(i1,i2,is,RaigCost)
Anim.Act = true
for i=i1,i2,is*Speed do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
local tele = false
local tele2 = false -- for mouse
local mouseact = mouse.Button1Up:connect(function() tele2 = true end)
coroutine.resume(coroutine.create(function() Sound(Sounds.Cast,1.2,1) wait(12) tele = true end))
local telepos = Torso.Position
local telehit = nil
local wav = p(Torm,"Block",0.1,0.1,0.1,true,false,0.3,0.1,BladeColor) wav.Anchored = true
local wavm = BlastMesh:Clone()
wavm.Parent = wav
local wavv = 0
wavm.Scale = Vector3.new(3.5,2,3.5)
repeat
local mpos = mouse.hit.p + Vector3.new(0,2,0)
telehit,telepos = rayCast(mpos,((mpos - Vector3.new(0,10000,0)) - mpos),999.999,Player.Character)
wavv = wavv + 8 Functions.Sparkle(La,3) Functions.BrickWarpDesign(La,4)
if telehit ~= nil then wav.Transparency = 0 wav.CFrame = cf(telepos.x,telepos.y+1,telepos.z) *ca(0,mr(wavv),0) else wav.Transparency = 1 end
wait() until tele == true or tele2 == true mouseact:disconnect()
if telehit == nil or math.abs((Torso.Position - telepos).magnitude) > Props.MaxTeleDistance then
Sound(Sounds.Punch,1,1) for i=0.3,1,0.14 do wavm.Scale = Vector3.new(3.5+(5*i),2,3.5+(5*i)) wav.Transparency = i wait() end wav:Remove()
wav:Remove()
else
MinusRage(RaigCost)
for i=1,10 do wait() Functions.Sparkle(Torso,5,3) Functions.BrickWarpDesign(Torso,6) end
ShockWave(Torso,7,BladeColor)
Torso.CFrame = wav.CFrame + Vector3.new(0,2.2,0) Sound(Sounds.EnergyBlast,1.2,0.6)
ShockWave(Torso,7,BladeColor)
for i=1,10 do wait() Functions.Sparkle(Torso,5,3) Functions.BrickWarpDesign(Torso,6) end
for i=0.3,1,0.14 do wavm.Scale = Vector3.new(3.5+(5*i),2,3.5+(5*i)) wav.Transparency = i wait() end wav:Remove()
end
for i=i2,i1,-is*Speed do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
Anim.Act = false
end

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
bin.Selected:connect(function(mm)
Mouse = mouse
mouse = mm
Torso["Left Hip"].Part0 = Tor
Torso["Right Hip"].Part0 = Tor
RS.Parent = nil
LS.Parent = nil
RW.Parent = Torso
RW.Part0 = Fra
RW.Part1 = Ra
LW.Parent = Torso
LW.Part0 = Fla
LW.Part1 = La
RW.C0 = CFrame.new(0,0,0) RW.C1 = CFrame.new(0,0,0)
LW.C0 = CFrame.new(0,0,0) LW.C1 = CFrame.new(0,0,0)
Anims.Equip(0,1,0.07*Speed)
Anim.Equipped = true
mouse.KeyDown:connect(function(key)
key:lower()
pcall(function() Anim.key[key:lower()] = true end)
keydown = true
if key == "z" and Anim.Move == "None" and not Anim.Act then
Functions.RageRegen()
end
if SwordType == "Single" then
if key == "e" and Anim.Move == "None" and not Anim.Act and RageCost["RotorBlade"] <= Rage then
Anim.Move = "RotorBlade"
Anims.RotorBlade(0,1,0.08*Speed,RageCost["RotorBlade"])
Anim.Move = "None"
elseif key == "q" and Anim.Move == "None" and not Anim.Act and RageCost["Boomerang"] <= Rage then
Anim.Move = "Boomerang"
Anims.Boomerang(0,1,0.08*Speed,RageCost["Boomerang"])
Anim.Move = "None"
elseif key == "f" and Anim.Move == "None" and not Anim.Act and RageCost["BoulderForce"] <= Rage then
Anim.Move = "BoulderForce"
Anims.BoulderForce(0,1,0.08*Speed,RageCost["BoulderForce"])
Anim.Move = "None"
elseif key == "r" and Anim.Move == "None" and not Anim.Act and RageCost["ForceWave"] <= Rage then
Anim.Move = "ForceWave"
Anims.ForceWave(0,1,0.08*Speed,RageCost["ForceWave"])
Anim.Move = "None"
elseif key == "t" and Anim.Move == "None" and not Anim.Act and RageCost["Teleport"] <= Rage then
Anim.Move = "Teleport"
Functions.Teleport(0,1,0.08*Speed,RageCost["Teleport"])
Anim.Move = "None"
end
elseif SwordType == "Dual" then
if key == "e" and Anim.Move == "None" and not Anim.Act and RageCost["DualSpin"] <= Rage then
Anim.Move = "DualSpin"
Anims.DualSpin(0,1,0.08*Speed,RageCost["DualSpin"])
Anim.Move = "None"
end
end
end)
mouse.KeyUp:connect(function(key)
pcall(function() Anim.key[key:lower()] = false end)
keydown = false
end)

mouse.Button1Down:connect(function() Anim.Button = true
if not Anim.Click and Anim.Move == "None" and not Anim.Act then
Anim.Click = true
if Anim.CanBerserk ~= 0 then Anim.CanBerserk = Anim.CanBerserk + 1 end
if Anim.CanBerserk == 0 and RageCost["Berserk"] <= Rage then
Rage = Rage - RageCost["Berserk"]
Anim.ComboBreak = true
Speed = Speed + 0.5
Anim.CanBerserk = Anim.CanBerserk + 1
--Anim.Move = "LeftPunch"
--Anims.LeftPunch(0,1,0.1*Speed,0) Anim.Move = "None"
elseif Anim.CanBerserk == 2 then
Anim.CanBerserk = 0
end
coroutine.resume(coroutine.create(function() local oldcomb = Anim.CanBerserk wait(0.5) if Anim.ComboBreak == true and Anim.CanBerserk == oldcomb then Anim.ComboBreak = false Speed = Speed -0.5 Anim.CanBerserk = 0 end end))
wait(0.1)
Anim.Click = false
end
end)
mouse.Button1Up:connect(function() Anim.Button = false
end)
end)
bin.Deselected:connect(function(mouse)
Anim.Equipped = false
if SwordType == "Dual" then Anims.ChangeToSingle(0,1,0.25*Speed) SwordType = "Single" end
Anims.UnEquip(1,0,-0.08*Speed)
RW.Parent = nil
LW.Parent = nil
RS.Parent = Torso
RS.Part0 = Torso
RS.Part1 = Ra
LS.Parent = Torso
LS.Part0 = Torso
LS.Part1 = La
if Rh.Parent == nil then
FeetWeld(false,Lh,Rh)
end
Torso["Left Hip"].Part0 = Torso
Torso["Right Hip"].Part0 = Torso
end)
Hum.WalkSpeed = RealSpeed
Rage = 100000
wait(5)
end)

addcmd('time', 'change the time of day',{},
function(args)
    if not args[1]then return end
    local time_=tonumber(args[1])
	Notify('Time set to ' .. args[1])
    
    game.Lighting:SetMinutesAfterMidnight(time_*60)
end)

addcmd('kick', 'kick a player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
lol=function(wt) -- thx man
 if(wt~=nil)then 
    spawn(function()
        pcall(function()
local vic=wt

local skt=Instance.new("SkateboardPlatform", vic)
skt.CFrame=CFrame.new(math.random(-1000,1000),1000,math.random(-1000,1000))
skt.CanCollide=false
skt.Anchored=false
skt.Transparency=1
skt.Size=Vector3.new(5,1,5)
vic.Humanoid.WalkSpeed=0
vic.Humanoid.Jump=true
wait(.2)
local wld=Instance.new("Weld", workspace)
wld.Part0=vic.Torso
wld.Part1=skt
wld.C0=CFrame.new(0,-500,0)
wait(.5)
skt.Anchored=true
wld:Destroy()
Notify('Kicked ' .. gPlayers[v].Name)
end)
 end);
 end;
end;
lol(gPlayers[v].Character)
end
end)

addcmd('ban', 'ban a player',{},
function(args)
game:GetService("RunService").Heartbeat:connect(function(heart)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
lol=function(wt) -- thx man
 if(wt~=nil)then 
    spawn(function()
        pcall(function()
local vic=wt

local skt=Instance.new("SkateboardPlatform", vic)
skt.CFrame=CFrame.new(math.random(-1000,1000),1000,math.random(-1000,1000))
skt.CanCollide=false
skt.Anchored=false
skt.Transparency=1
skt.Size=Vector3.new(5,1,5)
vic.Humanoid.WalkSpeed=0
vic.Humanoid.Jump=true
wait(.2)
local wld=Instance.new("Weld", workspace)
wld.Part0=vic.Torso
wld.Part1=skt
wld.C0=CFrame.new(0,-500,0)
wait(.5)
skt.Anchored=true
wld:Destroy()
Notify('Banned ' .. gPlayers[v].Name)
end)
 end);
 end;
end;
lol(gPlayers[v].Character)
end
end)
end)

addcmd('unlockws', 'unlock the whole workspace',{'unlock'},
function(args)
	Notify('Workspace unlocked')
	wait(1)
    local function unlock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
end)

addcmd('lockws', 'lock the whole workspace',{'lock'},
function(args)
	Notify('Workspace locked')
	wait(1)
    local function lock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = true
            end
            lock(v)
        end
    end
    lock(workspace)
end)

addcmd('unanchorws', 'unanchor the whole workspace',{'unanchor', 'unanchr'},
function(args)
Notify('What have you done ' .. Player.Name .. '!?')
wait(1)
   local function unanchor(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Anchored=false
            end
            unanchor(v)
        end
    end
    unanchor(workspace)
end)

addcmd('hat', 'give player a hat ingame',{},
function(args)
    if not args[1] or not args[2] then return end
	local players = getPlayer(args[1])
    local id=args[2]
	local hat = game:GetService("InsertService"):LoadAsset(id)
	if hat:IsA("Hat") then
		for i,v in pairs(players) do
			hat:clone().Parent = _char(v)
		end		
	end
	hat:Destroy()
end)

addcmd('gear', 'give player a gear ingame',{},
function(args)
	spawn(function()
	    if not args[1] or not args[2] then return end
		local players = getPlayer(args[1])
	    local id=args[2]
		local model = game:GetService("InsertService"):LoadAsset(id)
		for i,v in pairs(players) do
			for _,j in pairs(model:GetChildren()) do
				if j:IsA("Tool") then
					j:Clone().Parent = gPlayers[v].Backpack
					Notify('Gave ' .. gPlayers[v].Name .. ' ' .. args[2])
				end
			end
		end
		model:Destroy()
	end)
end)

addcmd('skick','kicks a player by shutting them down, takes a few seconds',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		spawn(function()
			gPlayers[v].PersonalServerRank = 240
			gPlayers[v].Backpack:WaitForChild("ClassicTool")
			gPlayers[v].PersonalServerRank = 0
		end)
	end
end)

addcmd('admin', 'gives a player admin',{},
function(args)
    if not args[1]then return end
    local players = getPlayer(args[1])
    table.foreach(players,function(k,v)
        admins[v]=true
        Notify('Gave' .. gPlayers[v].Name .. ' admin.')
    end)
	for i,v in pairs(players) do
		local pchar = gPlayers[v].Character
		game.Chat:Chat(pchar.Head, "You've been given admin.")
		wait(2.5)
		game.Chat:Chat(pchar.Head, 'Prefix is "' .. cmdprefix .. '"')
	end
end)

addcmd('unadmin', 'removes a players admin',{},
function(args)
    if not args[1] then return end
    local players = getPlayer(args[1])
    table.foreach(players,function(k,v)
        admins[v]=nil
        Notify(gPlayers[v].Name .. ' no longer has Admin.')
    end)
end)

addcmd('explorer', 'opens DEX',{},
function(args)
function makeThread(str)
	local newstr = "coroutine.resume(coroutine.create(function()\n"
	newstr = newstr .. str .. "\n"
	newstr = newstr .. "end))\n"
	return newstr
end

local gui = game:GetObjects("rbxassetid://464671430")[1]
gui.ExplorerPanel.LocalScript.Source = string.gsub(gui.ExplorerPanel.LocalScript.Source,"script.Parent","game.CoreGui.Dex.ExplorerPanel")
gui.PropertiesFrame.Properties.Source = string.gsub(gui.PropertiesFrame.Properties.Source,"script.Parent.Parent","game.CoreGui.Dex")
gui.Selection.Source = string.gsub(gui.Selection.Source,"script.Parent","game.CoreGui.Dex")
gui.ScriptEditor.LocalScript.Source = string.gsub(gui.ScriptEditor.LocalScript.Source,"script.Parent","game.CoreGui.Dex.ScriptEditor")
gui.Parent = game.CoreGui

local a = makeThread(gui.ExplorerPanel.LocalScript.Source)
local b = makeThread(gui.PropertiesFrame.Properties.Source)
local c = makeThread(gui.Selection.Source)
local d = makeThread(gui.ScriptEditor.LocalScript.Source)

loadstring(a..b..c..d)()
end)

addcmd('firstp', 'forces player to go into first person',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        gPlayers[v].CameraMode = "LockFirstPerson"
		Notify(gPlayers[v].Name .. ' is now first person')
    end
end)

addcmd('base', 'spawns a base',{},
function(args)
local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Silver")
pt.Anchored = true
pt.CanCollide = true
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = (math.random(1,1000000))
pt.Size = Vector3.new(1000, 1, 1000)
Notify('Created new base')
end)

addcmd('fix', 'restores lighting and what not',{},
function(args)
game.Lighting.Ambient = origsettings.abt
game.Lighting.Brightness = origsettings.brt
game.Lighting.TimeOfDay = origsettings.time
game.Lighting.FogColor = origsettings.fclr
game.Lighting.FogEnd = origsettings.fe
game.Lighting.FogStart = origsettings.fs
end)

addcmd('thirdp', 'allows player to go into third person',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        gPlayers[v].CameraMode = "Classic"
		Notify(gPlayers[v].Name .. ' is now third person')
    end
end)

addcmd('chat', 'forces player to chat what you input',{},
function(args)
    local players = getPlayer(args[1])
	local MSG = table.concat(args, " ")
	local newMSG = string.gsub(MSG, args[1] .. " ", "")
    for i,v in pairs(players)do
        game.Chat:Chat(gPlayers[v].Character.Head, newMSG)
    end
end)

addcmd('insert', 'inserts a model',{},
function(args)
    local model = game:GetService("InsertService"):LoadAsset(args[1])
    model.Parent = game.Workspace
    model:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
    model:MakeJoints()
end)

addcmd('name', 'names player',{},
function(args)
    local players = getPlayer(args[1])
    local msg = table.concat(args, " ")
    local newmsg = string.gsub(msg, args[1] .. " ", "")
	for i,v in pairs(players) do
		for a, mod in pairs(gPlayers[v].Character:children()) do
		if mod:FindFirstChild("TAG") then
		gPlayers[v].Character.Head.Transparency = 0
		mod:Destroy()
		end
		end
		
		local char = gPlayers[v].Character
		local model = Instance.new("Model", char)
		local clone = char.Head:Clone()
		local hum = Instance.new("Humanoid", model)
		local weld = Instance.new("Weld", clone)
			model.Name = newmsg 
			clone.Parent = model
			hum.Name = "TAG"
			hum.MaxHealth = 100
			hum.Health = 100
			weld.Part0 = clone
			weld.Part1 = char.Head
			char.Head.Transparency = 1
			Notify(gPlayers[v].Name .. ' name set to ' ..newmsg)
	end
end)

addcmd('unname', 'unnames player',{},
function(args)
    local players = getPlayer(args[1])
    local name = (args[2])
	for i,v in pairs(players) do
		for a, mod in pairs(gPlayers[v].Character:children()) do
			if mod:FindFirstChild("TAG") then
				gPlayers[v].Character.Head.Transparency = 0
				mod:Destroy()
				Notify('Unnamed ' ..gPlayers[v].Name)
			end
		end
	end
end)

addcmd('stun', 'stuns player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.PlatformStand = true
	end
end)

addcmd('unstun', 'stuns player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.PlatformStand = false
	end
end)

addcmd('sit', 'stuns player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.Sit = true
	end
end)

addcmd('guest', 'ew a guest',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1"
		gPlayers[v].Character:BreakJoints()
	end
end)

addcmd('damage', 'damages a player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.Health = gPlayers[v].Character.Humanoid.Health - 25
		Notify('Gave ' .. gPlayers[v].Name .. ' damage')
	end
end)

addcmd('view', 'views player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		game.Workspace.CurrentCamera.CameraSubject = gPlayers[v].Character
		Notify('Viewing ' .. gPlayers[v].Name)
	end
end)

addcmd('unview', 'stops viewing player',{},
function()
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
	Notify('View turned off')
end)

addcmd('nolimbs', 'removes limbs from player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		for i,v in pairs(gPlayers[v].Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" or
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Remove()
			end
		end
	end	
end)

addcmd('box', 'creates a box around player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        local SB = Instance.new("SelectionBox", pchar)
        SB.Adornee = SB.Parent
        SB.Color = BrickColor.new("" .. (args[2]))
    end
end)

addcmd('nobox', 'takes away box from player',{'unbox'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for i,v in pairs(gPlayers[v].Character:GetChildren()) do
			if v:IsA("SelectionBox") then
				v:Destroy()
			end
	    end
    end
end)

addcmd('ghost', 'ghostifys player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=gPlayers[v].Character
        pchar.Head.Transparency = 0.5
        pchar.Torso.Transparency = 0.5
        pchar["Left Arm"].Transparency = 0.5
        pchar["Right Arm"].Transparency = 0.5
        pchar["Left Leg"].Transparency = 0.5
        pchar["Right Leg"].Transparency = 0.5
        pchar.Head.face.Transparency = 0.5
    end
end)

addcmd('sphere', 'puts sphere around player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=gPlayers[v].Character
        local SS = Instance.new("SelectionSphere", pchar)
        SS.Adornee = SS.Parent
    end
end)

addcmd('loadmap','loads map from model',{},
function(args)
    pcall(function()
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name~="Camera" and v.Name~="Terrain" then
			v:Destroy()
		end
	end
	workspace.Terrain:Clear()
	for i,v in pairs(game.Players:GetChildren()) do
		local plr = v
		local prt = Instance.new("Model", workspace)
		Instance.new("Part", prt).Name="Torso"
		Instance.new("Part", prt).Name="Head"
		Instance.new("Humanoid", prt).Name="Humanoid"
		plr.Character = prt
	end
	if (args[1]) == "sfotho" then
	    local b = Insert(296400126, game.Workspace, "sfotho")
	    b:MakeJoints()
	end
	local b = Insert(args[1], game.Workspace, "LoadedMap")
	b:MakeJoints()
end)
Notify('Loaded Map')
end)

addcmd('ambient','changes ambient',{},
function(args)
	game.Lighting.Ambient = Color3.new(args[1],args[2],args[3])
end)

addcmd('gui','gives YourMom GUI',{},
function(args)
	loadstring(Insert(289110135, game.CoreGui.RobloxGui).Source)()
end)

addcmd('jail','jails player',{},
function(args)
	local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=gPlayers[v].Character
        local JailPlayer = DATA.JAIL:Clone()
	    JailPlayer.Parent = game.Workspace
	    JailPlayer:MoveTo(pchar.Torso.Position)
	    JailPlayer.Name = "JAIL_" .. gPlayers[v].Name
		if pchar:FindFirstChild("HumanoidRootPart") then
			pchar.HumanoidRootPart.CFrame = JailPlayer.MAIN.CFrame
		end		
    end
end)

addcmd('unjail','unjails player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		game.Workspace["JAIL_" .. gPlayers[v].Name]:Destroy()
	end
end)

addcmd('shutdown', 'shuts the server down',{},
function(args)
	local function ShutDown(Base)
		for i,v in pairs(Base:GetChildren()) do
			v:Destroy()
			Notify('Shutting Down...')
		end
	end
	ShutDown(game.Players)
end)

addcmd('animation','makes player animate',{'anim'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
        local ID = args[2]

        if args[2] == "climb" then
	        ID = "180436334"
    end
        if args[2] == "fall" then
	        ID = "180436148"
    end
        if args[2] == "jump" then
	        ID = "125750702"
    end
        if args[2] == "sit" then
	        ID = "178130996"
    end
        for _,x in pairs(gPlayers[v].Character.Animate:GetChildren()) do
            if x:IsA("StringValue") then
                for _,c in pairs(x:GetChildren()) do
	                if c:IsA("Animation") then
	            	    c.AnimationId = "rbxassetid://" .. ID
	                end
	            end
            end
        end
    end
end)

addcmd('normal','turns player back to normal',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
		
	    pchar.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
	    pchar.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso["Left Shoulder"].C0 = CFrame.new(-1,0.5,0) * CFrame.Angles(0,math.rad(-90),0)
	    pchar.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
	
	    for i,v in pairs(pchar.Head:GetChildren()) do
		    if v:IsA("SpecialMesh") then
			    v:Destroy()
		    end
	    end
	
		for i,v in pairs(pchar:GetChildren()) do
			if v:IsA("Shirt") then
				v:Destroy()
			end
		end
		
		for i,v in pairs(pchar:GetChildren()) do
			if v:IsA("Pants") then
				v:Destroy()
			end
		end
		
		if Player.Character:FindFirstChild("Shirt Graphic") ~= nil then
			Player.Character["Shirt Graphic"].Graphic = ""
		end
		
		local HeadMesh = Instance.new("SpecialMesh", pchar.Head)
		HeadMesh.MeshType = "Head"
		HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
		
		pchar.Head.Transparency = 0
		pchar.Torso.Transparency = 0
		pchar["Left Arm"].Transparency = 0
		pchar["Right Arm"].Transparency = 0
		pchar["Left Leg"].Transparency = 0
		pchar["Right Leg"].Transparency = 0
		
		for i,v in pairs(pchar.Head:GetChildren()) do
			if v:IsA("Decal") then
				v:Destroy()
			end
		end
		
		local face = Instance.new("Decal", pchar.Head)
		face.Name = "face"
		face.Texture = "rbxasset://textures/face.png"
		face.Face = "Front"
		
		for i,v in pairs(pchar:GetChildren()) do
			if v:IsA("Seat") then
				v:Destroy()
			end
		end
		
		for i,v in pairs(pchar.Torso:GetChildren()) do
			if v:IsA("Weld") then
				v:Destroy()
			end
		end
		
		for i,v in pairs(pchar.Torso:GetChildren()) do
			if v:IsA("SpecialMesh") then
				v:Destroy()
			end
		end
		
		pchar["Body Colors"].HeadColor = BrickColor.new("Cool yellow")
		pchar["Body Colors"].LeftArmColor = BrickColor.new("Cool yellow")
		pchar["Body Colors"].LeftLegColor = BrickColor.new("Medium blue")
		pchar["Body Colors"].RightArmColor = BrickColor.new("Cool yellow")
		pchar["Body Colors"].RightLegColor = BrickColor.new("Medium blue")
		pchar["Body Colors"].TorsoColor = BrickColor.new("Bright blue")
		for _,v in pairs(Player.Character:GetChildren()) do
			if v:IsA("Hat") then
				v:Destroy()
			end
		end
    end
end)

addcmd('creeper','make the player a creeper',{'crpr'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
	local pchar = gPlayers[v].Character
        if gPlayers[v] and pchar and pchar:findFirstChild("Torso") then
            if pchar:FindFirstChild("Shirt") then
	            pchar.Shirt.Parent = pchar.Torso
            end
            if pchar:FindFirstChild("Pants") then
	            pchar.Pants.Parent = pchar.Torso
            end
            if pchar:FindFirstChild("Shirt Graphic") then
	            pchar["Shirt Graphic"].Graphic = ""
            end
            for i,v in pairs(pchar:GetChildren()) do
	            if v:IsA("Hat") then
		            v:Destroy()
	            end
            end
            pchar.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
            pchar.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
            pchar.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
            pchar.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
            pchar.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
            pchar["Body Colors"].HeadColor = BrickColor.new("Bright green")
            pchar["Body Colors"].LeftArmColor = BrickColor.new("Bright green")
            pchar["Body Colors"].LeftLegColor = BrickColor.new("Bright green")
            pchar["Body Colors"].RightArmColor = BrickColor.new("Bright green")
            pchar["Body Colors"].RightLegColor = BrickColor.new("Bright green")
            pchar["Body Colors"].TorsoColor = BrickColor.new("Bright green")
        end
    end
end)

addcmd('uncreeper','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd("fix " .. gPlayers[v].Name, Player)
	end
end)

addcmd('shrek', 'makes player shrek',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		local pchar = gPlayers[v].Character
		for i,v in pairs(pchar:GetChildren()) do
			if v:IsA("Hat") or v:IsA("CharacterMesh") or v:IsA("Shirt") or v:IsA("Pants") then
				v:Destroy()
			end
		end
		for i,v in pairs(pchar.Head:GetChildren()) do
			if v:IsA("Decal") or v:IsA("SpecialMesh") then
				v:Destroy()
			end
		end
		
		local mesh = Instance.new("SpecialMesh", pchar.Head)
		mesh.MeshType = "FileMesh"
		pchar.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=19999257"
		pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)
		pchar.Head.Mesh.TextureId = "http://www.roblox.com/asset/?id=156397869"
		
		local Shirt = Instance.new("Shirt", gPlayers[v].Character)
		local Pants = Instance.new("Pants", gPlayers[v].Character)
		
		Shirt.ShirtTemplate = "rbxassetid://133078194"
		Pants.PantsTemplate = "rbxassetid://133078204"
	end
end)

addcmd('unshrek','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd("fix " .. gPlayers[v].Name, Player)
	end
end)

local Spamming = false

addcmd('spam','spams text',{},
function(args)
	Spamming = true
	spawn(function()
		while wait(0) do
			if Spamming == true then
	            while wait(0.1) do
		            if Spamming == true then
			            game.Players:Chat(""  .. args[1])
		        elseif Spamming == false then
			            return
			        end
			    end
	        end
	    end
	end)
end)

addcmd('nospam','stops spamming',{},
function(args)
	Spamming = false
end)

addcmd('control','controls player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
		if gPlayers[v] and pchar then
			pchar.Humanoid.PlatformStand = true
			local w = Instance.new("Weld", Player.Character.Torso) 
			w.Part0 = Player.Character.Torso 
			w.Part1 = pchar.Torso  
			local w2 = Instance.new("Weld", Player.Character.Head) 
			w2.Part0 = Player.Character.Head 
			w2.Part1 = pchar.Head  
			local w3 = Instance.new("Weld", Player.Character:findFirstChild("Right Arm")) 
			w3.Part0 = Player.Character:findFirstChild("Right Arm")
			w3.Part1 = pchar:findFirstChild("Right Arm") 
			local w4 = Instance.new("Weld", Player.Character:findFirstChild("Left Arm"))
			w4.Part0 = Player.Character:findFirstChild("Left Arm")
			w4.Part1 = pchar:findFirstChild("Left Arm") 
			local w5 = Instance.new("Weld", Player.Character:findFirstChild("Right Leg")) 
			w5.Part0 = Player.Character:findFirstChild("Right Leg")
			w5.Part1 = pchar:findFirstChild("Right Leg") 
			local w6 = Instance.new("Weld", Player.Character:findFirstChild("Left Leg")) 
			w6.Part0 = Player.Character:findFirstChild("Left Leg")
			w6.Part1 = pchar:findFirstChild("Left Leg") 
			char.Head.face:Destroy()
			for i,v in pairs(pchar:GetChildren()) do
				if v:IsA("BasePart") then 
					v.CanCollide = false
				end
			end
			for i,v in pairs(char:GetChildren()) do
				if v:IsA("BasePart") then
					v.Transparency = 1 
				elseif v:IsA("Hat") then
					v:Destroy()
				end
			end
			pchar.Parent = char
			pchar.Humanoid.Changed:connect(function()
				pchar.Humanoid.PlatformStand = true
			end)
		end
		end
end)

addcmd('nuke','nukes player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
		if gPlayers[v] and pchar and pchar:FindFirstChild("Torso")  then
			local nuke = Instance.new("Part", game.Workspace)
			nuke.Anchored = true
			nuke.CanCollide = false
			nuke.FormFactor = "Symmetric"
			nuke.Shape = "Ball"
			nuke.Size = Vector3.new(1,1,1)
			nuke.BrickColor = BrickColor.new("New Yeller")
			nuke.Transparency = 0.5
			nuke.Reflectance = 0.2
			nuke.TopSurface = 0
			nuke.BottomSurface = 0
			nuke.Touched:connect(function (hit)
				if hit and hit.Parent then
					local boom = Instance.new("Explosion", game.Workspace)
					boom.Position = hit.Position
					boom.BlastRadius = 11
					boom.BlastPressure = math.huge
				end
			end)
			local CF = pchar.Torso.CFrame
			nuke.CFrame = CF
			for i = 1,333 do
				nuke.Size = nuke.Size + Vector3.new(3,3,3)
				nuke.CFrame = CF
				wait(1/44)
			end
			nuke:Destroy()
		end
	end
end)

addcmd('infect','infects player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		function infect(rip)
		local pchar = gPlayers[v].Character
			for i,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") or v:IsA("Shirt") or v:IsA("Pants") then
					v:Destroy()
					Notify(gPlayers[v].Name .. ' is now infected')
				end
			end
			if pchar.Torso:FindFirstChild("roblox") then
				pchar.Torso.roblox:Destroy()
			end
			if pchar.Head:FindFirstChild("face") then
				pchar.Head.face.Texture = "http://www.roblox.com/asset/?id=94634491"
			end
			if pchar:FindFirstChild("Body Colors") then
				local Colors = pchar["Body Colors"]
				local Skin = BrickColor.new("Pastel green")
				local Clothes = BrickColor.new("Reddish brown")
				Colors.HeadColor = Skin
				Colors.LeftArmColor = Skin
				Colors.RightArmColor = Skin
				Colors.LeftLegColor = Clothes
				Colors.RightLegColor = Clothes
				Colors.TorsoColor = Clothes
			end
			local w1 = Instance.new("Weld", pchar)
			w1.Part0 = pchar["Right Arm"]
			w1.Part1 = pchar.Torso
			w1.C0 = CFrame.new(-1.5, 0.5, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0))
			local w2 = Instance.new("Weld", pchar)
			w2.Part0 = pchar["Left Arm"]
			w2.Part1 = pchar.Torso
			w2.C0 = CFrame.new(1.5, 0.5, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0))
			local rip = false
			local connect1 = pchar["Left Arm"].Touched:connect(function(hit)
				if connect1 == false then
					connect1 = true
					if game.Players:FindFirstChild(hit.Parent.Name) then
						infect(game.Players[hit.Parent.Name])
					end
					wait(0.5)
					connect1 = true
				end
			end)
			local connect2 = pchar["Right Arm"].Touched:connect(function(hit)
				if connect2 == false then
					connect2 = true
					if game.Players:FindFirstChild(hit.Parent.Name) then
						infect(game.Players[hit.Parent.Name])
					end
					wait(0.5)
					connect2 = true
				end
			end)
			local IV = Instance.new("IntValue", pchar)
			IV.Name = "Infected"
			IV.Value = 0
			IV.Changed:connect(function()
				connect1:disconnect()
				connect2:disconnect()
			end)
		end
		infect(v)
	end
end)

addcmd('uninfect','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd("fix " .. gPlayers[v].Name, Player)
		Notify(gPlayers[v].Name .. 'is no longer infected')
	end
end)

addcmd('duck','makes players head a duck',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v:IsA("Decal") then
			    v:Destroy()
		    end
	    end
	    for i,v in pairs(pchar:GetChildren()) do
		    if v:IsA("Hat") then
			    v:Destroy()
		    end
	    end
	    local duck = Instance.new("SpecialMesh", pchar.Torso)
	    duck.MeshType = "FileMesh"
	    duck.MeshId = "http://www.roblox.com/asset/?id=9419831"
	    duck.TextureId = "http://www.roblox.com/asset/?id=9419827"
	    duck.Scale = Vector3.new(5, 5, 5)
	    pchar.Head.Transparency = 1
	    pchar["Left Arm"].Transparency = 1
	    pchar["Right Arm"].Transparency = 1
	    pchar["Left Leg"].Transparency = 1
	    pchar["Right Leg"].Transparency = 1
	    pchar.Head.face.Transparency = 1
	end
end)

addcmd('unduck','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd("fix " .. gPlayers[v].Name, Player)
	end
end)

addcmd('disable','removes players humanoid',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("Humanoid") then
		   pchar.Humanoid.Name = "HUMANOID_" .. gPlayers[v].Name
		   local humanoid = pchar["HUMANOID_" .. gPlayers[v].Name]
		   humanoid.Parent = game.ContextActionService
		Notify(gPlayers[v].Name .. ' has been disabled')
	    end
	end
end)

addcmd('enable','gives player humanoid',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("Humanoid") then
		    return
	    else
		    local humanoid = game.ContextActionService["HUMANOID_" .. gPlayers[v].Name]
		    humanoid.Parent = pchar
		    humanoid.Name = "Humanoid"
			Notify(gPlayers[v].Name .. ' has been enabled')
	    end
	end
end)

addcmd('size','changes size of player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	local pchar = gPlayers[v].Character
		local function scale(chr,scl)
		
			for _,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
				
		    local Head = chr['Head']
		    local Torso = chr['Torso']
		    local LA = chr['Left Arm']
		    local RA = chr['Right Arm']
		    local LL = chr['Left Leg']
		    local RL = chr['Right Leg']
		    local HRP = chr['HumanoidRootPart']
		
		    wait(0.1)
		   
		    Head.formFactor = 3
		    Torso.formFactor = 3
		    LA.formFactor = 3
		    RA.formFactor = 3
		    LL.formFactor = 3
		    RL.formFactor = 3
		    HRP.formFactor = 3
		    
		    Head.Size = Vector3.new(scl * 2, scl, scl)
		    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
		    LA.Size = Vector3.new(scl, scl * 2, scl)
		    RA.Size = Vector3.new(scl, scl * 2, scl)
		    LL.Size = Vector3.new(scl, scl * 2, scl)
		    RL.Size = Vector3.new(scl, scl * 2, scl)
		    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
		    
		    local Motor1 = Instance.new('Motor6D', Torso)
		    Motor1.Part0 = Torso
		    Motor1.Part1 = Head
	    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.Name = "Neck"
				    
	    	local Motor2 = Instance.new('Motor6D', Torso)
	    	Motor2.Part0 = Torso
	    	Motor2.Part1 = LA
	    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.Name = "Left Shoulder"
	    	
	    	local Motor3 = Instance.new('Motor6D', Torso)
	   		Motor3.Part0 = Torso
	    	Motor3.Part1 = RA
	    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.Name = "Right Shoulder"
	    	
	    	local Motor4 = Instance.new('Motor6D', Torso)
	    	Motor4.Part0 = Torso
	    	Motor4.Part1 = LL
	    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.Name = "Left Hip"
	    	
	    	local Motor5 = Instance.new('Motor6D', Torso)
	    	Motor5.Part0 = Torso
	    	Motor5.Part1 = RL
	    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.Name = "Right Hip"
	    	
	    	local Motor6 = Instance.new('Motor6D', HRP)
	    	Motor6.Part0 = HRP
	    	Motor6.Part1 = Torso
	    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	    
		end
		
		scale(pchar, args[2])
	
		for _,v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Hat") then
				v.Parent = pchar
			end
		end
	end
end)

addcmd('confuse','reverses players speed',{'reverse'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Humanoid.WalkSpeed = tonumber(-16)
	end
end)

addcmd('unconfuse','reverses players speed',{'unreverse'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Humanoid.WalkSpeed = tonumber(16)
	end
end)

addcmd('clone','clones player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Archivable = true
	    local clone = pchar:Clone()
	    clone.Parent = game.Workspace
	    clone:MoveTo(pchar:GetModelCFrame().p)
	    clone:MakeJoints()
	    pchar.Archivable = false
	end
end)

addcmd('spin','spins player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == "Spinning" then
			    v:Destroy()
		    end
	    end
	    local Torso = pchar.Torso
	    local BG = Instance.new("BodyGyro", Torso)
	    BG.Name = "Spinning"
	    BG.maxTorque = Vector3.new(0, math.huge, 0)
	    BG.P = 11111
	    BG.cframe = Torso.CFrame
	    repeat wait(1/44)
		    BG.CFrame = BG.CFrame * CFrame.Angles(0,math.rad(30),0)
	    until not BG or BG.Parent ~= Torso
	end
end)

addcmd('unspin','stops spinning player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == "Spinning" then
			    v:Destroy()
		    end
	    end
	end
end)

addcmd('dog','makes player a dog',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("Shirt") then
		    pchar.Shirt:Destroy()
	    end
	    if pchar:FindFirstChild("Pants") then
		    pchar.Pants:Destroy()
	    end
	    if pchar:FindFirstChild("Shirt Graphic") then
		    pchar["Shirt Graphic"].Graphic = ""
	    end
	    pchar.Torso.Transparency = 1
	    pchar.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
	    pchar.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
	    pchar.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
	    local FakeTorso = Instance.new("Seat", pchar)
	    FakeTorso.Name = "FakeTorso"
	    FakeTorso.FormFactor = "Symmetric"
	    FakeTorso.TopSurface = 0
	    FakeTorso.BottomSurface = 0
	    FakeTorso.Size = Vector3.new(3,1,4)
	    FakeTorso.BrickColor = BrickColor.new("Brown")
	    FakeTorso.CFrame = pchar.Torso.CFrame
	    local BF = Instance.new("BodyForce", FakeTorso)
	    BF.Force = Vector3.new(0, FakeTorso:GetMass() * 196.25, 0)
	    local W = Instance.new("Weld", pchar.Torso)
	    W.Part0 = pchar.Torso
	    W.Part1 = FakeTorso
	    W.C0 = CFrame.new(0,-.5,0)
	    local BC = pchar["Body Colors"]
	    BC.HeadColor = BrickColor.new("Brown")
	    BC.LeftArmColor = BrickColor.new("Brown")
	    BC.LeftLegColor = BrickColor.new("Brown")
	    BC.RightArmColor = BrickColor.new("Brown")
	    BC.RightLegColor = BrickColor.new("Brown")
	    BC.TorsoColor = BrickColor.new("Brown")
	end
end)

addcmd('undog','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd("fix " .. gPlayers[v].Name, Player)
	end
end)

addcmd('tptool','gives player tptool',{''},
function(args)
	local tool = DATA.Teleport:Clone()
	tool.Parent = Player.Backpack
end)

addcmd('loopsit','loop sits player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("LoopSit") then
		    pchar.LoopSit.Name = "NotLoopSit"
		    wait(0.1)
		    pchar.NotLoopSit:Destroy()
	    end
	    local LoopSit = Instance.new("StringValue", pchar)
	    LoopSit.Name = "LoopSit"
	    Notify(gPlayers[v].Name .. ' is now loopsitting')
	    repeat wait(0.1)
		    pchar.Humanoid.Sit = true
			Notify(gPlayers[v].Name .. ' is now loopsitting')
	    until LoopSit.Name == "NotLoopSit"
	end
end)

addcmd('unloopsit','stops loop sit on player',{'noloopsit'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("LoopSit") then
		    pchar.LoopSit.Name = "NotLoopSit"
		    wait(0.1)
		    pchar.NotLoopSit:Destroy()
			Notify(gPlayers[v].Name .. ' is no longer loopsitting')
	    end
	end
end)

addcmd('loopjump','loop jumps player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("LoopJump") then
		    pchar.LoopJump.Name = "NotLoopJump"
		    wait(0.1)
		    pchar.NotLoopJump:Destroy()
	    end
	    local LoopJump = Instance.new("StringValue", pchar)
	    LoopJump.Name = "LoopJump"
		Notify('loopjumping ' .. gPlayers[v].Name)
	    repeat wait(0.1)
		    pchar.Humanoid.Jump = true
	    until LoopJump.Name == "NotLoopJump"
	end
end)

addcmd('unloopjump','stops loop jump on player',{'noloopjump'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("LoopJump") then
		    pchar.LoopJump.Name = "NotLoopJump"
		    wait(0.1)
		    pchar.NotLoopJump:Destroy()
			Notify(gPlayers[v].Name .. ' is no longer loopjumping')
	    end
	end
end)

addcmd('loopheal','loop heals player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("LoopHeal") then
		    pchar.LoopHeal.Name = "NotLoopHeal"
		    wait(0.1)
		    pchar.NotLoopHeal:Destroy()
	    end
	    local LoopHeal = Instance.new("StringValue", pchar)
	    LoopHeal.Name = "LoopHeal"
		Notify('loophealing' .. gPlayers[v].Name)
	    repeat wait(0.1)
		    pchar.Humanoid.Health = pchar.Humanoid.MaxHealth
	    until LoopHeal.Name == "NotLoopHeal"
	end
end)

addcmd('unloopheal','stops loop heal on player',{'noloopheal'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("LoopHeal") then
		    pchar.LoopHeal.Name = "NotLoopHeal"
		    wait(0.1)
		    pchar.NotLoopHeal:Destroy()
			Notify(gPlayers[v].Name .. ' no longer has loopheal')
	    end
	end
end)

addcmd('fling','flings player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
		if pchar:FindFirstChild("Humanoid") then
			local xran
			local zran
			repeat
				xran = math.random(-9999,9999)
			until math.abs(xran) >= 5555
			repeat
				zran = math.random(-9999,9999)
			until math.abs(zran) >= 5555
			pchar.Humanoid.Sit = true
			pchar.Torso.Velocity = Vector3.new(0,0,0)
			local BF = Instance.new("BodyForce", pchar.Torso)
			BF.force = Vector3.new(xran * 4, 9999 * 5, zran * 4)
			Notify('Flung ' .. gPlayers[v].Name .. ' :D')
		end
	end
end)

addcmd('nograv','makes player have moon gravity',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == "NoGrav" then
			    v:Destroy()
		    end
	    end
	    local BF = Instance.new("BodyForce", pchar.Torso)
	    BF.Name = "NoGrav"
	    BF.Force = Vector3.new(0,2700,0)
		Notify(gPlayers[v].Name .. ' now has nograv')
	end
end)

addcmd('grav','makes player have normal gravity',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == "NoGrav" then
			    v:Destroy()
				Notify(gPlayers[v].Name .. ' now has grav')
		    end
	    end
	end
end)

addcmd('seizure','makes player have a seizure',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("Seizure") then
		    
	    end
	    local Seizure = Instance.new("StringValue", pchar)
	    Seizure.Name = "Seizure"
	    pchar.Humanoid.PlatformStand = true
		repeat wait()
		    pchar.Torso.Velocity = Vector3.new(math.random(-10,10),-5,math.random(-10,10))
		    pchar.Torso.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
		until Seizure.Name == "NotSeizure"
	end
end)

addcmd('unseizure','makes player stop having a seizure',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("Seizure") then
	        pchar.Humanoid.PlatformStand = false
		    pchar.Seizure.Name = "NotSeizure"
		    wait(0.1)
		    pchar.NotSeizure:Destroy()
	    end
	end
end)

addcmd('wtrbtools', 'tools from welcome to roblox building',{},
function(args)
x = game:GetService("InsertService"):LoadAsset(73089166)
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(73089204)
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove() 
x = game:GetService("InsertService"):LoadAsset(73089190) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(58880579) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(60791062) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(73089239) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
end)

addcmd('cape','gives you a cape',{''},
function(args)
    if not args[1] then
		args[1] = 1012
	end
	capeColor = args[1]
    Cape(Player)
end)

addcmd('m','makes a global message :0',{''},
function(args)
    local MSG = table.concat(args, " ")
    local newMSG = string.gsub(MSG, args[1] .. " ", "")
    _G.msg(MSG)
end)

addcmd('uncape','takes cape away from you',{''},
function(args)
	if char:FindFirstChild("Cape") ~= nil then
	    char.Cape:Destroy()
	end
end)

addcmd('paper','makes player thin as paper',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    local LA = DATA.Paper:Clone()
	    LA.Parent = pchar["Left Arm"]
	    local RA = DATA.Paper:Clone()
	    RA.Parent = pchar["Right Arm"]
	    local LL = DATA.Paper:Clone()
	    LL.Parent = pchar["Left Leg"]
	    local RL = DATA.Paper:Clone()
	    RL.Parent = pchar["Right Leg"]
	    local T = DATA.Paper:Clone()
	    T.Parent = pchar.Torso
		local H = DATA.Paper:Clone()
		H.Parent = pchar.Head
		pchar.Head.face:Destroy()
	end
end)

addcmd('punish','punishs player',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Parent = game.Lighting
		Notify(gPlayers[v].Name .. ' has been punished')
	end
end)

addcmd('unpunish','unpunishs player',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    if game.Lighting:FindFirstChild("" .. gPlayers[v].Name) then
	        game.Lighting:FindFirstChild("" .. gPlayers[v].Name).Parent = game.Workspace
			Notify(gPlayers[v].Name .. ' has been unpunished')
	    end
	end
end)

addcmd('disco','disco party',{''},
function(args)
	Disco = true
	if Disco == true then
		repeat wait(0.3)
		    game.Lighting.Ambient = Color3.new(math.random(),math.random(),math.random())
		until Disco == false
	end
end)

addcmd('undisco','rip disco party',{''},
function(args)
	Disco = false
	wait(0.1)
	game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
end)

-----------
---Extra---
-----------

Floating = false

addcmd('float', 'makes player float',{},
function(args,speaker)
	Floating = true
	local players = getPlayer(args[1])
	for _,v in pairs(players) do
		local pchar = gPlayers[v].Character
		if gPlayers[v] and pchar and not pchar:FindFirstChild("Float") then
			spawn(function()
				local float = DATA.Float:Clone()
				float.Parent = pchar
				float.CFrame = pchar.Torso.CFrame * CFrame.new(0,-3.5,0)
				spawn(function()
					Notify(gPlayers[v].Name .. ' now has float')
					while wait(0.1) do
						if pchar:FindFirstChild("Float") then
							float.CFrame = pchar.Torso.CFrame * CFrame.new(0,-3.5,0)
						else
							break
						end
					end
				end)
			end)
		end
	end
end)

addcmd('unfloat','disables floating',{},
function(args)
	Floating = false
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("Float") then
		    pchar.Float:Destroy()
			Notify(gPlayers[v].Name .. ' no longer has float')
	    end
	end
end)

local Clip = true

addcmd('noclip','enables noclip',{},
function(args)
Notify('NoClip enabled')
Clip = false
	wait(1)
	Name = game.Players.LocalPlayer.Name
	game:GetService('Players').LocalPlayer.PlayerGui.ChildAdded:connect(function (NC)
		delay(0, function()
			if NC.Name ~= "Memes" then
				NC:Destroy()
			end
		end)
	end)
	game:GetService('RunService').Stepped:connect(function ()
    game.Workspace[Name].Torso.CanCollide = Clip
    game.Workspace[Name].Head.CanCollide = Clip
	end)
	game.Workspace[Name].Torso.Changed:connect(function()
    game.Workspace[Name].Torso.CanCollide = Clip
	game.Workspace[Name].Head.CanCollide = Clip
	end)
end)

addcmd('clip','disables noclip',{},
function(args)
	Notify('NoClip disabled')
	Clip = true
end)

wait(0.1)

addcmd('prefix','changes prefix',{},
function(args)
	cmdprefix = args[1]
	Notify('Changed prefix to "' .. args[1] .. '"')
end)

addcmd('admins','prints admins',{},
function(args)
	for i,v in pairs(AdminFolder:GetChildren()) do
		if v:IsA("StringValue") then
			print("-" .. v.Value)
			Notify('Printed Admins, Check Console')
		end
	end
end)

addcmd('respawn','respawns',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		local M = Instance.new('Model', gWorkspace) M.Name = 'respawn_seth'
		local H = Instance.new('Humanoid', M)
		local T = Instance.new('Part', M) T.Name = 'Torso' T.CanCollide = false T.Transparency = 1
		gPlayers[v].Character = M
	end
end)

addcmd('bans','prints bans',{},
function(args)
	for i,v in pairs(BanFolder:GetChildren()) do
		if v:IsA("StringValue") then
			print("-" .. v.Value)
			Notify('Printed Bans, Check Console (F9)')
		end
	end
end)

addcmd('version','shows version',{''},
function(args)
	Notify("Version is " .. Version)
end)

-----------------------
-----Floating data-----
-----------------------

Mouse.KeyDown:connect(function (Key)
	if Key:byte() == 29 then
		if Floating == false then
			execCmd("float me", Player)
			Floating = true
		elseif Floating == true then
			execCmd("unfloat me", Player)
			Floating = false
		end
	end
end)

--------------
---Ban data---
--------------

for i,v in pairs(BannedPlayers) do
	local ban = Instance.new("StringValue", BanFolder)
	ban.Value = v
	ban.RobloxLocked = true
end

spawn(function ()
    while wait(0.1) do
		for _,a in pairs(game.ContextActionService:GetChildren()) do
		    if a.Name == "BanList" then
			    for _,b in pairs(a:GetChildren()) do
				    if b:IsA("StringValue") then
					    for _,c in pairs(game.Players:GetChildren()) do
						    if c.Name == b.Value then
							    c.PersonalServerRank = 200
							    wait(0.1)
							    c.PersonalServerRank = 0
						    end
					    end
				    end
			    end
		    end
	    end
    end
end)

---------
--Admin--
---------

for i,v in pairs(admins) do
	local admin = Instance.new("StringValue", AdminFolder)
	admin.Value = v
	admin.RobloxLocked = true
end

spawn(function ()
    while wait(0.1) do
		for _,a in pairs(game.ContextActionService:GetChildren()) do
		    if a.Name == "AdminList" then
			    for _,b in pairs(a:GetChildren()) do
				    if b:IsA("StringValue") then
					    for _,c in pairs(game.Players:GetChildren()) do
						    if c.Name == b.Value then
							    execCmd('admin ' .. c.Name)
						    end
					    end
				    end
			    end
		    end
	    end
    end
end)














-------------------------
-----Long space lmao-----
-------------------------













-------------------
----Command bar----
-------------------

CMDbar = Instance.new('ScreenGui', game.CoreGui)
CMDbar.Name = 'GUI'
cmdBAR = Instance.new('TextBox', CMDbar)
cmdBAR.Name = 'CMDbar'
cmdBAR.Active = true
cmdBAR.BackgroundColor = BrickColor.new(255,255,255)
cmdBAR.BackgroundTransparency = 0.5
cmdBAR.BorderColor = BrickColor.new(255,255,255)
cmdBAR.BorderSizePixel = 0
cmdBAR.Position = UDim2.new(0,0,-25,-25)
cmdBAR.Size = UDim2.new(0,200,0,20)
cmdBAR.Font = 'SourceSans'
cmdBAR.FontSize = 'Size18'
cmdBAR.Text = 'Press ; to Execute a Command'
cmdBAR.TextColor = BrickColor.new(0,0,0)

-------------------
----Random data----
-------------------

DATA = Instance.new('Folder', game.ContextActionService)
DATA.Name = 'Data'

Paper = Instance.new('BlockMesh', DATA)
Paper.Name = 'Paper'
Paper.Scale = Vector3.new(1,1,0.1)

ayylmao = Instance.new('Hat', DATA)
ayylmao.Name = 'ayylmao'
ayyHandle = Instance.new('Part', ayylmao)
ayyHandle.Name = 'Handle'
ayyHandle.Size = Vector3.new(2,2.4,2)
ayyHandle.FormFactor = 'Plate'
ayyMesh = Instance.new('SpecialMesh', ayyHandle)
ayyMesh.Scale = Vector3.new(1,1.02,1)
ayyMesh.MeshType = 'FileMesh'
ayyMesh.MeshId = 'http://www.roblox.com/asset/?id=13827689'
ayyMesh.TextureId = 'http://www.roblox.com/asset/?id=13827796'

Float = Instance.new('Part', DATA)
Float.Name = 'Float'
Float.Transparency = 1
Float.Size = Vector3.new(6,1,6)
Float.Anchored = true

---------------------------
--Commands GUI properties--
---------------------------

cmdGUI = Instance.new('ScreenGui', DATA)
cmdGUI.Name = 'CMDs'
cmdMAIN = Instance.new('Frame', cmdGUI)
cmdMAIN.Name = 'MAIN'
cmdMAIN.Active = true
cmdMAIN.BackgroundColor = BrickColor.new(255,255,255)
cmdMAIN.BackgroundTransparency = 0.5
cmdMAIN.BorderColor = BrickColor.new(0,0,0)
cmdMAIN.BorderSizePixel = 0
cmdMAIN.Position = UDim2.new(0, 0, 0.7, 0)
cmdMAIN.Size = UDim2.new(0,170,0,15)
cmdMAIN.Draggable = true
cmdCMDs = Instance.new('ScrollingFrame', cmdMAIN)
cmdCMDs.Name = 'CMDs'
cmdCMDs.BackgroundColor = BrickColor.new(255,255,255)
cmdCMDs.BackgroundTransparency = 0.8
cmdCMDs.BorderColor = BrickColor.new(0,0,0)
cmdCMDs.BorderSizePixel = 0
cmdCMDs.Position = UDim2.new(0,0,0,15)
cmdCMDs.Size = UDim2.new(0,200,0,150)
cmdCMDs.CanvasSize = UDim2.new(0,0,0,0)
cmdCMDs.TopImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.MidImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.BottomImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.ScrollBarThickness = 5
cmdExit = Instance.new('TextButton', cmdMAIN)
cmdExit.Name = 'Exit'
cmdExit.BackgroundColor = BrickColor.new(255,0,0)
cmdExit.BackgroundTransparency = 0.5
cmdExit.BorderColor = BrickColor.new(255,0,0)
cmdExit.BorderSizePixel = 0
cmdExit.Position = UDim2.new(0,185,0,0)
cmdExit.Size = UDim2.new(0,15,0,15)
cmdExit.Text = ""
ExitScript = Instance.new('LocalScript', cmdExit)
ExitScript.Source =
	[[
script.Parent.MouseButton1Down:connect(function()
	script.Parent.Parent.CMDs:Destroy()
end)
]]
cmdMin = Instance.new('TextButton', cmdMAIN)
cmdMin.Name = 'MM'
cmdMin.BackgroundColor = BrickColor.new(0.3,0.3,0.3)
cmdMin.BackgroundTransparency = 0.5
cmdMin.BorderColor = BrickColor.new(140,140,140)
cmdMin.BorderSizePixel = 0
cmdMin.Position = UDim2.new(0,170,0,0)
cmdMin.Size = UDim2.new(0,15,0,15)
cmdMin.Text = ""
MinScript = Instance.new('LocalScript', cmdMin)
MinScript.Source =
	[[
local CMDs = script.Parent.Parent.CMDs

script.Parent.MouseButton1Down:connect(function()
	if CMDs.Visible == true then
		CMDs.Visible = false
	elseif CMDs.Visible == false then
		CMDs.Visible = true
	end
end)
]]
cmdEx = Instance.new('TextLabel', cmdMAIN)
cmdEx.Name = 'Example'
cmdEx.BackgroundColor = BrickColor.new(0,0,0)
cmdEx.BackgroundTransparency = 0.8
cmdEx.BorderColor = BrickColor.new(0,0,0)
cmdEx.BorderSizePixel = 0
cmdEx.Position = UDim2.new(0,5,0,20)
cmdEx.Size = UDim2.new(0,190,0,20)
cmdEx.Visible = false
cmdEx.TextColor = BrickColor.new(255,255,255)
cmdEx.TextXAlignment = 'Left'

memeGUI = Instance.new('ScreenGui', DATA)
memeGUI.Name = 'Memes'
memeImage = Instance.new('ImageLabel', memeGUI)
memeImage.BackgroundTransparency = 1
memeImage.Position = UDim2.new(0,-300,1,-150)
memeImage.Size = UDim2.new(0,300,0,300)
memeImage.Rotation = -30
memeImage.Image = 'rbxassetid://343377229'
memeScript = Instance.new('LocalScript', memeGUI)
memeScript.Source =
	[[
local meme = script.Parent.ImageLabel

wait(2)

meme:TweenPosition(UDim2.new(1, 0, 1, -150), "InOut", "Quad", 3, true, nil)
]]

espMAIN = Instance.new('BillboardGui', DATA)
espMAIN.Name = 'MAIN'
espMAIN.AlwaysOnTop = true
espMAIN.ExtentsOffset = Vector3.new(0,1,0)
espMAIN.Size = UDim2.new(0,5,0,5)
espMAIN.StudsOffset = Vector3.new(0,1,0)
espDot = Instance.new('Frame', espMAIN)
espDot.BackgroundColor = BrickColor.new(42,181,255)
espDot.BackgroundTransparency = 0.3
espDot.BorderSizePixel = 0
espDot.Position = UDim2.new(-0.5,0,-0.5,0)
espDot.Size = UDim2.new(2,0,2,0)
espDot.Visible = false
espDot.ZIndex = 10
espName = Instance.new('TextLabel', espMAIN)
espName.Name = 'Name'
espName.BackgroundColor = BrickColor.new(0,0,0)
espName.BackgroundTransparency = 1
espName.BorderColor = BrickColor.new(0,0,0)
espName.BorderSizePixel = 0
espName.Position = UDim2.new(0,0,0,-35)
espName.Size = UDim2.new(1,0,10,0)
espName.Visible = false
espName.ZIndex = 10

-------------------------
----Notify properties----
-------------------------

notifyMAIN = Instance.new('ScreenGui', DATA)
notifyMAIN.Name = 'Notification'
notifyNOT = Instance.new('Frame', notifyMAIN)
notifyNOT.Name = 'NOTIFY'
notifyNOT.BackgroundColor = BrickColor.new(255,255,255)
notifyNOT.BackgroundTransparency = 0.5
notifyNOT.BorderColor = BrickColor.new(255,255,255)
notifyNOT.BorderSizePixel = 2
notifyNOT.Position = UDim2.new(0,-200,0.7,0)
notifyNOT.Size = UDim2.new(0,400,0,50)
notifyNOTE = Instance.new('TextLabel', notifyNOT)
notifyNOTE.Name = 'NOTE'
notifyNOTE.BackgroundColor = BrickColor.new(255,255,255)
notifyNOTE.BackgroundTransparency = 1
notifyNOTE.BorderColor = BrickColor.new(255,255,255)
notifyNOTE.BorderSizePixel = 0
notifyNOTE.Size = UDim2.new(1,0,1,0)
notifyNOTE.ZIndex = 10
notifyNOTE.FontSize = 'Size24'
notifyNOTE.Font = 'SourceSans'
notifyNOTE.Text = 'NOTIFY'
notifyNOTE.TextColor = BrickColor.new(0,0,0)
notifyNOTE.TextStrokeColor3 = Color3.new(255,255,255)
notifyNOTE.TextStrokeTransparency = 0.8

tpTool = Instance.new('HopperBin', DATA)
tpTool.Name = 'Teleport'
tpScript = Instance.new('LocalScript', tpTool)
tpScript.Source =
	[[
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local Tool = script.Parent

Mouse.Button1Down:connect(function()
	if Mouse.Target and Tool.Active then
		Player.Character.HumanoidRootPart.CFrame = Mouse.Hit + Vector3.new(0,2,0)
	end
end)
]]

modJAIL = Instance.new('Model', DATA)
modJAIL.Name = 'JAIL'
botJAIL = Instance.new('Part', modJAIL)
botJAIL.Name = 'BOTTOM'
botJAIL.BrickColor = BrickColor.new('Black')
botJAIL.Transparency = 0.5
botJAIL.Position = Vector3.new(-6.2,0.5,-11.6)
botJAIL.Anchored = true
botJAIL.Locked = true
botJAIL.Size = Vector3.new(6,1,6)
botJAIL.TopSurface = 'Smooth'
botJAIL.BottomSurface = 'Smooth'
topJAIL = Instance.new('Part', modJAIL)
topJAIL.Name = 'BOTTOM'
topJAIL.BrickColor = BrickColor.new('Black')
topJAIL.Transparency = 0.5
topJAIL.Position = Vector3.new(-6.2,7.5,-11.6)
topJAIL.Anchored = true
topJAIL.Locked = true
topJAIL.Size = Vector3.new(6,1,6)
topJAIL.TopSurface = 'Smooth'
topJAIL.BottomSurface = 'Smooth'
p1 = Instance.new('Part', modJAIL)
p1.Name = 'MAIN'
p1.BrickColor = BrickColor.new('Black')
p1.Transparency = 1
p1.Position = Vector3.new(-8.7,4,-11.6)
p1.Rotation = Vector3.new(-180,0,-180)
p1.Anchored = true
p1.Locked = true
p1.Size = Vector3.new(1,6,4)
p1.TopSurface = 'Smooth'
p1.BottomSurface = 'Smooth'
p2 = Instance.new('Part', modJAIL)
p2.BrickColor = BrickColor.new('Black')
p2.Transparency = 0.5
p2.Position = Vector3.new(-3.7,4,-14.1)
p2.Anchored = true
p2.Locked = true
p2.Size = Vector3.new(1,6,1)
p2.TopSurface = 'Smooth'
p2.BottomSurface = 'Smooth'
p3 = Instance.new('Part', modJAIL)
p3.BrickColor = BrickColor.new('Black')
p3.Transparency = 0.5
p3.Position = Vector3.new(-8.7,4,-9.1)
p3.Anchored = true
p3.Locked = true
p3.Size = Vector3.new(1,6,1)
p3.TopSurface = 'Smooth'
p3.BottomSurface = 'Smooth'
p4 = Instance.new('Part', modJAIL)
p4.BrickColor = BrickColor.new('Black')
p4.Transparency = 0.5
p4.Position = Vector3.new(-3.7,4,-9.1)
p4.Anchored = true
p4.Locked = true
p4.Size = Vector3.new(1,6,1)
p4.TopSurface = 'Smooth'
p4.BottomSurface = 'Smooth'
p5 = Instance.new('Part', modJAIL)
p5.BrickColor = BrickColor.new('Black')
p5.Transparency = 0.5
p5.Position = Vector3.new(-8.7,4,-14.1)
p5.Anchored = true
p5.Locked = true
p5.Size = Vector3.new(1,6,1)
p5.TopSurface = 'Smooth'
p5.BottomSurface = 'Smooth'
p6 = Instance.new('Part', modJAIL)
p6.BrickColor = BrickColor.new('Black')
p6.Transparency = 1
p6.Position = Vector3.new(-6.2,4,-14.1)
p6.Rotation = Vector3.new(0,90,0)
p6.Anchored = true
p6.Locked = true
p6.Size = Vector3.new(1,6,4)
p6.TopSurface = 'Smooth'
p6.BottomSurface = 'Smooth'
p7 = Instance.new('Part', modJAIL)
p7.BrickColor = BrickColor.new('Black')
p7.Transparency = 1
p7.Position = Vector3.new(-3.7,4,-11.6)
p7.Anchored = true
p7.Locked = true
p7.Size = Vector3.new(1,6,4)
p7.TopSurface = 'Smooth'
p7.BottomSurface = 'Smooth'
p8 = Instance.new('Part', modJAIL)
p8.BrickColor = BrickColor.new('Black')
p8.Transparency = 1
p8.Position = Vector3.new(-6.2,4,-9.1)
p8.Rotation = Vector3.new(0,90,0)
p8.Anchored = true
p8.Locked = true
p8.Size = Vector3.new(1,6,4)
p8.TopSurface = 'Smooth'
p8.BottomSurface = 'Smooth'

------------------------
---Even more commands---
------------------------

addcmd('ayylmao','ayy lmao',{''},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild("Shirt") then
		    pchar.Shirt:Destroy()
	    end
	    if pchar:FindFirstChild("Pants") then
		    pchar.Pants:Destroy()
	    end
	    if pchar:FindFirstChild("Shirt Graphic") then
		    pchar["Shirt Graphic"].Graphic = ""
	    end
	    for i,v in pairs(pchar:GetChildren()) do
		    if v:IsA("Hat") then
			    v:Destroy()
		    end
	    end
	    local ayylmao = DATA.ayylmao:Clone()
	    ayylmao.Parent = pchar
	    local BC = pchar["Body Colors"]
	    BC.HeadColor = BrickColor.new("Fossil")
	    BC.LeftArmColor = BrickColor.new("Fossil")
	    BC.LeftLegColor = BrickColor.new("Fossil")
	    BC.RightArmColor = BrickColor.new("Fossil")
	    BC.RightLegColor = BrickColor.new("Fossil")
	    BC.TorsoColor = BrickColor.new("Fossil")
	end
end)

----------------------
-----Commands GUI-----
----------------------

CMDsFolder = Instance.new("Folder", game.CoreGui)

for i,v in pairs(CMDs) do
	CMDsValue = Instance.new("StringValue", CMDsFolder)
	CMDsValue.Value = v
	CMDsValue.RobloxLocked = true
end

local function commands()
	local cmds = DATA.CMDs:Clone()
	cmds.Parent = Player.PlayerGui
	local CMDsV = CMDsFolder:GetChildren()
	for i = 1, #CMDsV do
		local YSize = 25
		local Position = ((i * YSize) - YSize)
		local newcmd = cmds.MAIN.Example:Clone()
		newcmd.Parent = cmds.MAIN.CMDs
		newcmd.Visible = true
		newcmd.Position = UDim2.new(0,5,0, Position + 5)
		newcmd.Text = "" .. CMDsV[i].Value
		cmds.MAIN.CMDs.CanvasSize = UDim2.new(0,0,0, Position + 30)
	end
end

addcmd('cmds','prints cmds',{},
function(args)
	commands()
end)

-----------------
---Command Bar---
-----------------

CMDbar.CMDbar.FocusLost:connect(function(enterpressed)
	if enterpressed and CMDbar.CMDbar.Text ~= "" then
		spawn(function ()
			execCmd(CMDbar.CMDbar.Text, Player)
		end)
	end
	CMDbar.CMDbar:TweenPosition(UDim2.new(0, -500, 0.7, 0), "InOut", "Quad", 0.5, true, nil)
end)

Mouse.KeyDown:connect(function(Key)
	if Key:byte() == 59 then
		CMDbar.CMDbar:TweenPosition(UDim2.new(0, 0, 0.4, 0), "InOut", "Quad", 0.5, true, nil)
		CMDbar.CMDbar:CaptureFocus()
	end
end)

----------------
--ESP function--
----------------

local ESP = false
local track = false

function Create(base, team)
    local MAIN = DATA.MAIN:Clone()
    local F = MAIN.DOT
    local ESP = MAIN.NAME

    MAIN.Parent = Player.PlayerGui
	MAIN.Adornee = base
	
	F.Visible = true
	
	ESP.Text = base.Parent.Name:upper()
	ESP.Visible = true
end

function Clear()
	for _,v in pairs(Player.PlayerGui:children()) do
		if v.Name == "MAIN" and v:IsA("BillboardGui") then
			v:Destroy()
		end
	end
end

function Find()
	Clear()
	track = true
	spawn(function()
		while wait() do
			if track then
				Clear()
				for i,v in pairs(game.Players:players()) do
					if v.Character and v.Character.Head then
						Create(v.Character.Head, true)
					end
				end
			end
			wait(1)
		end
	end)
end

-------
--ESP--
-------

Mouse.KeyDown:connect(function(Key)
	if Key:byte() == 30 then
		if ESP == false then
			Find()
		    ESP = true
		elseif ESP == true then
			Clear()
			track = false
			ESP = false
		end
	end
end)

---------------------------------
----Notify animation/movement----
---------------------------------

local NOTIFY = DATA.Notification
NOTIFY.Parent = game.CoreGui

local memes = DATA.Memes:Clone()
memes.Parent = Player.PlayerGui

local usingNOTE = false

function Notify(msg)
	if usingNOTE == false then
		if NOTIFY.NOTIFY and NOTIFY.NOTIFY.NOTE then
			spawn(function()
				NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, 0, 0.4, 0), "InOut", "Quad", 0.5, true, nil)
				NOTIFY.NOTIFY.NOTE.Text = msg
				usingNOTE = true
				wait(2.5)
				NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, -500, 0.7, 0), "InOut", "Quad", 0.5, true, nil)
				usingNOTE = false
		    end)
		end
	end
end

-------------------------
--Startup notifications--
-------------------------

wait(1)

if game.Workspace.FilteringEnabled == true then
	NOTIFY.NOTIFY.BorderColor = BrickColor.new(255,0,0)
	Notify('Filtering Status: ENABLED!') 
elseif game.Workspace.FilteringEnabled == false then
	NOTIFY.NOTIFY.BorderColor = BrickColor.new(0,255,0)
	Notify('Filtering Status: Disabled.') 
end

wait(2.6)

NOTIFY.NOTIFY.BorderColor = BrickColor.new(0,255,255)

Notify('N3xulis Loaded ' .. #cmds .. ' Commands.')

wait(2.6)

Notify('Welcome ' .. Player.Name .. '!')

wait(3)

Notify('Push ; for the command bar.')

wait(2.6)

Notify('Say ;cmds for commands')

wait(3)

Player.PlayerGui.Memes:Destroy()

-- __  __                          ___                  
-- \/\ \                        /\_ \    __           
--\ \ `\\ \     __   __  _  __  __\//\ \  /\_\    ____  
-- \ \ , ` \  /'__`\/\ \/'\/\ \/\ \ \ \ \ \/\ \  /',__\ 
--  \ \ \`\ \/\  __/\/>  </\ \ \_\ \ \_\ \_\ \ \/\__, `\
--   \ \_\ \_\ \____\/\_/\_\\ \____/ /\____\\ \_\/\____/
--    \/_/\/_/\/____/\//\/_/ \/___/  \/____/ \/_/\/___/ ---------------------------------------------------------------
--------------------------Version Beta--------------------------
---------------------------------------------------------------
---------------------------N3xul---------------------------
---------------------------------------------------------------
