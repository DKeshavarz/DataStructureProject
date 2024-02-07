#include <iostream>
#include "Samhan.h"

using namespace std;

Samhan::Samhan():myCity{new Tehran}
{
    cout << "object creat\n" ;
}

int Samhan::run()
{
    cout << "object run\n" ;
    return 0;
}
Samhan::~Samhan()
{
    cout << "object destroid\n" ;

    clearCity();
}
void Samhan::clearCity()
{
    if(myCity)
        delete myCity;
}