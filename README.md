# ROS AirDrop

AirDrop is an autonomous Drone system, based on the open source [dji naza interface interface](https://github.com/MrGrimod/dji_naza_interface_c-). It's ment to deliver payloads quick and easy without relying on custom or second hand flight controller implementations. Instead, it relies on [an interface](https://github.com/MrGrimod/dji_naza_interface_c-), for any flight controller (currently using the DJI Naza V2), which allows the system to operate safe and predictable as well as open source.
It consists of a number of ROS packages containing the core and mission critical nodes. The Web Interface for remote controle can be found [here](https://github.com/MrGrimod/web_airdrop).

### Packages

- Command & Control (CC) node (planned) <br>
The CC node handles all requests that require the drone to move or change position <br> in physical space by offering ROS services. It also manages all state variables, which makes it to the most important package.

- GPS Node <br>
Node that constantly publishes GPS position data under the `gps_raw` topic. The data is read via the raspberries serial port and comes directly from the GPS Unit's serial output(tx) which is also linked to the Naza V2.
The original code to decode the gps protocol is from pawelsky and has been adapted to raspberry c++ standards and can be found [here](https://www.rcgroups.com/forums/showthread.php?1995704-DJI-NAZA-GPS-communication-protocol-NazaDecoder-Arduino-library)

- MN Node <br>
Node that parses and then runs missions(files) by calling services <br> provided by CC node.
