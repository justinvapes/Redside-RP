-- CONFIG --

-- Blacklisted vehicle models
carblacklist = {
       "strikerforce",
	"RHINO",
        "APC",
	"CHERNOBOG",
	"HALFTRACK",
        "P_996 LAZER",
	"KHANJALI",
	"SCARAB",
	"SCARAB2",
    "TUG",
    "tug",
	"SCARAB3",
	"THRUSTER",
	"TRAILERSMALL2",
	"BRUISER",
	"BRUISER2",
	"BRUISER3",
	"CARACARA",
	"DUNE2",
	"DUNE3",
	"DUNE4",
	"DUNE5",
	"INSURGENT",
	"INSURGENT3",
	"MARSHALL",
	"MENACER",
	"MONSTER",
	"MONSTER2",
	"MONSTER3",
	"MONSTER4",
	"MONSTER5",
	"NIGHTSHARK",
	"RCBANDITO",
	"TECHNICAL",
	"TECHNICAL2",
	"TECHNICAL3",
	"CUTTER",
	"DUMP",
	"HANDLER",
	"AKULA",
	"ANNIHILATOR",
	"BUZZARD",
	"BUZZARD2",
	"CARGOBOB2",
	"CARGOBOB3",
	"CARGOBOB4",
	"FROGER",
	"FROGGER2",
	"HAVOK",
	"HUNTER",
	"MAVERICK",
	"SAVAGE",
	"SEASPARROW",
	"SKYLIFT",
	"VALKIRIE",
	"VALKYRIE2",
	"VOLATUS",
	"DELUXO",
	"OPPRESSOR",
	"OPPRESSOR2",
	"REVOLTER",
	"CERBERUS",
	"CERBERUS2",
	"CERBERUS3",
	"PHANTOM2",
	"TERBYTE",
  	"lazer",	
        "oppressor",
        "oppressor2",
        "deathbike2",
        "vigilante",
       "scramjet",
       "kuruma2",
       "schafter5",
       "zr3802",
       "deluxo",
       "dominator5",
	"cargoplane",
}

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(carblacklist) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))
			end
		end
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
			_DeleteEntity(car)
			sendForbiddenMessage("This vehicle is blacklisted!")
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end