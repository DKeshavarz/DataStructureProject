#include <iostream>
#include <stdexcept>
#include <vector>

#include "City.h"
#include "Vehicle.h"
#include "LinearVehicle.h"
#include "OnDemandVehicle.h"
#include "Taxi.h"

using namespace std;

City::City(string inputCityName):cityName(inputCityName)
{
    cout << getCityName() << " create in parent\n";



    Vehicle* temp {new LinearVehicle};
    publicTransportation.push_back(temp);

    Vehicle* temp1 {new Taxi};
    publicTransportation.push_back(temp1);

}

void City::readFile()
{
    cout << "nigger " ;
}

City::~City()
{
    cout << getCityName() << "  destroyed in parent\n";

    for(auto item:publicTransportation)
        if(item)
            delete item;
}
