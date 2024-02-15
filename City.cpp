#include <iostream>
#include <stdexcept>
#include <vector>
#include <fstream>
#include <unordered_map>
#include <stdexcept>

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

   
    //create 
    

}

void City::setUpCity()
{
    //setPublicTransportation()
    //setNodesMap()
}
void City::setPublicTransportation()
{
    //new every file
}
void setNodesMap()
{
    //
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
        nodesMap[temp];

    file.close();
}

void City::calculateMinDistance(const string& start,const string& end)
{
    
    unordered_map <string , NodeInfo >dijkstraTable ;
    for(const auto& i : this->nodesMap)
        dijkstraTable[i.first];

    dijkstraTable[start].setCost(0);
    dijkstraTable[start].setDistance(0);

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
