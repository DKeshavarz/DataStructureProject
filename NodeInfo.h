#include <string>

#ifndef NODEINFO_H
#define NODEINFO_H

class Vehicle;

class NodeInfo 
{
    public:
        NodeInfo();

        void setVis        (const bool        input) {this->vis         = input;} 
        void setCost       (const int         input) {this->cost        = input;}//tip:get by refrence of what??
        void setDistance   (const int         input) {this->distance    = input;}
        void setParent     (const std::string input) {this->parent      = input;}   
        void setNodeVehicle(Vehicle* const    input) {this->nodeVehicle = input;}

        bool        getVis        ()const {return this->vis     ;}
        int         getCost       ()const {return this->cost    ;}
        int         getDistance   ()const {return this->distance;}//tip:pass by refrence or what???
        std::string getParent     ()const {return this->parent  ;}
        Vehicle*   getNodeVehicle()const {return this->nodeVehicle;}

        std::string print()const;
    private:
        bool vis;
        int  cost;
        int  distance;

        std::string parent;
        Vehicle* nodeVehicle;//todo: better if ptr to const
        //tip : should be const???
};

#endif