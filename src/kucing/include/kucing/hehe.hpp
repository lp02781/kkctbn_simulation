#include "ros/ros.h"
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <vector>
#include <sstream>
#include <unistd.h>

using namespace std;

int number_camera = 0;

#define MAX_THROTTLE 1900//1750
#define MIN_THROTTLE 1100

#define MAX_STEERING 1900
#define MIN_STEERING 1100

#define MIDDLE_PWM 1500

#define STEERING 0
#define THROTTLE 2
