#include <climits>
#include <sstream>
#include <iomanip>
#include "NodeInfo.h"

using namespace std;

NodeInfo::NodeInfo()
:vis(false),distance(INT_MAX),cost(INT_MAX),nodeTime(INT_MAX),parent("nothing"),nodeVehicle(nullptr)
{
   
}
string NodeInfo::print()const
{
    ostringstream out;
    out << "vis: "   << setw(4)  << left << getVis()  << "dis: " << setw(10) << getDistance()
        << "cost: "  << setw(10) <<         getCost() << "time: "<< nodeTime
        <<"    parent: "<< getParent();

    return out.str();
}