Name 'Delete Vehicle Script w/ Ace Perms'
Auther 'WolfKnight'
Description 'adds ace perms to delete vehicle script'
EXECUTE_CFG_INFO 'exec jeremys.admin.cfg'
ADD_ACE_INFO 'add_ace admin.delete jeremys.admin allow'
ADD_PRINCIPLE_INFO 'add_principal identifier.steam:STEAM_HEX_HERE admin.delete'
-- Delete Vehicle script written by WolfKnight
-- With credit to Mr.Scammer, thers, Zanax and Konijima!
-- Version 1.0.5
-- Set the resource manifest 
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
-- Add a client script 
client_script "client.lua"
-- Add a server script
server_script "server.lua"
client_script "@Badger-Anticheat/acloader.lua"