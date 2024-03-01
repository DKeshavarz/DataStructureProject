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
int OnDemandVehicle::calculateCost(int km)
{
    return km*getCostPerKilometre();
}
