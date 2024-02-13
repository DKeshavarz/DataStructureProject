#include <string>
#include <vector>
#include "Vehicle.h"

#ifndef CITY_H
#define CITY_H

class City
{
    public:
        City(std::string);

        std::string getCityName()const{return cityName;}


        virtual void readFile();// danny : useless function??


        virtual ~City();

    private:
        const std::string cityName;
        std::vector<Vehicle*> publicTransportation;
        
};

#endif