#include <iostream>
#include <algorithm>

#include "linearvehicle.h"

using namespace std;

LinearVehicle::LinearVehicle()
{
}
void LinearVehicle::calculateMinCost(unordered_map<string,NodeInfo>& table,const string& srcNode)
{
    auto targetPtr     = find(getLine().begin(),getLine().end(),srcNode);
    size_t targetIndex = distance(getLine().begin(),targetPtr);
    cout << "targetIndex for" << srcNode << " is:" << targetIndex << '\n';

    const vector<string>& vec{getLine()};

    for(size_t i = targetIndex+1 ; i < vec.size() ; ++i)
        if(!table[vec.at(i)].getVis() && table[vec.at(i)].getCost() > table[srcNode].getCost() + calculateCost(0))
        {
            table[vec.at(i)].setCost(table[srcNode].getCost() + calculateCost(0));//why zero ??
            table[vec.at(i)].setDistance(table[srcNode].getDistance() + 88888);//warning
            table[vec.at(i)].setParent(srcNode);
            table[vec.at(i)].setNodeVehicle(this);
        }

    for(long int i = targetIndex-1 ; i > -1 ; --i)
        if(!table[vec.at(i)].getVis() && table[vec.at(i)].getCost() > table[srcNode].getCost() + calculateCost(0))
        {
            table[vec.at(i)].setCost(table[srcNode].getCost() + calculateCost(0));//why zero ??
            table[vec.at(i)].setDistance(table[srcNode].getDistance() + 88888);//warning
            table[vec.at(i)].setParent(srcNode);
            table[vec.at(i)].setNodeVehicle(this);
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
