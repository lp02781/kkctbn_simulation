#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <iostream>
#include <stdio.h>
#include "kucing/joystick_node.h"

using namespace std;

ros::Publisher pub_joystick_rc;
kucing::joystick_node joystick_rc;

void checkController();
void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);

int a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q;
float left_analog;
float right_analog;
int r1_button;
int r2_button;

int main(int argc, char** argv){
	ros::init(argc, argv, "remoteServer");
	ros::NodeHandle nh;
	
	pub_joystick_rc = nh.advertise<kucing::joystick_node>("/kkctbn/joystick/rc", 8, true);
	ros::Subscriber joy_sub = nh.subscribe<sensor_msgs::Joy>("joy", 8, &joyCallback);
	
	while( ros::ok() ){
		ros::spinOnce();	
		joystick_rc.left_analog = left_analog;	
		joystick_rc.right_analog = right_analog;
		joystick_rc.r1_button = r1_button;
		joystick_rc.r2_button = r2_button;
		pub_joystick_rc.publish(joystick_rc);
	}
}
 

void joyCallback(const sensor_msgs::Joy::ConstPtr& joy)	{	
	a = joy->axes[0];		//-1	<	right left 	<	0	<	left left	<	1
    b = joy->axes[1];		//-1	<	down left	<	0	<	up left		<	1
    c = joy->axes[2];		//-1 	< 	down right	<	0	<	up right	<	1
    d = joy->axes[3];		//-1 	< 	right right < 	0 	< 	left right 	< 	1
    e = joy->axes[4];		//-1 	< 	right 		< 	0 	< 	left 		< 	1
    f = joy->axes[5];		//-1 	< 	down		<	0	<	up			<	1
    g = joy->buttons[0];	//triangle
    h = joy->buttons[1];	//circle
    i = joy->buttons[2];	//cross
    j = joy->buttons[3];	//square
    k = joy->buttons[4];	//l1
    l = joy->buttons[5];	//r1
    m = joy->buttons[6];	//l2
    n = joy->buttons[7];	//r2
  
	left_analog = b;
	right_analog = d;
	r1_button = l;
	r2_button = n;
	
	//checkController();
}


void checkController(){	
	cout<<a<<"\t"<<b<<"\t"<<c<<"\t"<<d<<"\t"<<e<<"\t"<<f<<endl;
	cout<<g<<"\t"<<h<<"\t"<<i<<"\t"<<j<<"\t"<<k<<"\t"<<l<<endl;
	cout<<m<<"\t"<<n<<endl;
	cout<<endl<<endl<<endl;
}

