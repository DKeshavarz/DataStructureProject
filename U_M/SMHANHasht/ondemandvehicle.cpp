#include <iostream>

#include "ondemandvehicle.h"

using namespace std;

OnDemandVehicle::OnDemandVehicle()
{

}
OnDemandVehicle::~OnDemandVehicle()
{

}

//*****************protected
int OnDemandVehicle::calculateCost(int km,Time currentTime)
{
    float trafic = (isOnTrafic(currentTime)? 1.5 :  1);
    //bug on float .......... 3.6
    return km*getCostPerKilometre()*trafic;
}
int OnDemandVehicle::calculateTime(int distance,Time currentTime)
{
    float trafic = (isOnTrafic(currentTime)? 2 :  1);
    return Vehicle::calculateTime(distance,currentTime)*trafic;
}
bool OnDemandVehicle::isOnTrafic (Time current)
{
    return (Time("06:00 pm") < current && current < Time("08:00 pm"));
}
