resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

files {
	'vehicles.meta',
	'carvariations.meta',
	'handling.meta',	
	'carcols.meta'
	
}
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'

client_script 'vehicle_names.lua'
client_script "@Badger-Anticheat/acloader.lua"