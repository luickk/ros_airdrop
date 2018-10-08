#include "ros/ros.h"
#include "std_msgs/String.h"

#include "libnaza/pca9685.h"
#include "libnaza/naza_serial_gps.h"
#include <wiringSerial.h>
#include <wiringPi.h>

#include <sstream>


int main(int argc, char **argv)
{
  int fd;
  std::string gpsData = "";

  ros::init(argc, argv, "talker");


  ros::NodeHandle n;


  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("gps_raw", 100);

  ros::Rate loop_rate(1000);


	if ((fd = serialOpen ("/dev/ttyAMA0", 115200)) < 0)
	{
	 fprintf (stderr, "Unable to open serial device: %s\n", strerror (errno)) ;
	}

	if (wiringPiSetup () == -1)
  {
    fprintf (stdout, "Unable to start wiringPi: %s\n", strerror (errno)) ;
  }

  while (ros::ok())
  {
    std_msgs::String msg;
    std::stringstream ss;

    while (serialDataAvail (fd))
    {
				uint8_t decodedMessage = NazaDecoder.decode(serialGetchar (fd));
				//std::cout << "GPS Sats: " << round(NazaDecoder.getNumSat()) << ", Lat: " << NazaDecoder.getLat() << ", Long: " << NazaDecoder.getLon() << ", Heading: " << round(NazaDecoder.getHeadingNc()) << ", Alt: " << NazaDecoder.getGpsAlt() << " \n";
        gpsData = std::to_string(round(NazaDecoder.getNumSat())) + "," + std::to_string(NazaDecoder.getLat()) + "," + std::to_string(NazaDecoder.getLon()) + "," + std::to_string(round(NazaDecoder.getHeadingNc())) + "," + std::to_string(NazaDecoder.getGpsAlt()) + " \n";
        msg.data = gpsData;
        //ROS_INFO("%s", msg.data.c_str());
        chatter_pub.publish(msg);
    }


    ros::spinOnce();
    loop_rate.sleep();
  }


  return 0;
}
