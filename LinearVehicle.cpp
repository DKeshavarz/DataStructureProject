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
            table[neighbourNode].setCost(table[srcNode].getCost() + calculateCost(0));//why zero ??
            table[neighbourNode].setDistance(table[srcNode].getDistance() + 88888);//warning 
            table[neighbourNode].setParent(srcNode);
            table[neighbourNode].setNodeVehicle(this);
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