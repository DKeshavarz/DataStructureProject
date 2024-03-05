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
        virtual int calculateCost(int,Time)override;
        virtual int calculateTime(int,Time)override;
        virtual bool isOnTrafic  (Time)    override;

};

#endif
