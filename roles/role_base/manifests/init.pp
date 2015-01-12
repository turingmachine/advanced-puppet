class role_base {
  if $::environment == 'development' {
    include ::profile_devenv
  }
}
