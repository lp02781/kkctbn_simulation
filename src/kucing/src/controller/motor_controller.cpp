#include "../../include/kucing/hehe.hpp"
#include "ros/ros.h"
#include "mavros_msgs/OverrideRCIn.h"
#include "kucing/override_motor.h"
#include "kucing/motor_joystick.h"
#include "kucing/motor_flag.h"
#include <iostream>

bool override_status = false;
bool joystick_status = false;

ros::Publisher pub_override_rc;

mavros_msgs::OverrideRCIn override_out;

void override_input_cb(const kucing::override_motor& override_recv);
void override_status_cb(const kucing::motor_flag& override_status_recv);

int main(int argc, char **argv)
{
  ros::init(argc, argv, "motor_controller");
  ros::NodeHandle n;

  pub_override_rc = n.advertise<mavros_msgs::OverrideRCIn>("/mavros/rc/override", 10);
  
  ros::Subscriber sub_override_motor = n.subscribe("/kkctbn/override/motor", 8, override_input_cb);
  ros::Subscriber sub_override_status = n.subscribe("/kkctbn/motor/flag", 8, override_status_cb);
  
  ROS_WARN("NC : motor_controller.cpp active");
  
	while(ros::ok()){
		sleep(0.2);
		ros::spin();
	}
}

void override_status_cb(const kucing::motor_flag& override_status_recv){
	override_status = override_status_recv.override_status;
	joystick_status = override_status_recv.joystick_status;
}

void override_input_cb(const kucing::override_motor& override_recv){
	for(int i=0; i < 8; i++) override_out.channels[i] = 0;
	if(override_status == true){
		//ROS_ERROR("1");
		if (override_recv.throttle > MAX_THROTTLE){
			override_out.channels[THROTTLE] = MAX_THROTTLE;
		}
		else if (override_recv.throttle < MIN_THROTTLE){
			override_out.channels[THROTTLE] = MIN_THROTTLE;
		}
		else {
			override_out.channels[THROTTLE] = override_recv.throttle;
		}

		if (override_recv.steering > MAX_STEERING){
			override_out.channels[STEERING] = MAX_STEERING;
		}
		else if (override_recv.steering < MIN_STEERING){
			override_out.channels[STEERING] = MIN_STEERING;
		}
		else {
			override_out.channels[STEERING] = override_recv.steering;
		}
	}
	pub_override_rc.publish(override_out);
}


