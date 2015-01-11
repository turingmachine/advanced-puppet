class profile_appserver {
  class { 'phpfpm':
    poold_purge => true,
  }
}
