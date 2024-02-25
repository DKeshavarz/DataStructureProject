#include <climits>
#include <sstream>
#include "NodeInfo.h"

using namespace std;

NodeInfo::NodeInfo()
:vis(false),distance(INT_MAX),cost(INT_MAX),nodeTime("12:00 am"),parent("nothing"),nodeVehicle(nullptr)
{
    //nodeTime = nodeTime - nodeTime + Time("01:00 am");
}
string NodeInfo::print()const
{
    ostringstream out;
    out << "vis "    << getVis()  << " dis "  << getDistance()
        << " cost "  << getCost() << "time " << nodeTime
        <<"  parent "<< getParent();

    return out.str();
}