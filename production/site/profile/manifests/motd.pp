class profile::motd (Optional[String] $motd_message = undef) {
  class { 'motd':
    content => $motd_message
  }
}
