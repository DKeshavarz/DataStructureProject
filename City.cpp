#include <iostream>
#include <stdexcept>
#include <vector>
#include <fstream>
#include <unordered_map>
#include <stdexcept>
#include <climits>

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
void City::setNodesMap()
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

void City::calculateMin(const string& start,const string& end,MeasurementMetric metric)
{
    Vehicle* temp = new OnDemandVehicle();
    cout << temp->readFile("TAXI1.txt") << '\n';

    unordered_map <string , NodeInfo >dijkstraTable ;

    for(const auto& i : this->nodesMap)
        dijkstraTable[i.first];

    dijkstraTable[start].setCost(0);
    dijkstraTable[start].setDistance(0);

    for(size_t i {} ; i < 1 ; ++i)
    {
        string strMinNode {findMinNode(dijkstraTable, metric)};

         switch(metric)
        {
            case DISTANCE:
                temp->calculateMinDistance(dijkstraTable,strMinNode); break;
            case COST:
                temp->calculateMinCost(dijkstraTable,strMinNode); break;

            default :
                cerr << "City::calculateMin\n\n";
        }

        
        
    }

    
    for(const auto& i : dijkstraTable)
    {
        cout <<  i.first ;
        for(size_t j {(i.first).size()} ; j < 32 ; ++j)
            cout << " ";
        cout << (i.second).print() << '\n';
    }
        
    delete temp;
}

string City::findMinNode(const unordered_map <string,NodeInfo>& table,MeasurementMetric metric)
{
    int    minNodeCost = INT_MAX;
    string minNodeName {};

    int (NodeInfo::*function)()const = nullptr;

    switch(metric)
    {
        case DISTANCE:
            function = &NodeInfo::getDistance; break;
        case COST:
            function = &NodeInfo::getCost; break;

        default :
            function = nullptr;
            cerr << "error in City::findMinNode";
    }


    for(const auto& i : table)
        if(!(i.second).getVis() && ((i.second).*function)() <= minNodeCost)
            {
                minNodeName = i.first;
                minNodeCost = ((i.second).*function)();
            }
    
    return minNodeName;
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
