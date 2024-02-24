#include <iostream>
#include <fstream>
#include <string>

#include "Vehicle.h"

using namespace std;

Vehicle::Vehicle()
{

}

bool Vehicle::readFile(const string& fileName) //add execption
{
    ifstream myFile (fileName);

    if(!myFile.is_open())
    {
        cerr << "faild to open " << fileName << '\n' ;
        return false ; //faild to open
    }
    
    //************for debug**********
    this->fileName = fileName;
    //*******************************

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
    {
        if(!table[neighbourNode.nodeName].getVis() && table[neighbourNode.nodeName].getDistance() - table[srcNode].getDistance() >  + neighbourNode.distance)//what happend if min = int_max
        {
            table[neighbourNode.nodeName].setDistance(table[srcNode].getDistance() + neighbourNode.distance); //all of this should be function
            table[neighbourNode.nodeName].setParent(srcNode);
            table[neighbourNode.nodeName].setNodeVehicle(this);//father pointer or what????????
            table[neighbourNode.nodeName].setCost(table[srcNode].getCost() + calculateCost(neighbourNode.distance));
        }
    }
        
}

bool Vehicle::isOnVehchileRoad(const string& input)const
{
    return neighbours.count(input);
}
Vehicle::~Vehicle()
{
    //cout << fileName << string (15-fileName.size(),' ') << "destroid\n" ;
}


//**************************************************
//                      private
//**************************************************

void Vehicle::addNewVertex(const string& firstVertex ,const string& secondVertex ,const int& distance)
{
    neighbours[firstVertex]. insert(NodeNeighbour(secondVertex,distance));
    neighbours[secondVertex].insert(NodeNeighbour(firstVertex ,distance));
}