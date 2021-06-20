resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
files {
    'vehicles.meta',
    'carvariations.meta',
    'carcols.meta',
    'handling.meta',
    'vehiclelayouts.meta',
    'dlctext.meta',
    'contentunlocks.meta',
    'shopvehicle.meta',
}

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'vehiclelayouts.meta'
data_file 'DLC_TEXT_FILE''dlctext.meta.meta'
data_file 'CONTENT_UNLOCKS_FILE' 'carunlocks.meta'
data_file 'SHOP_VEHICLE_FILE' 'shopvehicle.meta'
client_script "@RSRP_Discord/acloader.lua"