#include <iostream>

#include "Tehran.h"

using namespace std;

Tehran::Tehran(string inputCityName) : City(inputCityName) 
{

    cout << this->getCityName() << " create\n";
} 
Tehran::~Tehran()
{
    cout << this->getCityName() << " destroyed \n";
}