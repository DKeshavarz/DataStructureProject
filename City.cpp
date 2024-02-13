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

    
    for(int i = 1 ; i < 10 && temp->readFile("BUS"+to_string(i)+".txt") ; ++i)
    {
        publicTransportation.push_back(temp);
        temp = new LinearVehicle;

    }
    delete temp;

}

void City::readFile()
{
    cout << "nigger " ;
}

City::~City()
{
    cout << getCityName() << "  destroyed in parent\n";

    for(auto item:publicTransportation)
    {
        if(item)
        {
            delete item;
        }

    }
}
