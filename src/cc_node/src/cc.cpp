#include "ros/ros.h"
#include "std_msgs/String.h"

#include "cc_node/manual_action.h"
#include "cc_node/a_operation_fly_to_pos.h"
#include "cc_node/a_operation_landing.h"
#include "cc_node/a_operation_liftoff.h"
#include "cc_node/a_operation_stop_action_and_hover.h"
#include "cc_node/a_operation_turn_to_direction.h"

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

/*
  Manual actions service
*/
bool manual_action(cc_node::manual_action::Request  &req,
                  cc_node::manual_action::Response &res)
{
  if(req.m_action_type == "throttle") {
    res.m_action_status = 1;
  }
  ROS_INFO("request: action type=%ld, action status=%ld", req.m_action_type, res.m_action_status);
  return true;
}

/*
  Autonomous operations service
*/

bool a_operation_fly_to_pos(cc_node::a_operation_fly_to_pos::Request  &req,
                  cc_node::a_operation_fly_to_pos::Response &res)
{
  if(req.pos_lat != 0 && req.pos_lon != 0 && req.pos_heading != 0) {
    res.a_operation_status = 1;
  }
  ROS_INFO("fly to pos(lat,lon): %ld, %ld", req.pos_lat, req.pos_lon);
  return true;
}

bool a_operation_landing(cc_node::a_operation_landing::Request  &req,
                  cc_node::a_operation_landing::Response &res)
{
  if(req.a_operation_landing_reason != "") {
    res.a_operation_status = 1;
  }
  ROS_INFO("reason for landing: %ld", req.a_operation_landing_reason);
  return true;
}

bool a_operation_liftoff(cc_node::a_operation_liftoff::Request  &req,
                  cc_node::a_operation_liftoff::Response &res)
{
  if(req.a_operation_takeoff_height != 0) {
    res.a_operation_status = 1;
  }
  ROS_INFO("taking off to height: %ld", req.a_operation_takeoff_height);
  return true;
}

bool a_operation_stop_action_and_hover(cc_node::a_operation_stop_action_and_hover::Request  &req,
                  cc_node::a_operation_stop_action_and_hover::Response &res)
{
  if(req.a_operation_pausing_reason != "") {
    res.a_operation_status = 1;
  }
  ROS_INFO("reason for pausing: %ld", req.a_operation_pausing_reason);
  return true;
}

bool a_operation_turn_to_direction(cc_node::a_operation_turn_to_direction::Request  &req,
                  cc_node::a_operation_turn_to_direction::Response &res)
{
  if(req.a_operation_dir_in_deg != 0) {
    res.a_operation_status = 1;
  }
  ROS_INFO("turning to dir: %ld", req.a_operation_dir_in_deg);
  return true;
}

/*
  CC Main function
*/
int main(int argc, char **argv)
{
  ros::init(argc, argv, "Command and Control Node");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("manual_action", manual_action);

  ros::ServiceServer service1 = n.advertiseService("a_operation_fly_to_pos", a_operation_fly_to_pos);

  ros::ServiceServer service2 = n.advertiseService("a_operation_landing", a_operation_landing);

  ros::ServiceServer service3 = n.advertiseService("a_operation_liftoff", a_operation_liftoff);

  ros::ServiceServer service4 = n.advertiseService("a_operation_stop_action_and_hover", a_operation_stop_action_and_hover);

  ros::ServiceServer service5 = n.advertiseService("a_operation_turn_to_direction", a_operation_turn_to_direction);

  ROS_INFO("CC Node Up and Ready all Services are go!");
  ros::spin();

  return 0;
}
