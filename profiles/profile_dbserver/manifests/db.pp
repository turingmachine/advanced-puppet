define profile_dbserver::db (
  $dbname,
  $username,
  $password,
) {
  ::mysql::db { $name:
    user     => $username,
    password => $password,
    host     => 'localhost',
    grant    => ['SELECT', 'UPDATE'],
    require  => Class['::Profile_dbserver'],
  }
}
