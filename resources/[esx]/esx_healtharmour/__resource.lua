resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Health and Armour Tracking'

version '1.0.0'

client_scripts {
    'client/main.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/main.lua',
}