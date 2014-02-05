class ros::rosdep {
  exec { 'create-rosdep':
        command => '/usr/bin/rosdep init',
        require => Package['python-rosdep'],
        creates => '/etc/ros/rosdep',
        user    => root,
  }

  exec { 'update-rosdep':
        command => '/usr/bin/rosdep update',
        require => [ Package['python-rosdep'], Exec['create-rosdep'] ],
        creates => '/var/lib/ros/.ros/rosdep',
        user    => ros,
  }
}
