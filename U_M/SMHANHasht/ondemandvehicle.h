#include "vehicle.h"

#ifndef ONDEMANDVEHICLE_H
#define ONDEMANDVEHICLE_H

class OnDemandVehicle : public Vehicle
{
    public:
    
    OnDemandVehicle();
    virtual ~OnDemandVehicle();

    private:

    protected:
        int calculateCost(int)override;

};

#endif
