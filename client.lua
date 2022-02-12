-- Created by Taco
-- Created by Taco
runnet = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Ped = GetPlayerPed(-1)
        if runnet == true then
                if GetDistanceBetweenCoords(GetEntityCoords(Ped),-1913.4637451172,-574.24969482422,11.43514919281,true) <= 1 then
                    DrawText3D(-1913.4637451172,-574.24969482422,11.43514919281,"~w~Tryk [~g~E~w~] for at banke på døren")
                    if IsControlJustPressed(1, 38) then
                        RequestAnimDict("timetable@jimmy@doorknock@")
            while not HasAnimDictLoaded('timetable@jimmy@doorknock@') do
                Citizen.Wait(500)
            end
 
            TaskPlayAnim(PlayerPedId(),"timetable@jimmy@doorknock@","knockdoor_idle",3.0,0.5,-1,31,1.0,0,0)
            exports['progressBars']:startUI(5000, "Banker på....")
            Citizen.Wait(5000)
            ClearPedTasksImmediately(GetPlayerPed(-1))
            SetEntityCoords(GetPlayerPed(-1), -1902.3444824219,-572.51910400391,19.097230911255)
                        TriggerServerEvent("bankerpodor")
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)
            local Ped = GetPlayerPed(-1)
            if runnet == true then
                    if GetDistanceBetweenCoords(GetEntityCoords(Ped),-1902.0787353516,-572.36547851563,19.097217559814,true) <= 1 then
                        DrawText3D(-1902.0787353516,-572.36547851563,19.097217559814,"~w~Tryk [~g~E~w~] for at forlad stedet")
                        if IsControlJustPressed(1, 38) then
                            RequestAnimDict("timetable@jimmy@doorknock@")
                while not HasAnimDictLoaded('timetable@jimmy@doorknock@') do
                    Citizen.Wait(500)
                end
     
                TaskPlayAnim(PlayerPedId(),"timetable@jimmy@doorknock@","knockdoor_idle",3.0,0.5,-1,31,1.0,0,0)
                exports['progressBars']:startUI(3000, "forlader......")
                Citizen.Wait(3000)
                ClearPedTasksImmediately(GetPlayerPed(-1))
                SetEntityCoords(GetPlayerPed(-1), -1913.4637451172,-574.24969482422,11.43514919281)
                            TriggerServerEvent("tacoerbaresej")
                        end
                    end
                end
            end
        end)

        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(1)
                local Ped = GetPlayerPed(-1)
                if runnet == true then
                        if GetDistanceBetweenCoords(GetEntityCoords(Ped),-1904.7473144531,-570.90942382813,19.097219467163,true) <= 1 then
                            DrawText3D(-1904.7473144531,-570.90942382813,19.097219467163,"~w~Tryk [~g~E~w~] for at tage lyd dæmper på")
                            if IsControlJustPressed(1, 38) then
                                RequestAnimDict("mini@repair")
                    while not HasAnimDictLoaded('mini@repair') do
                        Citizen.Wait(500)
                    end
         
                    TaskPlayAnim(PlayerPedId(),"mini@repair","fixing_a_ped",3.0,0.5,-1,31,1.0,0,0)
                    exports['progressBars']:startUI(10000, "tager lyd dæmper på..")
                    Citizen.Wait(10000)
                    ClearPedTasksImmediately(GetPlayerPed(-1))
                    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))
                            TriggerServerEvent("supsenderpo")
                            end
                        end
                    end
                end
            end)

            Citizen.CreateThread(function()
                while true do
                    Citizen.Wait(1)
                    local Ped = GetPlayerPed(-1)
                    if runnet == true then
                            if GetDistanceBetweenCoords(GetEntityCoords(Ped),-1911.1778564453,-573.5966796875,19.097219467163,true) <= 1 then
                                DrawText3D(-1911.1778564453,-573.5966796875,19.097219467163,"~w~Tryk [~g~E~w~] for at købe en pistol (2 Mil)")
                                if IsControlJustPressed(1, 38) then
                                    RequestAnimDict("mp_ped_interaction")
                        while not HasAnimDictLoaded('mp_ped_interaction') do
                            Citizen.Wait(500)
                        end
             
                        TaskPlayAnim(PlayerPedId(),"mp_ped_interaction","handshake_guy_a",3.0,0.5,-1,31,1.0,0,0)
                        TaskPlayAnim(ped,"mp_ped_interaction","handshake_guy_a", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
                        exports['progressBars']:startUI(5000, "Køber pistol....")
                        Citizen.Wait(5000)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        ClearPedTasksImmediately(ped)
                        TaskPlayAnim(ped,"amb@world_human_bum_standing@twitchy@idle_a","idle_c", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
                                    TriggerServerEvent("buyingnow")
                                end
                            end
                        end
                    end
                end)

            local npc = {
                {-1911.6173095703,-573.21362304688,18.097213745117,"ig_dreyfuss",216.15406799316,0xDA890932,"ig_dreyfuss"},
              }

              Citizen.CreateThread(function()
    
                for k,v in pairs(npc) do
                  RequestModel(GetHashKey(v[7]))
                  while not HasModelLoaded(GetHashKey(v[7])) do
                    Wait(1)
                  end
              
                  RequestAnimDict("amb@world_human_bum_standing@twitchy@idle_a")
                  while not HasAnimDictLoaded("amb@world_human_bum_standing@twitchy@idle_a") do
                    Wait(1)
                  end
                  ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
                  SetEntityHeading(ped, v[5])
                  FreezeEntityPosition(ped, true)
                  SetEntityInvincible(ped, true)
                  SetBlockingOfNonTemporaryEvents(ped, true)
                  TaskPlayAnim(ped,"amb@world_human_bum_standing@twitchy@idle_a","idle_c", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
                end
              end)
          
              RegisterCommand("KS:getCoordsH", function(source,args)
                  print(GetEntityCoords(PlayerPedId()).." "..GetEntityHeading(PlayerPedId()))
              end)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.38, 0.38)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
end
