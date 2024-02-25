#include <climits>
#include <sstream>
#include "NodeInfo.h"

using namespace std;

NodeInfo::NodeInfo()
:vis(false),distance(INT_MAX),cost(INT_MAX),nodeTime("12:59 pm"),parent("nothing"),nodeVehicle(nullptr)
{
}
string NodeInfo::print()const
{
    ostringstream out;
    out << "vis "    << getVis()  << " dis "  << getDistance()
        << " cost "  << getCost() << "time " << nodeTime
        <<"  parent "<< getParent();

    return out.str();
}