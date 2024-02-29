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
        int calculateCost(int)override;

};
#endif
