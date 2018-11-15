#include <sstream>
#include <iostream>

#include "ros/ros.h"
#include "std_msgs/String.h"

using namespace std;

int main(int argc, char **argv)
{
  string cmd;
  string main_CMD = "main";
  while(1){
    if(main_CMD=="main") {
      cout << "Enter a command:  " << endl;
      cout << "start mission <mission>" << endl;
      cout << "actionmode" << endl;
      getline (cin, cmd);
      if(cmd=="actionmode"){
        main_CMD = "actionmode";
      }
    } else if(main_CMD=="actionmode"){
      cout << "Enter an action:  " << endl;
      cout << "or by typing exit" << endl;
      getline (cin, cmd);
      if(cmd=="exit"){
        main_CMD = "actionmode";
      }
    }
  }
}
