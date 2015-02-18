class ros::install {
  include ros::params

  # Install packages if necessary.
  if (!defined(Package[$ros::params::ros_package])
      or !defined(Package[python-rosinstall])) {
    apt::key { "ros":
      key          => $ros::params::key,
      key_source   => $ros::params::key_url,
    }

    apt::source { "ros":
      location     => $ros::params::apt_mirror_url,
      repos        => $ros::params::apt_repos,
      key          => $ros::params::key,
      include_src  => false,
    }

#    package { $ros::params::ros_package:
#      ensure => present,
#    }
#    package { python-rosinstall:
#      ensure => present,
#    }
#    package { python-rosdep:
#     ensure => present,
#    }
  }

  # Make sure ros user and group exist.
  group { "ros":
    ensure => present,
  }
  user { 'ros':
    name     => 'ros',
    home     => '/var/lib/ros',
    password => '',
    groups   => ["ros"],
    require  => [ Group["ros"] ],
  }
}
