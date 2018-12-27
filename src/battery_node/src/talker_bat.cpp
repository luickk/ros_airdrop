#include "ros/ros.h"

#include "std_msgs/String.h"
#include "battery_node/bat_stat.h"

#include <sstream>


int main(int argc, char **argv)
{
  int fd;

  ros::init(argc, argv, "talker_bat");

  ros::NodeHandle n;

  battery_node::bat_stat bat_data;

  ros::Publisher chatter_pub = n.advertise<battery_node::bat_stat>("bat_stat", 100);

  ros::Rate loop_rate(100);

  while (ros::ok())
  {
      bat_data.bat_val = 10;
      chatter_pub.publish(bat_data);
  }
  return 0;
}
