#include "Vehicle.h"

#ifndef LINEARVECHICLE_H
#define LINEARVECHICLE_H

class LinearVehicle:public Vehicle
{
    public:
        LinearVehicle();

        virtual void calculateMinDistance();

        virtual ~LinearVehicle();
    private:

};
#endif