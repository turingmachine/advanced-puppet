define profile_dbserver::db (
  $dbname,
  $username,
  $password,
) {
  include ::profile_dbserver
  ::mysql::db { $name:
    user     => $username,
    password => $password,
    host     => 'localhost',
    grant    => ['SELECT', 'UPDATE'],
    require  => Class['::Profile_dbserver'],
  }
}
