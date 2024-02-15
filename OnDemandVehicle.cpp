#include <iostream>

#include "OnDemandVehicle.h"

using namespace std;

OnDemandVehicle::OnDemandVehicle()
{
    cout << "OnDemandVehicle creat \n";
}

void OnDemandVehicle::calculateMinCost(unordered_map<string,NodeInfo>& table,const string& srcNode) 
{
    /*const unordered_map <string , unordered_set< NodeNeighbour , NodeNeighbour::myHash> >& myMap = getNeighbours();
    for(const auto& neighbourNode : myMap[srcNode])
        if(!table[neighbourNode.nodeName].getVis() && table[neighbourNode.nodeName].getCost() - table[srcNode].getCost() >  + calculateCost(neighbourNode.distance))//what happend if min = int_max
        {
            table[neighbourNode.nodeName].setCost(table[srcNode].getCost() + calculateCost(neighbourNode.distance));
            table[neighbourNode.nodeName].setParent(srcNode);
        }
    */
}

OnDemandVehicle::~OnDemandVehicle()
{
    cout << "OnDemandVehicle delete \n";
}

//*****************protected
int OnDemandVehicle::calculateCost(int km)
{
    return km*getCostPerKilometre();
}