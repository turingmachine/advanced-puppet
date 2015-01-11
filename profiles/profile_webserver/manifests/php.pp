define profile_webserver::php {
  include profile_webserver

  nginx::resource::vhost { $name:
    proxy => "http://${name}_upstream",
  }
  nginx::resource::upstream { "${name}_upstream":
    members => [
      'localhost:9000',
    ],
  }
}
