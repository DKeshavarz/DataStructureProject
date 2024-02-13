#include "Vehicle.h"

#ifndef ONDEMANDVEHICLE_H
#define ONDEMANDVEHICLE_H

class OnDemandVehicle : public Vehicle
{
    public:
    OnDemandVehicle();

    virtual void calculateMinDistance();
    
    virtual ~OnDemandVehicle();

    private:

};

#endif