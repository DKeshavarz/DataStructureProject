#include <string>
#include <vector>
#include <unordered_set>

#include "Vehicle.h"
#include "NodeInfo.h"

#ifndef CITY_H
#define CITY_H

class City
{
    public:
        City(std::string);


        virtual void readFile();//danny : useless function??
        
        virtual void calculateMinDistance(const std::string&,const std::string&);

        std::string getCityName()const{return cityName;}

        virtual ~City();

    private:
        const std::string cityName;
        std::vector<Vehicle*> publicTransportation;
        std::unordered_set<std::string> nodesSet ;
        
};

#endif