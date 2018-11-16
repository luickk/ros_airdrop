#include <sstream>
#include <iostream>

#include "ros/ros.h"
#include "std_msgs/String.h"

#include "mission_node/start_mission.h"

using namespace std;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "Remote control node");

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<mission_node::start_mission>("start_mission");
  mission_node::start_mission srv;
  srv.request.mission_name = "m1";
  if (client.call(srv))
  {
    ROS_INFO("Response Code: %ld", srv.response.mission_status);
  }
  else
  {
    ROS_ERROR("Failed to call service");
    return 1;
  }

  return 0;
}
