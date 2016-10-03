require 'yaml'
require 'droplet_kit'

my_secrets = YAML::load_file('../secrets.yaml') 
token = my_secrets["digital_ocean"]["PAT"]
droplet_id = my_secrets["digital_ocean"]["mindfulmsjosephine_droplet_id"]

client = DropletKit::Client.new(access_token: token)

client.droplet_actions.reboot(droplet_id: droplet_id)