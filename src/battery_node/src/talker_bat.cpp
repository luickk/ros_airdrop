#include "ros/ros.h"

#include "std_msgs/String.h"
#include "battery_node/bat_stat.h"

#include "libnaza/pca9685.h"

#include <sstream>
#include <iostream>


int main(int argc, char **argv)
{
  int fd;

  ros::init(argc, argv, "talker_bat");

  ros::NodeHandle n;

  battery_node::bat_stat bat_data;

  ros::Publisher chatter_pub = n.advertise<battery_node::bat_stat>("bat_stat", 100);

  ros::Rate loop_rate(10);

  PCA9685 pca9685;
  pca9685.SetFrequency(50);
	uint16_t OnValue, OffValue;

  int val = 0;
  while (ros::ok())
  {
  	// pca9685.Read(CHANNEL(5), &OnValue, &OffValue);
    // printf("\tChannel PWM: %04xh-%04xh \n", OnValue, OffValue);
    bat_data.bat_val = 10;
    chatter_pub.publish(bat_data);
  }
  return 0;
}
