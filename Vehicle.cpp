#include <iostream>
#include <fstream>
#include <string>

#include "Vehicle.h"

using namespace std;

Vehicle::Vehicle()
{
    cout << "Vehicle created\n";
}

bool Vehicle::readFile(const string& fileName) ///add execption
{
    ifstream myFile (fileName);

    if(!myFile.is_open())
    {
        cerr << "faild to open " << fileName << '\n' ;
        return false ; //faild to open
    }
    
    myFile >> this->speedPerKilometre >> this->costPerKilometre;
    
    string stationOne{};
    string stationTwo{};
    string distance  {};

    getline(myFile,distance);
    //this getline will not store any thing: just mean cin.ignore

    while(getline(myFile,stationOne))
    {
        getline(myFile,stationTwo);
        getline(myFile,distance);

        this->line.push_back(stationOne);

        addNewVertex(stationOne,stationTwo,stoi(distance));
    }
    this->line.push_back(stationTwo);
    addNewVertex(stationOne,stationTwo,stoi(distance));

    myFile.close();

    return true; //reading file was successfull
}

void Vehicle::calculateMinDistance(unordered_map<string,NodeInfo>& table, const std::string& srcNode )
{

    for(const auto& neighbourNode : this->neighbours[srcNode])
        if(!table[neighbourNode.nodeName].getVis() && table[neighbourNode.nodeName].getDistance() - table[srcNode].getDistance() >  + neighbourNode.distance)//what happend if min = int_max
        {
            table[neighbourNode.nodeName].setDistance(table[srcNode].getDistance() + neighbourNode.distance);
            table[neighbourNode.nodeName].setParent(srcNode);
        }

    cout << "\nin call\n";
    cout << '\n';
}

bool Vehicle::isOnVehchileRoad(const string& input)const
{
    return neighbours.count(input);
}
Vehicle::~Vehicle()
{
    
   /* 
    cout << "********************************\n";
    cout << "speed "<< this->speedPerKilometre << '\n'
         << "cost " << this->costPerKilometre  << '\n';

    cout << "vectorSize " << line.size() << " myline is :" ;
    for(auto i : this->line)
        cout << i << ",";
    cout << '\n';
    
    for(auto i:neighbours)
    {
        cout << i.first << ":" ;
        for(auto item: i.second)
            cout << item.nodeName << ' ';
        cout << '\n';
    }
    
    cout << "\nVehicle destrouyed\n";
    cout << "/*********************************\n";
    */
    
}


//**************************************************
//                      private
//**************************************************

void Vehicle::addNewVertex(const string& firstVertex ,const string& secondVertex ,const int& distance)
{
    neighbours[firstVertex]. insert(NodeNeighbour(secondVertex,distance));
    neighbours[secondVertex].insert(NodeNeighbour(firstVertex ,distance));
}