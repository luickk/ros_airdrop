# ROS AirDrop

AirDrop is an autonomous Drone system, based on [dji naza interface- c++ lib](https://github.com/MrGrimod/dji_naza_interface_c-).

### Packages

- Command & Control (CC) node (planned) <br>
The CC node handles all requests that require the drone to move or change in physical space.

- GPS Node <br>
Node that constantly publishes GPS position data under the `gps_raw` topic.
