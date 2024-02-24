#include <climits>
#include <sstream>
#include "NodeInfo.h"

using namespace std;

NodeInfo::NodeInfo()
:vis(false),cost(INT_MAX),distance(INT_MAX),parent("nothing"),nodeVehicle(nullptr)
{

}
string NodeInfo::print()const
{
    ostringstream out;
    out << "vis " << getVis()      << " cost " << getCost() 
        << " dis "<< getDistance() << "parent "<< getParent();

    return out.str();
}