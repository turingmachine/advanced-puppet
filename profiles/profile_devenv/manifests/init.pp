class profile_devenv {
  package { 'puppet-lint':
    ensure   => present,
    provider => 'gem',
  }
}
