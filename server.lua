-- Created by Taco
-- Created by Taco
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "tacos_ringpd") 
vRP = Proxy.getInterface("vRP")

RegisterNetEvent("bankerpodor")
AddEventHandler("bankerpodor", function(coords)
    local user_id = vRP.getUserId({source})
    local source = source

    if vRP.hasPermission({user_id, 'kriminel.adgang'}) then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du er inde..', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
    else 
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du er ikke kriminel', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
    end
end)


RegisterNetEvent("buyingnow")
AddEventHandler("buyingnow", function(coords)
    local user_id = vRP.getUserId({source})
    local source = source

    if vRP.tryFullPayment({user_id, 2000000}) then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Købt..', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
        vRP.giveInventoryItem({user_id,"wbody|WEAPON_PISTOL",1})
        vRP.giveInventoryItem({user_id,"wammo|WEAPON_PISTOL",250})
    else 
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke råd', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
    end
end)

RegisterNetEvent("supsenderpo")
AddEventHandler("supsenderpo", function(coords)
    local user_id = vRP.getUserId({source})
    local source = source

    if vRP.hasPermission({user_id, 'kriminel.adgang'}) then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du tog lyd dæmper på..', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))
    else 
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'du er ikke kriminel', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
    end
end)