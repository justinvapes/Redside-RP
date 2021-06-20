Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(834538477324468266)

        -- Here you can add hover text for the "redsidebig" icon.
        SetDiscordRichPresenceAssetText('This is a lage icon with text')
	SetDiscordRichPresenceAsset('redsidesbig')
       
        -- Here you can add hover text for the "redsidesmall" icon.
        SetDiscordRichPresenceAssetSmallText('This is a lsmall icon with text')
        SetDiscordRichPresenceAssetSmall('redsidesmall')	

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "RedSide Discord", "https://discord.gg/3FnKEg7Czm")
        SetDiscordRichPresenceAction(1, "Join Game", "Fivem://connect/51.222.11.191:3097")

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)