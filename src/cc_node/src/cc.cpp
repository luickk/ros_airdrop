#include "ros/ros.h"
#include "std_msgs/String.h"

#include <iostream>
#include <sstream>


int main(int argc, char **argv)
{

  ros::init(argc, argv, "cc");

  ros::NodeHandle n;

  ros::Rate loop_rate(100);

  while (ros::ok())
  {
    std::cout << "running";
    ros::spinOnce();
    loop_rate.sleep();
  }


  return 0;
}
