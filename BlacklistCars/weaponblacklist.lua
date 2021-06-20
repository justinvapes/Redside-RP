-- CONFIG --

-- Blacklisted weapons
weaponblacklist = {
	"WEAPON_MINIGUN",
	 "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_RPG",
    "WEAPON_PASSENGER_ROCKET",
    "WEAPON_AIRSTRIKE_ROCKET",
    "WEAPON_STINGER",
    "WEAPON_MINIGUN",
    "WEAPON_GRENADE",
    "WEAPON_DIGISCANNER",
    "WEAPON_BRIEFCASE",
    "WEAPON_BRIEFCASE_02",
    "WEAPON_VEHICLE_ROCKET",
    "WEAPON_EXPLOSION",
    "WEAPON_GUSENBERG",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_RAYCARBINE",
    "WEAPON_RAYMINIGUN",
    "WEAPON_HOMINGLAUNCHER",

}

-- Don't allow any weapons at all (overrides the blacklist)
disableallweapons = false

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			nothing, weapon = GetCurrentPedWeapon(playerPed, true)

			if disableallweapons then
				RemoveAllPedWeapons(playerPed, true)
			else
				if isWeaponBlacklisted(weapon) then
					RemoveWeaponFromPed(playerPed, weapon)
					sendForbiddenMessage("This weapon is blacklisted!")
				end
			end
		end
	end
end)

function isWeaponBlacklisted(model)
	for _, blacklistedWeapon in pairs(weaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end