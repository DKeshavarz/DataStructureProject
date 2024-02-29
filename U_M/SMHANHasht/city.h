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

        virtual void setUpCity();              // wath to set all data member correctly
        virtual void setPublicTransportation();// find and create all Vehichle
        virtual void setNodesMap();            // concect node to all vechle : after setPublicTransportation
        virtual void readFile   ();            // create nodesMap -> connecet node with it's vehichle

        std::unordered_map <std::string , NodeInfo > calculateMin(const std::string&,const std::string&/*Time */  ,MeasurementMetric, Time);
        std::string findMinNode  (const std::unordered_map <std::string,NodeInfo>&,MeasurementMetric=DISTANCE);


        std::string getCityName()const{return cityName;}

        void printNodeVehicle();


        virtual ~City();

    private:
        const std::string cityName;
        std::vector<Vehicle*> publicTransportation;
        std::unordered_map<std::string,std::vector<Vehicle*>> nodesMap ;


};

#endif