puppet-ros
==========

## Introduction

This module deploys [ROS][ros] on a node.

[ROS][ros] is a widely used robotics framework. It is mainly distributed
through an APT mirror maintained by the [OSRF][osrf].

This Puppet module achieves the following tasks:
 * download the apt repository key,
 * add the ROS repository to apt sources,
 * install the latest version of ROS available on the local Ubuntu distribution (as stated by [REP-3][rep-3]),
 * setup `ros` group and `ros` user,
 * run `rosdep init` (as root user) and `rosdep update` (as `ros` user).


[ros]: http://www.ros.org/ "ROS"
[osrf]: http://www.osrfoundation.org/ "OSRF"
[rep-3]: http://www.ros.org/reps/rep-0003.html "REP-3"


## Using the module

To add ROS to a specific node, include the module:

```
include ros
```
