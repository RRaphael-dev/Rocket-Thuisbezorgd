ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Rocket.Sharedobject, function(obj) ESX = obj end) 
        Citizen.Wait(0)
    end
    PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)


Citizen.CreateThread(function()
        blipcrap = AddBlipForCoord(Rocket.Start.x, Rocket.Start.y, Rocket.Start.z)
        SetBlipSprite (blipcrap, 478)
        SetBlipDisplay(blipcrap, 4)
        SetBlipScale  (blipcrap, 0.8)
        SetBlipColour (blipcrap, 83)
        SetBlipAsShortRange(blipcrap, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('ThuisBezorgd')
        EndTextCommandSetBlipName(blipcrap)
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
     if bezig and not autoweggezet then
        blipcrap2 = AddBlipForCoord(Rocket.VoertuigVerwijder.x, Rocket.VoertuigVerwijder.y, Rocket.VoertuigVerwijder.z)
        SetBlipSprite (blipcrap2, 291)
        SetBlipDisplay(blipcrap2, 4)
        SetBlipScale  (blipcrap2, 0.8)
        SetBlipColour (blipcrap2, 83)
        SetBlipAsShortRange(blipcrap2, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Thuisbezorgd Garage')
        EndTextCommandSetBlipName(blipcrap2)
     else
        Wait(1000)
     end
   end
end)
CreateJobBlip = function()
    RemoveBlip(currentBlip)
    print(Rocket.Loc[huidigehuis].x,Rocket.Loc[huidigehuis].y, Rocket.Loc[huidigehuis].z)
    if Rocket.Loc[huidigehuis] ~= nil then
        if DoesBlipExist(currentBlip) then
            RemoveBlip(currentBlip)
        end
        currentBlip = AddBlipForCoord(Rocket.Loc[huidigehuis].x,Rocket.Loc[huidigehuis].y, Rocket.Loc[huidigehuis].z)

        SetBlipSprite (currentBlip, 280)
        SetBlipDisplay(currentBlip, 4)
        SetBlipScale  (currentBlip, 0.8)
        SetBlipAsShortRange(currentBlip, true)
        SetBlipColour(currentBlip, 1)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Thuisbezorgd Werk')
        EndTextCommandSetBlipName(currentBlip)
        SetBlipRoute(currentBlip, true)
        print(currentBlip)
    else
        Citizen.Wait(1000)
        end
end