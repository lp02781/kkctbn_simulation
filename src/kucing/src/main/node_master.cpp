#include "../../include/kucing/hehe.hpp"
#include <ros/ros.h>
#include <iostream>
#include <stdio.h>
#include "mavros_msgs/SetMode.h"
#include "mavros_msgs/State.h"
#include "kucing/joystick_node.h"
#include "kucing/motor_flag.h"
#include "kucing/motor_joystick.h"

bool override_flag = false;
bool joystick_flag = false;

int left_analog, right_analog, r1_button, r2_button;

void joystick_cb (const kucing::joystick_node& joy);

ros::Publisher pub_motor_flag;
	
int main(int argc, char **argv)
{
	ros::init(argc, argv, "node_master");
	ros::NodeHandle nh;
	
	pub_motor_flag = nh.advertise<kucing::motor_flag>("/kkctbn/motor/flag", 8, true);
	ros::Subscriber joy_sub = nh.subscribe("/kkctbn/joystick/rc", 8, &joystick_cb);
	
	ROS_WARN("NC : node_controller.cpp active");
	
	while(ros::ok()){
		ros::spinOnce();
		if(r1_button > 0){
			joystick_flag = true;
			override_flag = false;
		}
		else if(r2_button > 0){
			joystick_flag = false;
			override_flag = true;
		}
		
		sleep(0.5);
	}
}

void joystick_cb (const kucing::joystick_node& joy){
	left_analog = joy.left_analog;
	right_analog = joy.right_analog;
	r1_button = joy.r1_button;
	r2_button = joy.r2_button;
}

