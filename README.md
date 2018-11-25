# ROS AirDrop

AirDrop is an autonomous Drone system, based on [dji naza interface- c++ lib](https://github.com/MrGrimod/dji_naza_interface_c-).

### Packages

- Command & Control (CC) node (planned) <br>
The CC node handles all requests that require the drone to move or change position <br> in physical space by offering ROS services.

- GPS Node <br>
Node that constantly publishes GPS position data under the `gps_raw` topic.

- MN Node <br>
Node that parses and then runs missions(files) by calling services <br> provided by CC node.
