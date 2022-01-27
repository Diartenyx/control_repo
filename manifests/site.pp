node default {
}
node 'master.puppet.vm' {
  include role::mater_server
}
