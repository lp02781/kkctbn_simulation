#include "../../include/kucing/hehe.hpp"
#include <ros/ros.h>
#include <iostream>
#include <stdio.h>
#include "mavros_msgs/SetMode.h"
#include "mavros_msgs/State.h"
#include <mavros_msgs/CommandBool.h>
#include "kucing/joystick_node.h"
#include "kucing/motor_flag.h"
#include "kucing/override_motor.h"

bool override_flag = true;
bool auto_flag = false;

int left_analog, right_analog;
float r1_button, r2_button;

void joystick_cb (const kucing::joystick_node& joy);
bool changeFlightModeDebug(string fm);
bool changeFlightMode(const char* flight_mode);

ros::Publisher pub_motor_flag;
ros::Publisher pub_motor_rc;

kucing::motor_flag flag;
kucing::override_motor motor;
	
ros::ServiceClient client_set_flightmode;
ros::ServiceClient arming_client;

mavros_msgs::State current_state;
mavros_msgs::CommandBool arm_cmd;

ros::Time last_request;

int main(int argc, char **argv)
{
	ros::init(argc, argv, "node_master");
	ros::NodeHandle nh;
	
	pub_motor_flag = nh.advertise<kucing::motor_flag>("/kkctbn/motor/flag", 8, true);
	pub_motor_rc = nh.advertise<kucing::override_motor>("/kkctbn/motor/rc", 8);
	ros::Subscriber joy_sub = nh.subscribe("/kkctbn/joystick/rc", 8, &joystick_cb);
	client_set_flightmode = nh.serviceClient<mavros_msgs::SetMode>("/mavros/set_mode");
	arming_client = nh.serviceClient<mavros_msgs::CommandBool>("mavros/cmd/arming");

	last_request = ros::Time::now();
	
	ROS_WARN("NC : node_controller.cpp active");
	
	changeFlightModeDebug("MANUAL");
	sleep(1);
		
	while(ros::ok()){
		ros::spinOnce();
		
		if(r1_button > 0 && auto_flag == false){
			auto_flag == true;
		}
		else if(r2_button > 0 && auto_flag == true){
			auto_flag == false;
		}
		
		if(auto_flag==false){
			motor.throttle = MIDDLE_PWM+left_analog*(MAX_THROTTLE-MIDDLE_PWM);
			motor.steering = MIDDLE_PWM+right_analog*(MAX_STEERING-MIDDLE_PWM);
		}
		
		else if(auto_flag==true){
			cout<<"auto"<<endl;
		}
		
		flag.override_status = override_flag;
		pub_motor_flag.publish(flag);
		pub_motor_rc.publish(motor);
		sleep(0.5);
	}
}

bool changeFlightMode(const char* flight_mode){
	mavros_msgs::SetMode flightmode;
	flightmode.request.base_mode 	= 0;				
	flightmode.request.custom_mode 	= flight_mode;		
	bool success = client_set_flightmode.call(flightmode);

	if(success){
		return true;
	}
	else {
		return  false;
	}
	
	if( !current_state.armed && (ros::Time::now() - last_request > ros::Duration(5.0))){
		if( arming_client.call(arm_cmd) && arm_cmd.response.success){
			ROS_INFO("Vehicle armed");
        }
		last_request = ros::Time::now();
	}
}

bool changeFlightModeDebug(string fm){
	changeFlightMode(fm.c_str());
}

void joystick_cb (const kucing::joystick_node& joy){
	left_analog = joy.left_analog; //-1	<	down left	<	0	<	up left		<	1
	right_analog = joy.right_analog; //-1 	< 	right right < 	0 	< 	left right 	< 	1
	r1_button = joy.r1_button;
	r2_button = joy.r2_button;
}

