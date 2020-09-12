local ESX	 = nil

-- ESX
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

   
AddEventHandler('esx:loadingScreenOff', function()
    Citizen.Wait(1000) 
    TriggerServerEvent( 'load_player_status:getStatus', 'hunger')
    TriggerServerEvent( 'load_player_status:getStatus', 'thirst' )
end)

RegisterNetEvent('load_player_status:setStatus')
AddEventHandler('load_player_status:setStatus', function( statusName, status ) 
    TriggerEvent('esx_status:set', statusName, status.val)
end)

