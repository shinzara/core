name             'provisioner'
maintainer       "Dell Crowbar Team"
maintainer_email "openstack@dell.com"
license          "Apache 2.0"
description      "Installs provisioner components for Crowbar"
long_description "Installs provisioner components for Crowbar"
version          "1.0.0"
recipe "provisioner::base", "Installs base Provisioner requirements"
recipe "provisioner::dhcp_update", "Handles updating DHCP information to drive installation of nodes by Crowbar"
recipe "provisioner::setup_base_images", "Handles setting up the proper directory structure for DHCP and TFTP on the admin node"
recipe "provisioner::update_nodes", "Handles updating the Chef database for new or removed systems"
depends 'apache2', '~> 1.0'
depends "crowbar-squid"
