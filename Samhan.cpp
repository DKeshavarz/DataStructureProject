#include <iostream>
#include "Samhan.h"

using namespace std;

Samhan::Samhan():myCity{new Tehran ("Tehran")}
{
    myCity->setUpCity();
    myCity->calculateMin("Mirdamad","Rahahan",DISTANCE);
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