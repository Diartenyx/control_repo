class role::app_server {
  include profile::web
  include profile::app
  include profile::base
  include profile::ssh_server
}
