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
int LinearVehicle::calculateCost(int km,Time currentTime)
{
    return getCostPerKilometre();
}
int LinearVehicle::calculateTime(int distance,Time currentTime)
{
    float trafic = 1;
    if(isOnTrafic(currentTime))
    {
        if(getVehicleName().size() > 0 && getVehicleName().at(0) == 'M')
            trafic = 3;//for metro
        else
            trafic = 2;//for bus
    }

    return Vehicle::calculateTime(distance,currentTime)*trafic;
}
bool LinearVehicle::isOnTrafic (Time current)
{
    return (Time("06:00 am") < current && current < Time("08:00 am"));
}
