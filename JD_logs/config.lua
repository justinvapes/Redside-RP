Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = true  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "RedSide Roleplay" 							-- Bot Username
Config.avatar = "https://cdn.discordapp.com/attachments/850832551396245524/853749002101325835/standard_6.gif"				-- Bot Avatar
Config.communtiyName = "RedSide Roleplay"					-- Icon top of the Embed
Config.communtiyLogo = "https://cdn.discordapp.com/attachments/850832551396245524/853749002101325835/standard_6.gif"		-- Icon top of the Embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.weaponLogDelay = 1000		-- delay to wait after someone fired a weapon to check again in ms (put to 0 to disable) Best to keep this at atleast 1000

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs


-- Change color of the default embeds here
-- It used Decimal color codes witch you can get and convert here: https://jokedevil.com/colorPicker
Config.joinColor = "3863105" 		-- Player Connecting
Config.leaveColor = "15874618"		-- Player Disconnected
Config.chatColor = "10592673"		-- Chat Message
Config.shootingColor = "10373"		-- Shooting a weapon
Config.deathColor = "000000"		-- Player Died
Config.resourceColor = "15461951"	-- Resource Stopped/Started



Config.webhooks = {
	all = "https://discord.com/api/webhooks/853747811593486336/ZuEdTyXLFHulCauQffleLWqWQNwUOwvCQQljRSYyFoca51JSxrYNLMR4H9PbaYqQ3mXM",
	chat = "https://discord.com/api/webhooks/853352833528758364/qeaD9bZSngr33UlBde3F02bPvN2qtdaWwAsqZJzFXqL5KTdTXENheHgLPj37hUe_ZcDM",
	joins = "https://discord.com/api/webhooks/853352917305131040/07qt4pS7qozk6duhG1RironljQch2sGV-NAq_jlrsmWO4um3TkRiqs1B_acUhKmlH32-",
	leaving = "https://discord.com/api/webhooks/853748112186015755/shyF0B2B6CgP85mBECqcy0IM0As8ZkHYYUO2KHPcKVSBr7-E7va7Be-1PBr3c0K8Uozl",
	deaths = "https://discord.com/api/webhooks/853748367565127690/lXx6OJXOchzrEBSPeTuKdMnRtu5h2GQFQdO4pGdBblXEmqVcf0CWalj7pOWY8GYwDLen",
	shooting = "https://discord.com/api/webhooks/853748489867100190/sNrDwVnm9-GkRxJr2sgnbTVBDDYp3Nbm5ENomyBLKeM9OjOrRbnwKwHyRppL2mXzvLsZ",
	resources = "https://discord.com/api/webhooks/853748576089145366/w0q12esjmPhOOyoBgrQtOsyDIreTjhkyVHkJLW7u_X3NsEkqOLN5esgjq7HuiOQu7lrd",

  -- You can add more logs by using exports in other resources
  -- When the action is done call the function below in the script to send the information to JD_logs
  -- exports.JD_logs:discord('<MESSAGE_YOU_WANT_TO_POST_IN_THE_EMBED>', '1752220', '<WEBHOOK_CHANNEL>')
  -- Then create a webhook for the action you just executed
  -- <YOUR NEW WEBHOOK NAME> = "<DISCORD_WEBHOOK>",
  }


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.1.0"