#include <iostream>
#include <fstream>
#include <string>

#include "Vehicle.h"

using namespace std;

Vehicle::Vehicle()
{
    cout << "Vehicle created\n";
}

bool Vehicle::readFile(const string& fileName)
{
    ifstream myFile (fileName);

    if(!myFile.is_open())
    {
        cerr << "faild to open " << fileName << '\n' ;
        return false ; //faild to open
    }
    
    myFile >> this->speedPerKilometre >> this->costPerkilometre;
    
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
void Vehicle::calculateMinDistance()
{
    
}
Vehicle::~Vehicle()
{
    cout << "/*********************************/\n";
    cout << "speed "<< this->speedPerKilometre << '\n'
         << "cost " << this->costPerkilometre  << '\n';

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
    cout << "/*********************************/\n";
}


//**************************************************
//                      private
//**************************************************

void Vehicle::addNewVertex(const string& firstVertex ,const string& secondVertex ,const int& distance)
{
    neighbours[firstVertex]. insert(NodeNeighbour(secondVertex,distance));
    neighbours[secondVertex].insert(NodeNeighbour(firstVertex ,distance));
}