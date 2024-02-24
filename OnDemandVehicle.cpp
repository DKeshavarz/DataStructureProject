#include <iostream>

#include "OnDemandVehicle.h"

using namespace std;

OnDemandVehicle::OnDemandVehicle()
{

}

void OnDemandVehicle::calculateMinCost(unordered_map<string,NodeInfo>& table,const string& srcNode) 
{
    for(const auto& neighbourNode : getNeighboursSet(srcNode))
        if(!table[neighbourNode.nodeName].getVis() && table[neighbourNode.nodeName].getCost() - table[srcNode].getCost() >  + calculateCost(neighbourNode.distance))//what happend if min = int_max
        {
            table[neighbourNode.nodeName].setCost(table[srcNode].getCost() + calculateCost(neighbourNode.distance));
            table[neighbourNode.nodeName].setDistance(table[srcNode].getDistance() + neighbourNode.distance);
            table[neighbourNode.nodeName].setParent(srcNode);
        }
    
}

OnDemandVehicle::~OnDemandVehicle()
{
    
}

//*****************protected
int OnDemandVehicle::calculateCost(int km)
{
    return km*getCostPerKilometre();
}