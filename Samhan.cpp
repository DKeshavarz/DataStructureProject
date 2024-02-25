#include <iostream>
#include "Samhan.h"

using namespace std;

Samhan::Samhan():myCity{new Tehran ("Tehran")}
{
    myCity->setUpCity();
    string start = "Mirdamad";
    string end   = "Rahahan";
    unordered_map <string , NodeInfo > result = myCity->calculateMin(start,end,COST,Time("01:12 pm"));

    string parent = result[end].getParent();
    vector<string> vec = (result[end].getNodeVehicle())->backTrackPath(parent,end);
    
    for(const auto item : vec)
        cout << item << " ";

    cout << '\n';

}

int Samhan::run()
{
    
    return 0;
}
Samhan::~Samhan()
{

    clearCity();
}
void Samhan::clearCity()
{
    if(myCity)
        delete myCity;
}