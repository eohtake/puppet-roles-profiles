# /etc/puppetlabs/code/environments/production/manifests/site.pp
#
# This file is the mains entry point used when an agent 
# connects to a master and asks for and updated configuration.

# include profile::hiera_test

node puppetclient.test.corp {
  include role::puppetclient
}
