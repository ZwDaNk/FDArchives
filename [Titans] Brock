id="..v
end
end

LastMade=nil
iNew=function(tab)
local v=Instance.new(tab[1])
for Ind,Val in pairs(tab) do
if Ind~=1 and Ind~=2 then 
v[Ind] = Val
end
end
v.Parent=tab[2]==0 and LastMade or tab[2]
LastMade=v
return v
end
iPart=function(tab)
local v=Instance.new(tab.type or 'Part')
if tab.type~='CornerWedgePart' then v.formFactor='Custom' end
v.TopSurface=0 v.BottomSurface=0
if tab.sc then
v.Size=v3(tab[2]*tab.sc,tab[3]*tab.sc,tab[4]*tab.sc)
else
v.Size=v3(tab[2],tab[3],tab[4])
end
if tab.co then v.BrickColor=bn(tab.co) end
if tab.tr then v.Transparency=tab.tr end
if tab.rf then v.Reflectance=tab.rf end
if tab.can then v.CanCollide=tab.can end
if tab.cf then v.CFrame=tab.cf end
if tab.an then v.Anchored=tab.an end
se 
ton = math.abs(i1 - i2) *perc 
end 
return i1+ton
end
function TweenV3(i,loops,v1,v2,smooth)
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local tox2,toy2,toz2 = 0,0,0 
if v1.x > v2.x then 
tox2 = -math.abs(v1.x - v2.x) *perc 
else 
tox2 = math.abs(v1.x - v2.x) *perc 
end 
if v1.y > v2.y then 
toy2 = -math.abs(v1.y - v2.y) *perc 
else 
toy2 = math.abs(v1.y - v2.y) *perc 
end 
if v1.z > v2.z then 
toz2 = -math.abs(v1.z - v2.z) *perc 
else 
toz2 = math.abs(v1.z - v2.z) *perc 
end
return v3(v1.x + tox2,v1.y + toy2,v1.z + toz2)
end
pos.z > nextpos.z then 
toz2 = -math.abs(origpos.z - nextpos.z) *perc 
else toz2 = math.abs(origpos.z - nextpos.z) *perc end
return cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function SetWeld(weld,CO,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
loops=math.floor(loops)
smooth = smooth or 1 
if not WeldLib[weld] then 
local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
end 
local perc =smooth==1 and math.sin((math.pi/2)/loops*i) or i/loops 
--print(weld.Part1)
local tox,toy,toz = 0,0,0 
tox = origangle.x > nextangle.x and -math.abs(origangle.x - nextangle.x) *perc or math.abs(origangle.x - nextangle.x) *perc 
toy = origangle.y > nextangle.y and -math.abs(origangle.y - nextangle.y) *perc or math.abs(origangle.y - nextangle.y) *perc 
toz = origangle.z > nextangle.z and -mathSphere' then 
mesh.MeshType=type
else
mesh.MeshId=type
end
local x1,y1,z1 = cf1:toEulerAnglesXYZ()
local x2,y2,z2 = cf2:toEulerAnglesXYZ()
local count=0
DoLoop(times,function(i) count=count+1 
mesh.Scale=TweenV3(count,times,scale1,scale2,1)*((type=='Brick' or type=='Sphere') and 5 or 1)
v.Transparency=TweenNum(count,times,tr1,tr2,1) 
v.CFrame=TweenCF(count,times,cf1.p,v3(mdeg(x1),mdeg(y1),mdeg(z1)),cf2.p,v3(mdeg(x2),mdeg(y2),mdeg(z2)),1) 
if i==1 then v:Remove() end end)
end
Dmgv={8,16}
HitDebounce={}
Damage=function(Hum,Mult,Sound) 
if not Hum or Hum.Parent==Char then return end 
if not Hum.Parent:findFirstChild'Torso' then return end 
local HName=Hum.Parent.Name
if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
HitDebounce[HName]=tick()+0.2
local Mult=Mult or 1
local Dealt=mran(Dmgv[1],Dmgv[2])*Mult
local col=''
if Hum.Parent:findFirstChild'Block' and Hum.Parent.Block.Value>0 then 
Hum.Parent.Block.Value=Hum.Parent.Block.Value-1
ame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707) 
end 
end
function FaceBG(pos)
BG.maxTorque=v3(1,1,1)/0
BG.cframe=cn(Torso.Position,v3(pos.x,Torso.Position.y,pos.z))*cn(0,0,-1)
end
ray = function(Pos, Dir,tab,length) -- ray cast
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *(length or 999)),tab) 
end 
function Projectile(ofs,speed,part,adj,fhit,fnohit)
part.CFrame=ofs*adj
local stop=false
DoLoop(50,function(x) 
local i=x
if not stop then 
local hit,pos=ray(ofs.p,ofs.p-ofs*cn(0,0,-1).p,Char,speed+1)
if hit then 
--Hit
if fhit then i=1 stop=true
----
local cof=FindSurface(hit,pos)
--iPart{workspace,2,2,0.2,cf=cn(pos,pos+cof),an=true,co='Black'}
----
local x,y,z=ofs:toEulerAnglesXYZ()
ofs=cn(pos)*ca(mdeg(x),mdeg(y),mdeg(z))*cn(0,0,-part.Size.y/2)
part.CFrame=ofs*adj
fhit(hit,pos) end 
else
ofs=ofs*cn(0,0,speed)
part.CFrame=ofs*adj
end
if i==1 2,y2,z2=Char[v.Name].CFrame:toEulerAnglesXYZ()
Reconstruct[#Reconstruct+1]={v,Char[v.Name],v.Position,v3(mdeg(x1),mdeg(y1),mdeg(z1)),v3(mdeg(x2),mdeg(y2),mdeg(z2))} end
local tweens=100
for tween=1,tweens do 
for i,v in pairs(Reconstruct) do v[1].CFrame=TweenCF(tween,tweens,v[3],v[4],v[2].Position,v[5],1)*ca(360*(tween/tweens),720*(tween/tweens),0) end
wait()
end
oldChar:Remove()
fMarble(Char,function(v) v.Transparency=0 end)
for i,v in pairs(RootLimbs) do v.Transparency=0 end
Torso.Anchored=false wait()
BG.maxTorque=v3(1,1,1)/0 BG.cframe=Torso.CFrame
ReturnAnim()
wait(2)
BG.maxTorque=nov3
Anim,ArmAnim,LegAnim='None','None','None'
end
------

function MakeAI(SpawnPoint2)
Char=iNew{'Model',workspace,Name=name,archivable=false} _G.OldMod00=Char
Torso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='Torso'} 
pTorso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='pTorso'} 
Head=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='Head'} 
pHead=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='pHead'} iNew{'SpecialMesh',pHead,Scale=v3(1,~='Torso' then v.CFrame=Torso.CFrame end end

Head.Transparency=0.99
Head.CanCollide=false
Neck=iNew{'Weld',Torso,Part0=Torso,Part1=Head,C0=cn(0,0,0)}
pNeck=iNew{'Weld',Torso,Part0=pTorso,Part1=pHead,C0=cn(0,1.5*Scale,0)}
Hum=iNew{'Humanoid',Char} 


Torso.Transparency=1
wTorso=iNew{'Weld',Torso,Part0=Torso,Part1=pTorso,C0=cn(0,-2.5*Scale,0)*ca(0,0,0)}
oTorso=cn(0,0,0)

Stand.Transparency=1
wStand=iNew{'Weld',Torso,Part0=Torso,Part1=Stand,C0=cn(0,-2.5*Scale,0)}

wLSho=iNew{'Weld',LSho,Part0=pTorso,Part1=LSho,C0=cn(-1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wLArm=iNew{'Weld',LArm,Part0=LSho,Part1=LArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wRSho=iNew{'Weld',RSho,Part0=pTorso,Part1=RSho,C0=cn(1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wRArm=iNew{'Weld',RArm,Part0=RSho,Part1=RArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wLThi=iNew{'Weld',LThi,Part0=pTorso,Part1=LThi,C0=cn(-0.5*Scale,-1*Scale,0),C1=cn(0,0.75*Scale,0)}
wLLeg=iNew{'Weld',LLeg,Part0=LThi,Part1=LLeg,C0=cn(1,-0.75*) 
SetWeld(wLLeg,0,1,1,k,l,v3(0,-0.75*Scale,0),v3(-15,0,5),1)
SetWeld(wRThi,0,1,1,m,n,v3(0.5*Scale,-1*Scale,0),v3(15,0,5),1) 
SetWeld(wRLeg,0,1,1,o,p,v3(0,-0.75*Scale,0),v3(-15,0,-5),1)
Oa,Ob,Oc,Od,Oe,Of,Og,Oh,Oi,Oj,Ok,Ol,Om,On,Oo,Op=GetPose() 
SetWeld(wLSho,0,1,1,nov3,nov3,a,b,1) 
SetWeld(wLArm,0,1,1,nov3,nov3,c,d,1)
SetWeld(wRSho,0,1,1,nov3,nov3,e,f,1)
SetWeld(wRArm,0,1,1,nov3,nov3,g,h,1) 
SetWeld(wLThi,0,1,1,nov3,nov3,i,j,1) 
SetWeld(wLLeg,0,1,1,nov3,nov3,k,l,1)
SetWeld(wRThi,0,1,1,nov3,nov3,m,n,1) 
SetWeld(wRLeg,0,1,1,nov3,nov3,o,p,1)
end

function GetPose() 
local a,b=GetWeld(wLSho,0) 
local c,d=GetWeld(wLArm,0)
local e,f=GetWeld(wRSho,0)
local g,h=GetWeld(wRArm,0) 
local i,j=GetWeld(wLThi,0)
local k,l=GetWeld(wLLeg,0)
local m,n=GetWeld(wRThi,0)
local o,p=GetWeld(wRLeg,0)
local q,r=GetWeld(wTorso,0)
return a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r
end

MakeAI(SpawnPoint)

ASpeed=28
coroutine.resume(coroutine.create=cff or Torso.CFrame
BP.maxForce=BG.maxTorque BP.position=Torso.Position
end
function fMarble(Ch,func)
for i,v in pairs(Ch:children()) do 
for x=-1,1,2 do 
for y=-1,1,2 do 
for z=-1,1,2 do 
if v:findFirstChild(x..y..z) then func(v[x..y..z]) end
end end end 
end
end
function ReturnAnim()
local ne1,ne2=GetWeld(pNeck,0)
local wt1,wt2=GetWeld(wTorso,0)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,Oa,Ob,1) 
SetWeld(wLArm,0,x,ASpeed,c,d,Oc,Od,1)
SetWeld(wRSho,0,x,ASpeed,e,f,Oe,Of,1) 
SetWeld(wRArm,0,x,ASpeed,g,h,Og,Oh,1) 
SetWeld(wLThi,0,x,ASpeed,i,j,Oi,Oj,1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,Ok,Ol,1) 
SetWeld(wRThi,0,x,ASpeed,m,n,Om,On,1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,Oo,Op,1) 
SetWeld(wTorso,0,x,ASpeed,wt1,wt2,oTorso,nov3,1) 
SetWeld(pNeck,0,x,ASpeed,ne1,ne2,v3(0,1.5,0)*Scale,nov3,1)
wait()
end
end

ChatConnection=Player.ChattedeBG(Tt.Position)
wait(0.1) 
local cff=cn(pTorso.CFrame.p,v3(Tt.Position.x,pTorso.Position.y,Tt.Position.z))
local ofs=cff:toObjectSpace(cn(cff*cn(1.5*Scale,0.5*Scale,0).p,Tt.CFrame*cn(0,2,0).p)*ca(90,0,0)*cn(0,-0.25*Scale,0))
local x,y,z=ofs:toEulerAnglesXYZ() 
local rot=v3(mdeg(x),mdeg(y),mdeg(z))
for q=1,ASpeed do 
SetWeld(wRArm,0,q,ASpeed,Og,Oh,Og,nov3,1)
SetWeld(wRSho,0,q,ASpeed,Oe,Of,ofs.p,rot,1)
SetWeld(wRSho,1,q,ASpeed,v3(0,0.25*Scale,0),nov3,nov3,nov3,1) 
wait()
end
for y=-1,1,2 do for x=-1,1,2 do for z=-1,1,2 do 
local new=RArm[x..y..z]:Clone() new.Parent=RArm game.Debris:AddItem(new,8) new.Touched:connect(function(hit) Damage(hit.Parent:findFirstChild'Humanoid') end)
new.CFrame=RArm[x..y..z].CFrame*cn(0,-Scale*1.5,0) new.CanCollide=true new.Velocity=cn(new.Position,Target.Torso.Position).lookVector*((new.Position-Target.Torso.Position).magnitude*20+900)
RArm[x..y..z].Transparency=1 so.Block:Play() wait(0.06)
end end end
RArm.Transparency=1
delay(1,function() 
for x=-1,1,2 do for y=Hum.Sit=true end)
MeshEffect(35,Torso.CFrame*cn(0,-3.5*Scale,-6*Scale)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(12,12,5)*Scale,0.2,1,'Light stone grey',as.ring)
wait(0.5)
for x=1,ASpeed do 
SetWeld(wTorso,0,x,ASpeed,v3(0,-3*Scale+2.5,-6*Scale),v3(-90,0,0),nov3,nov3,1) 
SetWeld(wLSho,0,x,ASpeed,Oa,v3(180,0,0),Oa,Ob,1) 
SetWeld(wRSho,0,x,ASpeed,Oe,v3(180,0,0),Oe,Of,1) 
wait()
end
Stay(false)
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='boulder' and Anim=='None' then 
Target=p1.Character
Anim,LegAnim,ArmAnim='','',''
Stay(true)
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(135,0,0),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(135,0,0),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.5,0.25)*Scale,v3(45,0,-15),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3( 0.5,-0.5,0.25)*Scale,v3(45,0,15),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(0,0,0),1None','None','None'
elseif cmd=='grab' and Tt and not Grabbing then 
Target=p1
local lTt=Tt
Anim='Follow'
repeat Hum:MoveTo(Tt.Position+v3(0.5,0.5,0.5),Tt) wait(0.2) until lTt~=Tt or (Tt.Position-Stand.CFrame*cn(0,-Stand.Size.y/2+1,-2.8*Scale).p).magnitude<10 or Anim~='Follow'
if Anim~='Follow' then BG.maxTorque=nov3 return end 
if lTt~=Tt then return end 
pcall(function() Tt.Parent.Humanoid.PlatformStand=true end)
Hum:MoveTo(Torso.Position,Torso) 
Anim,LegAnim,ArmAnim='Grab','',''
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(-30,0,-30),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(145,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.4,0.3)*Scale,v3(70,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(-20,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3(0.5,-0.5,-0.3)*Scale,v3(135,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(-90m,0,x,ASpeed,c,d,c,v3(-10,0,0),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.2,0.5,-0.25)*Scale,v3(105,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(-10,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,i,v3(45,0,-20),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(-45,0,20),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,m,v3(0,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(0,0,0),1) 
wait()
end
until Anim~='Dance'
elseif cmd=='roll' and (Anim=='None' or Anim=='Follow') then 
Target=p1
local lTt=Tt
Anim,ArmAnim,LegAnim='Roll','',''
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
local n1,n2=GetWeld(pNeck,0)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.5,0.5,0)*Scale,v3(0,0,-45),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(0,0,90),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.5,0.5,0)*Scale,v3(0,0,45),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(0,0,-90),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,v3(0,1, 0.5)*Scale,v3(-30,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(60,0,0),1) 
ition,Torso) 
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='beam' and (Anim=='None' or Anim=='Follow') then 
Anim='beam'
local che =iPart{Char,1,1,1,sc=Scale,co=CC[1],ma=Mat} local chew=iNew{'Weld',che ,Part0=pTorso,Part1=che}
local che2=iPart{che ,0.8*Scale,0.2,0.8*Scale,co='Really black'} local che2w=iNew{'Weld',che2,Part0=che,Part1=che2}
local chem=iNew{'CylinderMesh',che} iNew{'CylinderMesh',che2}
local chest,chex,i={},0,0
for x=-1,1,2 do for y=-1,1,2 do i=i+1 chest[i]={pTorso[x..y..'-1']} chest[i][2]=chest[i][1].Weld chest[i][3]=chest[i][2].C0
local xx,yy,zz=chest[i][2].C0:toEulerAnglesXYZ() chest[i][4]=v3(mdeg(xx),mdeg(yy),mdeg(zz))
chest[i][5]=cn(0.45*x*Scale,0,-0.5*Scale)*chest[i][3] chest[i][6]=chest[i][4]+v3(0,-105*x,0) end end
local len=1.75
local dochest=function(v,chexx,adj)
local p=v/ASpeed
chex=adj*p
chem.Scale=v3(1,len*p,1) 
chew.C0=ca(chexx+chex,0,0)*cn(0,len/2*p*Scale,0)
WWWWWWWW
elseif cmd=='box' and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='cart','cart'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(90,0,10),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,25),1) 
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(90,0,-10),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-25),1) 
wait()
end
Stay(true)
local spawn=RArm.CFrame*cn(0,-0.75*Scale-2,0)*ca(-90,0,0)
local des=iPart{Char,1,1,1,an=true,ma=Mat,cf=spawn,ca=false}
for i=1,6,0.2 do des.Size=v3(i,i,i) des.CFrame=spawn*cn(0,0,-i/2) wait() end
local cart=iNew{'Model',workspace,Name='Cart'}
local base=iPart{cart,4,1,5,ma=Mat,cf=des.CFrame} iNew{'BodyGyro',base}
for x=-1,1,2 do 
local new=iPart{cart,0.5,4,5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=base,Part1=new,C0=cn(1.75*x,2.5,0)}
local new=iPart{cart,3.5,4,0.5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=','None'
elseif cmd=='eat' and Grabbing and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='Eat','Eat'
for x=1,ASpeed*2 do 
SetWeld(wRSho,0,x,ASpeed*2,Oe,Of,Oe,v3(135,0,15),1) 
SetWeld(wRArm,0,x,ASpeed*2,Og,Oh,Og,v3(45,-10,-100),1) 
wait()
end
wait(1)
for x=1,40 do 
SetWeld(wRSho,0,1,1,Oe,Of,Oe,v3(135+mran(-3,3),0,15+mran(-3,3)),1) 
SetWeld(wRArm,0,1,1,Og,Oh,Og,v3(45,-10+mran(-12,12),-100+mran(-3,3)),1) 
wait(0.05)
if x%2==0 then 
local cf=Grabbing.Part1.CFrame*ca(180,mran(-180,180),mran(-40,40))*cn(0,1.5,0)
MeshEffect(24,cf,cf*cn(0,10,0),v3(0.2,2,0.2),v3(0.4,5,0.4),0.1,1,'Really red','Sphere') 
end
end
Grabbing.Part1:BreakJoints()
pcall(function() Grabbing.Part1.Parent.Head:Remove() end)
Grabbing:Remove() Grabbing=nil
wait(2)
ReturnAnim()
Anim,ArmAnim='None','None'
elseifocal pt=Player.Character.Torso.CFrame
MeshEffect(35,pt*cn(0,5,0)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(7,7,3)*Scale,0.2,1,'Light stone grey',as.ring)
else
end
end))
end)
keys={}
NewAnim={}
Player:GetMouse().KeyDown:connect(function(k)
coroutine.resume(coroutine.create(function() keys[k]=true 
if (k=='q' or k=='e') and (Anim=='None' or Anim=='Laser') and (ArmAnim=='None' or ArmAnim=='Laser') and not NewAnim[k] then
NewAnim[k]=true 
local w1,w2=k=='q' and wLSho or wRSho,k=='q' and wLArm or wRArm
local x=k=='q' and -1 or 1
local aa,bb=GetWeld(w1,0)
local cc,dd=GetWeld(w2,0)
local targ=w1.Part1.CFrame*cn(0,-333,0)
local tips={}
local co=0
local sho1=iPart{Char,0.35,RArm.Sizeyer:GetMouse().Button1Down:connect(function()
Button=true
if keys.f and Player:GetMouse().Target and Anim=='None' then 
Hum:MoveTo(Player:GetMouse().Hit.p,Player:GetMouse().Target)
elseif (keys.q or keys.e) and LaserOn then
local pick=keys.q and 'q' or 'e'
repeat
local ofs=(pick=='q' and LArm or RArm).CFrame*ca(90,0,0)
if pick=='q' and keys.e then pick='e' 
elseif pick=='e' and keys.q then pick='q' end 
local part=iPart{Char,0.2,0.5,0.2,sc=Scale,co=CC[mran(2,3)],an=true,ma=Mat} iNew{'CylinderMesh',part}
Projectile(ofs,2*Scale,part,ca(-90,0,0),function(hit,pos) 
AOEFind(pos,Scale*2,function(Hum,v) Damage(Hum) end)
end,
function(pos) 
for i=1,5 do local cf=cn(pos)*ca(0,mran(-180,180),mran(-95,95)) MeshEffect(8,cf,cf*cn(0,Scale*2.2,0),v3(0.07,0.3,0.07)*Scale,v3(0.4,3,0.4)*Scale,0.2,1,CC[mran(2,3)],as.cone) end
MeshEffect(8,cn(pos),nil,v3(0.1,0.1,0.1)*Scale,v3(3,3,3)*Scale,0.2,1,CC[Anim,WalkMax,Oo,Op,Oo,v3(-15+(WalkAnim<0 and WalkAdj or 0),0,-5),1) 
end

if Anim=='Follow' and Target and Target:findFirstChild'Torso' and not BG.maxTorque~=v3(1,1,1)/0 then 
Hum:MoveTo(Target.Torso.CFrame*cn(2.5*Scale,0,5*Scale).p,Target.Torso)
end
if Grabbing and (not Grabbing.Part1 or not Grabbing.Part1.Parent or Grabbing.Part1.Parent:findFirstChild'Humanoid'==nil or Grabbing.Part1.Parent.Humanoid.Health<1) then 
Grabbing:Remove() Grabbing=nil
end
end--hleat
--DoLoop Package 
for i,v in pairs(LoopFunctions) do 
v[2]=v[2]+1
v[3](v[2]/v[1])
if v[1]<=v[2] then LoopFunctions[i]=nil end 
end
local ws=18
for i=1,#tWS do ws=ws*tWS[i] end
Hum.WalkSpeed=ws
if Hum.MaxHealth~=8000 then Hum.MaxHealth=8000 Hum.Health=8000 end 
Hum.Health=Hum.Health+0.1
wait(0.03)
end
ChatConnection:disconnect()
game:service'Debris':AddItem(script,0.5)
script.Disabled=true
