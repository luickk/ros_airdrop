#include <sstream>
#include <iostream>
#include <vector>
#include <dirent.h>
#include <sys/types.h>
#include <algorithm>
#include <fstream>

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

MISSION_PARSING_ERROR = 6

*/

vector<string> split(string str, char delimiter) {
  vector<string> internal;
  stringstream ss(str); // Turn the string into a stream.
  string tok;

  while(getline(ss, tok, delimiter)) {
    internal.push_back(tok);
  }

  return internal;
}

bool is_number(const string& s)
{
    return !s.empty() && find_if(s.begin(),
        s.end(), [](char c) { return !isdigit(c); }) == s.end();
}

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
    string file_name = "";
    string mission_name = "";
    string file_line = "";
    ifstream file_open;
    while ((entry = readdir(dir)) != NULL)
    {
      file_name = entry->d_name;
      if(!(file_name == "." || file_name == ".."))
      {
        mission_name = file_name.substr(0, file_name.find_last_of("."));
        if(req.mission_name == mission_name){
          file_open.exceptions ( ifstream::badbit );
          try {
            file_open.open (string (path) + "/" + file_name);
            file_line = "";
            while(getline(file_open, file_line))
            {
              vector<string> split_by_space = split(file_line, ' ');
              if(split_by_space[0] == "takeoff"){
                if(split_by_space.size() == 2 && is_number(split_by_space[1])){
                  ROS_INFO("TOOK OFF TO HEIGHT  %s", split_by_space[1].c_str());
                  res.mission_status = 5;
                } else {
                  res.mission_status = 6;
                  break;
                }
              } else if(split_by_space[0] == "land"){
                if(split_by_space.size() == 1){
                  ROS_INFO("LANDING");
                  res.mission_status = 5;
                } else {
                  res.mission_status = 6;
                  break;
                }
              } else if(split_by_space[0] == "flyto"){
                if(split_by_space.size() == 4 && is_number(split_by_space[1]) && is_number(split_by_space[2]) && is_number(split_by_space[3])){
                  ROS_INFO("FLYING TO POS  %s, %s, %s", split_by_space[1].c_str(), split_by_space[2].c_str(), split_by_space[3].c_str());
                  res.mission_status = 5;
                } else {
                  res.mission_status = 6;
                  break;
                }
              } else if(split_by_space[0] == "turnto"){
                if(split_by_space.size() == 2 && is_number(split_by_space[1])){
                  ROS_INFO("TURN TO  %s", split_by_space[1].c_str());
                  res.mission_status = 5;
                } else {
                  res.mission_status = 6;
                  break;
                }
              } else {
                res.mission_status = 6;
                break;
              }

            }
            break;
          }
          catch (const ifstream::failure& e) {
            res.mission_status = 0;
          }
        } else {
          res.mission_status = 0;
        }
      }
    }
    closedir(dir);
  }
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
