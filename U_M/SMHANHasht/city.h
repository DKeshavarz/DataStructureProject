#include <string>
#include <vector>
#include <unordered_set>

#include "vehicle.h"
#include "nodeinfo.h"

#ifndef CITY_H
#define CITY_H

class City
{
    public:

        City(std::string);
        virtual ~City();

        virtual void setUpCity();              //set all data member correctly
        virtual void setPublicTransportation();//find and create all Vehichles
        virtual void setNodesMap();            //concect node to all it's Vehichles
        virtual void readFile   ();            //read all city node from file

        std::unordered_map <std::string , NodeInfo > calculateMin(const std::string&,const std::string&,MeasurementMetric, Time);

        std::string getCityName()const{return cityName;}

        void printNodeVehicle();

    private:

        const std::string cityName;
        std::vector<Vehicle*> publicTransportation;
        std::unordered_map<std::string,std::vector<Vehicle*>> nodesMap ;
};

#endif
