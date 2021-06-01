#include "ros/ros.h"
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <vector>
#include <sstream>
#include <unistd.h>

using namespace std;

int number_camera = 0;

#define MAX_THROTTLE 1800//1750
#define MIN_THROTTLE 1400

#define MAX_STEERING 1900
#define MIN_STEERING 1100

#define STEERING 0
#define THROTTLE 2
