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
}

void City::setUpCity()
{
    readFile();

    setPublicTransportation();

    setNodesMap();
}
void City::setPublicTransportation()
{
    class Vehicle * LinearVehicleBus[3];
    class Vehicle * LinearVehicleMetro[4];
    class Vehicle * OnDemandVehicleTaxi[4];

    for (unsigned int i = 0; i < sizeof (LinearVehicleBus) / sizeof (class vehicle *); i++)
    {
        LinearVehicleBus[i] = new LinearVehicle;

        publicTransportation.push_back (LinearVehicleBus[i]);
    }
    for (unsigned int i = 0; i < sizeof (LinearVehicleMetro) / sizeof (class vehicle *); i++)
    {
        LinearVehicleMetro[i] = new LinearVehicle;

        publicTransportation.push_back (LinearVehicleMetro[i]);
    }
    for (unsigned int i = 0; i < sizeof (OnDemandVehicleTaxi) / sizeof (class vehicle *); i++)
    {
        OnDemandVehicleTaxi[i] = new OnDemandVehicle;

        publicTransportation.push_back (OnDemandVehicleTaxi[i]);
    }

    publicTransportation.at (0)->readFile ("BUS1.txt");
    publicTransportation.at (1)->readFile ("BUS2.txt");
    publicTransportation.at (2)->readFile ("BUS3.txt");

    publicTransportation.at (3)->readFile ("METRO1.txt");
    publicTransportation.at (4)->readFile ("METRO2.txt");
    publicTransportation.at (5)->readFile ("METRO3.txt");
    publicTransportation.at (6)->readFile ("METRO4.txt");

    publicTransportation.at (7)->readFile ("TAXI1.txt");
    publicTransportation.at (8)->readFile ("TAXI2.txt");
    publicTransportation.at (9)->readFile ("TAXI3.txt");
    publicTransportation.at (10)->readFile ("TAXI4.txt");
}
void City::setNodesMap()//todo : pass by refrence not copy
{
    //cout << "fuck node map size is:" << this->nodesMap.size();
    for (auto & temp : this->nodesMap)
    {
        //cout << "1\n";
        for (unsigned int i = 0; i < this->publicTransportation.size (); i++)
        {
            //cout << "2\n";
            if (publicTransportation.at (i)->isOnVehchileRoad (temp.first))
            {
                //cout << "inser\n";
                temp.second.push_back (publicTransportation.at (i));
            }
        }
    }
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
    unordered_map <string , NodeInfo >dijkstraTable ;

    for(const auto& i : this->nodesMap)
        dijkstraTable[i.first];

    dijkstraTable[start].setCost(0);
    dijkstraTable[start].setDistance(0);

    for(size_t i {} ; i < dijkstraTable.size() ; ++i)
    {
        
        string strMinNode {findMinNode(dijkstraTable, metric)};
        
        const auto& vec {nodesMap[strMinNode]} ;
        //cout << "num : " << i << "  min node:" << strMinNode << "  vec size" << vec.size() << '\n';
        for(const auto& i : vec)
        {
            switch(metric)
            {
                case DISTANCE:
                    i->calculateMinDistance(dijkstraTable,strMinNode); break;
                case COST:
                    i->calculateMinCost(dijkstraTable,strMinNode); break;

                default :
                    cerr << "City::calculateMin\n\n";
            }
        }

        dijkstraTable[strMinNode].setVis(true);
    }

    int index {1};
    for(const auto& i : dijkstraTable)
    {
        cout << index++ << "   " ; 
        cout <<  i.first ;
        for(size_t j {(i.first).size()} ; j < 32 ; ++j)
            cout << " ";
        cout << (i.second).print() << '\n';
    }
        
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
