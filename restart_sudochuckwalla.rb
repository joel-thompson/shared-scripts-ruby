require 'yaml'
require 'droplet_kit'

my_secrets = YAML::load_file('../../secrets.yaml') 
token = my_secrets["digital_ocean"]["PAT"]

client = DropletKit::Client.new(access_token: token)

client.droplet_actions.reboot(droplet_id: 24664322)