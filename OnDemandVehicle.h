#include "Vehicle.h"

#ifndef ONDEMANDVEHICLE_H
#define ONDEMANDVEHICLE_H

class OnDemandVehicle : public Vehicle
{
    public:
    OnDemandVehicle();

    virtual void calculateMinCost(std::unordered_map<std::string,NodeInfo>&,const std::string&) override;
    virtual ~OnDemandVehicle();

    private:

    protected:
        int calculateCost(int)override;

};

#endif