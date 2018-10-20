#include "ros/ros.h"
#include "std_msgs/String.h"

#include "cc_node/manual_action.h"

#include <iostream>
#include <sstream>

/*
## Action Codes

ACTION_SUCCESSFUL = 1
ACTION_PREVENTED_BY_AUTONOMOUS_OP = 2
ACTION_BLOCKED = 3
AIRBORNE = 4
NOT_AIRBORNE = 5

## Operation Codes

OPERATION_SUCCESSFUL = 1
OPERATION_PREVENTED_BY_ONGOING_OP = 2
OPERATION_BLOCKED = 3
AIRBORNE = 4
NOT_AIRBORNE =5
*/

bool manual_action(cc_node::manual_action::Request  &req,
         cc_node::manual_action::Response &res)
{
  if(req.m_action_type == "throttle") {
    res.m_action_status = 1;
  }
  ROS_INFO("request: x=%ld, y=%ld", req.m_action_type, res.m_action_status);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "Command and Control Node");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("manual_action", manual_action);
  ROS_INFO("CC Node Up and Ready all Services are go!");
  ros::spin();

  return 0;
}
