ESX = nil

   TriggerEvent(Rocket.Sharedobject, function(obj) ESX = obj end) 

RegisterServerEvent('rocket-Thuisbezorgd:server:pankie')
AddEventHandler('rocket-Thuisbezorgd:server:pankie', function(anticheat)
   local src = source
--   local xPlayer = ESX.GetPlayerFromId(src)
      if anticheat == 45245657554684542516546745469849786463 then
--         xPlayer.addMoney(Rocket.PrijsPerLevering)
         TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Je hebt €' .. Rocket.PrijsPerLevering ..' gekregen!'})
      else
         DropPlayer(src, 'Nice Try Bitch xx Rocket Scripts')
      end
end)