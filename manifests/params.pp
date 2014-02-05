class ros::params {
  case $::operatingsystem {
    Ubuntu: {
      $key            = "D50582E6"
      $key_url        = "http://packages.ros.org/ros.key"
      $apt_mirror_url = "http://packages.ros.org/ros/ubuntu"
      $apt_repos      = "main"

      # By default, install the latest available ROS release for
      # the platform.
      case $::operatingsystemrelease {
        10.04: {
          $ros_version     = "fuerte"
        }
        12.04: {
          $ros_version     = "hydro"
        }
        12.10: {
          $ros_version     = "hydro"
        }
        13.04: {
          $ros_version     = "hydro"
        }
      }

      $ros_package     = "ros-${ros_version}-desktop-full"
    }

    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
}
