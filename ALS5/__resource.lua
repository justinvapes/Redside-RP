resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'carcols.meta',
	'vehicles.meta',
	'carvariations.meta',
	
}

data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'

client_script "@Badger-Anticheat/acloader.lua"