#include <iostream>
#include "LinearVehicle.h"

using namespace std;

LinearVehicle::LinearVehicle()
{
}
void LinearVehicle::calculateMinCost(unordered_map<string,NodeInfo>& table,const string& srcNode) 
{
    for(const auto& neighbourNode:getLine())
        if(!table[neighbourNode].getVis() && table[neighbourNode].getCost() > table[srcNode].getCost() + calculateCost(0))
        {
            table[neighbourNode].setCost(table[srcNode].getCost() + calculateCost(0));
            table[neighbourNode].setParent(srcNode);
        }
       
}
LinearVehicle::~LinearVehicle()
{
}


//*************************protected
int LinearVehicle::calculateCost(int km)
{
    return getCostPerKilometre();
}