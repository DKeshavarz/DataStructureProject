#include <iostream>
#include <stdexcept>
#include <vector>
#include <fstream>
#include <unordered_map>

#include "City.h"
#include "Vehicle.h"
#include "LinearVehicle.h"
#include "OnDemandVehicle.h"
#include "Taxi.h"
#include "NodeInfo.h"

using namespace std;

City::City(string inputCityName):cityName(inputCityName)
{
    cout << getCityName() << " create in parent\n";

   /*
    Vehicle* temp {new LinearVehicle};

    
    for(int i = 1 ; i < 10 && temp->readFile("METRO"+to_string(i)+".txt") ; ++i)
    {
        publicTransportation.push_back(temp);
        temp = new LinearVehicle;

    }
    delete temp;
    */ 

}

void City::readFile()
{
    ifstream file (cityName + ".txt");

    if(!file)
        cerr << "faild to open " << cityName << ".txt\n";
    else
        cout <<  "suc to open " << cityName << ".txt\n";

    string temp;
    while(getline(file,temp))
        nodesSet.insert(temp);

    file.close();
}

void City::calculateMinDistance(const string& start,const string& end)
{
    
    unordered_map <string , NodeInfo >dijkstraTable ;
    for(const auto& i : this->nodesSet)
        dijkstraTable[i];
    
    
        
}

City::~City()
{
    cout << getCityName() << "  destroyed in parent\n";
/*
    for(auto i : this->nodesSet)
        cout << i << ' ';
    cout << endl;
*/
    for(auto item:publicTransportation)
    {
        if(item)
        {
            delete item;
        }

    }
}
