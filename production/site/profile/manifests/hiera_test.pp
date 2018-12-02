# /etc/puppetlabs/code/environments/production/modules/profile/manifests/hiera_test.pp

class profile::hiera_test (
  Boolean             $ssl,
  Boolean             $backups_enabled,
  Optional[String[1]] $site_alias = undef,
  String              $sou_redhat,
  String              $memory,
) {
  file { '/tmp/hiera_test.txt':
    ensure  => file,
    content => @("END"),
               Data came from profile::hiera_test
               -----
               profile::hiera_test::ssl: ${ssl}
               profile::hiera_test::backups_enabled: ${backups_enabled}
               profile::hiera_test::site_alias: ${site_alias}
               profile::hiera_test::sou_redhat: ${sou_redhat}
               profile::hiera_test::memory: ${memory}
               |END
    owner   => root,
    mode    => '0644',
  }
}
