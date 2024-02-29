#include <iostream>
#include <algorithm>

#include "linearvehicle.h"

using namespace std;

LinearVehicle::LinearVehicle()
{
}

LinearVehicle::~LinearVehicle()
{
}


//*************************protected
int LinearVehicle::calculateCost(int km)
{
    return getCostPerKilometre();
}
