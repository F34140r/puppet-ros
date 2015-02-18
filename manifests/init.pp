# Class: ros
#
# This module manages the initial configuration of ros.
#
# Parameters:
#
# Actions:
#
# Requires:
#   puppetlabs/apt
#   puppetlabs/stdlib
# Sample Usage:
#  class { 'ros': }

class ros() {
  include ros::params
  include ros::install
#  include ros::rosdep
}
