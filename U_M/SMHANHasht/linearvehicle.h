#include "vehicle.h"

#ifndef LINEARVECHICLE_H
#define LINEARVECHICLE_H

class LinearVehicle:public Vehicle
{
    public:
        LinearVehicle();

        virtual void calculateMinCost(std::unordered_map<std::string,NodeInfo>&,const std::string&) override;
        virtual ~LinearVehicle();
    private:

    protected:
        int calculateCost(int)override;

};
#endif
