class profile_dbserver (
  $root_password,
) {
  class { '::mysql::server':
    root_password => $root_password,
  }
}
