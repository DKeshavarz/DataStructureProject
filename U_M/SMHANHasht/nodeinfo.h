#include <string>
#include "timee.h"

#ifndef NODEINFO_H
#define NODEINFO_H

class Vehicle;

class NodeInfo
{
    public:
        NodeInfo();

        void setVis         (const bool        input) {this->vis              = input;}
        void setIntersection(const bool        input) {this->isOnIntersection = input;}
        void setDistance    (const int         input) {this->distance         = input;}
        void setCost        (const int         input) {this->cost             = input;}//tip:get by refrence of what??
        void setTime        (const Time        input) {this->nodeTime         = input;}
        void setParent      (const std::string input) {this->parent           = input;}
        void setNodeVehicle (Vehicle* const    input) {this->nodeVehicle      = input;}

        bool        getVis         ()const {return this->vis             ;}
        bool        getIntersection()const {return this->isOnIntersection;}
        int         getDistance    ()const {return this->distance        ;}//tip:pass by refrence or what???
        int         getCost        ()const {return this->cost            ;}
        int         getTimeInt     ()const {return (int)(this->nodeTime) ;}
        Time        getTime        ()const {return this->nodeTime        ;}
        std::string getParent      ()const {return this->parent          ;}
        Vehicle*    getNodeVehicle ()const {return this->nodeVehicle     ;}

        std::string print()const;
    private:
        bool vis;
        bool isOnIntersection;

        int  distance;
        int  cost;
        Time nodeTime ;

        std::string parent;
        Vehicle* nodeVehicle;//todo: better if ptr to const
        //tip : should be const???
};

#endif
