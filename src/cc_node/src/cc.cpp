#include "ros/ros.h"
#include "std_msgs/String.h"

#include "cc_node/manual_action.h"
#include "cc_node/a_operation_fly_to_pos.h"
#include "cc_node/a_operation_landing.h"
#include "cc_node/a_operation_liftoff.h"
#include "cc_node/a_operation_stop_action_and_hover.h"
#include "cc_node/a_operation_turn_to_direction.h"
#include "cc_node/get_set_take_off_pos.h"

#include "gps_node/gps_raw.h"

#include "libnaza/pca9685.h"
#include "libnaza/naza_interface_manual.h"
#include "libnaza/naza_interface_auto.h"

#include <iostream>
#include <sstream>
#include <boost/asio.hpp>
/*
  INITS
*/

PCA9685 pca9685;
ConfigFile cf("/etc/naza/pwm_config.txt");


naza_interface_manual_c naza_m;
naza_interface_auto_c naza_a;


/*
  ROS DRONE STATES
*/

bool airborne=false;
bool in_mission=false;
bool landing_phase=false;

gps_node::gps_raw gps_raw_startup_pos;

/*
  ROS DRONE PARAMETERS
*/

// 0 only for testing purposes!
int home_point_sat_threshold = 0;

/*
  Manual actions service
*/
bool manual_action(cc_node::manual_action::Request  &req,
                  cc_node::manual_action::Response &res)
{
  if(req.m_action_type == "fly_throttle")
  {
    naza_m.fly_throttle(cf, pca9685, req.m_action_val);
    res.m_action_status = 1;
  } else if(req.m_action_type == "init_naza") {
    if(!airborne)
    {
      naza_m.init_naza(cf, pca9685);
      res.m_action_status = 1;
    }
    else
    {
      res.m_action_status = 4;
    }
  } else if(req.m_action_type == "fly_back") {
    naza_m.fly_back(cf, pca9685, req.m_action_val);
    res.m_action_status = 1;
  } else if(req.m_action_type == "fly_forward") {
    naza_m.fly_forward(cf, pca9685, req.m_action_val);
    res.m_action_status = 1;
  } else if(req.m_action_type == "fly_left") {
    naza_m.fly_left(cf, pca9685, req.m_action_val);
    res.m_action_status = 1;
  } else if(req.m_action_type == "fly_right") {
    naza_m.fly_right(cf, pca9685, req.m_action_val);
    res.m_action_status = 1;
  } else if(req.m_action_type == "turn_right") {
    naza_m.fly_turn_right(cf, pca9685, req.m_action_val);
    res.m_action_status = 1;
  } else if(req.m_action_type == "turn_left") {
    naza_m.fly_turn_left(cf, pca9685, req.m_action_val);
    res.m_action_status = 1;
  } else if(req.m_action_type == "set_neutral") {
    if(!airborne)
    {
      naza_m.set_neutral(cf, pca9685);
      res.m_action_status = 1;
    }
    else
    {
      res.m_action_status = 4;
    }
  } else if(req.m_action_type == "recalibrate") {
    if(!airborne)
    {
      naza_m.recalibrate(cf, pca9685);
      res.m_action_status = 1;
    }
    else
    {
      res.m_action_status = 4;
    }
  } else if(req.m_action_type == "arm_motors") {
    if(!airborne)
    {
      naza_m.arm_motors(cf, pca9685);
      res.m_action_status = 1;
    }
    else
    {
      res.m_action_status = 4;
    }
  } else if(req.m_action_type == "set_fm") {
    if(req.m_action_val == 0){
      naza_m.set_flight_mode(cf, pca9685, "gps");
    } else if(req.m_action_val == 1){
      naza_m.set_flight_mode(cf, pca9685, "failsafe");
    } else if(req.m_action_val == 2){
      naza_m.set_flight_mode(cf, pca9685, "selectable");
    } else if(req.m_action_val > 2) {
      res.m_action_status = 6;
    }
    res.m_action_status = 1;
  } else {
    res.m_action_status = 6;
  }
  return true;
}

/*
  Local copy of get_set_take_off_pos service, for usage in service callbacks
*/
bool set_take_off_pos_local()
{
  gps_node::gps_raw latest_gps_data = *ros::topic::waitForMessage<gps_node::gps_raw>("/gps_raw", ros::Duration(10));
  if(latest_gps_data.gps_sats >= home_point_sat_threshold) {
    gps_raw_startup_pos = latest_gps_data;
    ROS_INFO("SET HOME POINT TO LATEST LOC");
  } else {
    return false;
  }
  return true;
}

/*
  Autonomous operations service
*/
bool a_operation_fly_to_pos(cc_node::a_operation_fly_to_pos::Request  &req,
                  cc_node::a_operation_fly_to_pos::Response &res)
{
  if(req.pos_lat != 0 && req.pos_lon != 0 && req.pos_alt != 0 && airborne && !in_mission && !landing_phase)
  {
    in_mission = true;
    naza_a.fly_to_gps_pos(cf, pca9685, naza_m, req.pos_lat, req.pos_lon, req.pos_alt);
    in_mission = false;
    res.a_operation_status = 7;
  } else if (!airborne){
    res.a_operation_status = 11;
  } else if (in_mission || !landing_phase){
    res.a_operation_status = 8;
  }
  ROS_INFO("fly to pos(lat,lon): %ld, %ld", req.pos_lat, req.pos_lon);
  return true;
}

bool a_operation_landing(cc_node::a_operation_landing::Request  &req,
                  cc_node::a_operation_landing::Response &res)
{
  if(req.a_operation_landing_reason != "" && airborne && !in_mission && !landing_phase)
  {
    in_mission = true;
    naza_a.landing_phase(cf, pca9685, naza_m);
    landing_phase=true;
    airborne = false;
    res.a_operation_status = 7;
  } else if (!airborne){
    res.a_operation_status = 11;
  } else if (in_mission || !landing_phase){
    res.a_operation_status = 8;
  }
  return true;
}

bool a_operation_liftoff(cc_node::a_operation_liftoff::Request  &req,
                  cc_node::a_operation_liftoff::Response &res)
{
  if(req.a_operation_takeoff_height >= 10 && !airborne && !in_mission && !landing_phase)
  {
    if(set_take_off_pos_local()){
      in_mission = true;
      naza_m.arm_motors(cf, pca9685);
      naza.fly_throttle(cf, pca9685, 50);
      sleep(5);
      naza.fly_throttle(cf, pca9685, 60);
      sleep(3);
      auto_hover(cf, pca9685, naza);
      in_mission = false;
      airborne = true;
      res.a_operation_status = 7;
    } else {
      res.a_operation_status = 21;
    }
  } else if (!airborne){
    res.a_operation_status = 11;
  } else if (in_mission || !landing_phase) {
    res.a_operation_status = 8;
  }
  return true;
}

bool a_operation_stop_action_and_hover(cc_node::a_operation_stop_action_and_hover::Request  &req,
                  cc_node::a_operation_stop_action_and_hover::Response &res)
{
  if(req.a_operation_pausing_reason != ""  && airborne)
  {
    in_mission = true;
    naza_a.auto_hover(cf, pca9685, naza_m);
    in_mission = false;
    res.a_operation_status = 7;
  } else if (!airborne){
    res.a_operation_status = 11;
  }
  return true;
}

bool a_operation_turn_to_direction(cc_node::a_operation_turn_to_direction::Request  &req,
                  cc_node::a_operation_turn_to_direction::Response &res)
{
  if(req.a_operation_dir_in_deg != 0  && airborne)
  {
    in_mission = true;
    naza_a.turn_to_deg(cf, pca9685, naza_m, req.a_operation_dir_in_deg);
    in_mission = false;
    res.a_operation_status = 7;
  } else if (!airborne){
    res.a_operation_status = 11;
  }
  return true;
}

/*
  Service to set startup location
*/
bool get_set_take_off_pos(cc_node::get_set_take_off_pos::Request  &req,
                  cc_node::get_set_take_off_pos::Response &res)
{
  if(req.get_set == "set")
  {
    if(set_take_off_pos_local()){
      res.system_status = 22;
    } else {
      res.system_status = 21;
    }
  } else if (req.get_set == "get"){
    res.gps_sats = gps_raw_startup_pos.gps_sats;
    res.lat = gps_raw_startup_pos.lat;
    res.lon = gps_raw_startup_pos.lon;
    res.heading = gps_raw_startup_pos.heading;
    res.alt = gps_raw_startup_pos.alt;
  }
  return true;
}
/*
  CC Main function
*/
int main(int argc, char **argv)
{
  ros::init(argc, argv, "Command and Control Node");
  ros::NodeHandle n;
  pca9685.SetFrequency(50);

  ros::ServiceServer service = n.advertiseService("manual_action", manual_action);

  ros::ServiceServer service1 = n.advertiseService("a_operation_fly_to_pos", a_operation_fly_to_pos);

  ros::ServiceServer service2 = n.advertiseService("a_operation_landing", a_operation_landing);

  ros::ServiceServer service3 = n.advertiseService("a_operation_liftoff", a_operation_liftoff);

  ros::ServiceServer service4 = n.advertiseService("a_operation_stop_action_and_hover", a_operation_stop_action_and_hover);

  ros::ServiceServer service5 = n.advertiseService("a_operation_turn_to_direction", a_operation_turn_to_direction);

  ros::ServiceServer service6 = n.advertiseService("get_set_take_off_pos", get_set_take_off_pos);

  ROS_INFO("CC Node Up and Ready all Services are go!");
  ros::spin();

  return 0;
}
