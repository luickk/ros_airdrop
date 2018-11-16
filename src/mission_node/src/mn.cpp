#include <sstream>
#include <iostream>
#include <dirent.h>
#include <sys/types.h>

#include "ros/ros.h"
#include "std_msgs/String.h"

#include "mission_node/start_mission.h"

using namespace std;

/*
## Start

MISSION_NOT_FOUND = 0
MISSION_DIR_NOT_FOUND = 1

MISSION_SUCCESSFUL = 2
MISSION_STARTED = 3
MISSION_ONGOING = 4
MISSION_DONE = 5

*/

/*
  mission loader
  mission path: /etc/airdrop/missions
*/
bool start_mission(mission_node::start_mission::Request  &req,
                  mission_node::start_mission::Response &res)
{
  if(req.mission_name  !="")
  {
    const char *path = "/etc/airdrop/missions";
    struct dirent *entry;
    DIR *dir = opendir(path);

    if (dir == NULL)
    {
      ROS_INFO("Mission dir not found");
      res.mission_status = 1;
    }
    string file = "";
    while ((entry = readdir(dir)) != NULL)
    {
      file = entry->d_name;
      if(!(file == "." || file == ".."))
      {
        ROS_INFO("mission: %s", file.c_str());
      }
    }
    closedir(dir);
    res.mission_status = 5;
  }
  ROS_INFO("mission request: name=%s, status=%ld", req.mission_name.c_str(), res.mission_status);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "Mission engine node");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("start_mission", start_mission);

  ROS_INFO("RC Node Up and Ready all Services are go!");
  ros::spin();

  return 0;
}
