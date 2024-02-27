#include <iostream>
#include "Samhan.h"

using namespace std;

Samhan::Samhan():myCity{new Tehran ("Tehran")}
{
    myCity->setUpCity();

    
    string start = "Shoush";
    string end   = "Ostad Mo'in";
    unordered_map <string , NodeInfo > result = myCity->calculateMin(start,end,TIME,Time("01:00 pm"));

    /*
    string parent = result[end].getParent();
    vector<string> vec = (result[end].getNodeVehicle())->backTrackPath(parent,end);
    
    for(const auto& item : vec)
            cout << item << " ";

    cout << '\n';
    */
    
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