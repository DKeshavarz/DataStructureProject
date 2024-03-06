#include "vehicle.h"

#ifndef LINEARVECHICLE_H
#define LINEARVECHICLE_H

class LinearVehicle:public Vehicle
{
    public:
        LinearVehicle();
        virtual ~LinearVehicle();
    private:

    protected:
        virtual int calculateCost(int,Time)override;
        virtual int calculateTime(int,Time)override;
        virtual bool isOnTrafic  (Time)    override;
};
#endif
