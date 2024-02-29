#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <algorithm>
#include <vector>
#include <queue>
#include <utility>

#include "Vehicle.h"

using namespace std;

Vehicle::Vehicle()
{
   fileName="nothing";
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

    myFile >> this->changeLineTime >> this->speedPerKilometre >> this->costPerKilometre;
    
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
        if(!table[neighbourNode.nodeName].getVis() && 
            table[neighbourNode.nodeName].getDistance() - table[srcNode].getDistance() >  neighbourNode.distance)//what happend if min = int_max
        {
            table[neighbourNode.nodeName].setDistance(table[srcNode].getDistance() + neighbourNode.distance); //all of this should be function
            table[neighbourNode.nodeName].setParent(srcNode);
            table[neighbourNode.nodeName].setNodeVehicle(this);//father pointer or what????????
            table[neighbourNode.nodeName].setCost(table[srcNode].getCost() + calculateCost(neighbourNode.distance));
        }
    }
        
}

void Vehicle::calculateMinTime(unordered_map<string,NodeInfo>& table, const std::string& srcNode )
{
    unordered_set   <string> visitedNodes;
    queue <pair<string,int>> searchQueue ;
    searchQueue.push({srcNode,table[srcNode].getDistance()});

    while(!searchQueue.empty())
    {
        pair<string,int> currentNode = searchQueue.front();
        searchQueue.pop();


        cout << currentNode.first << "->" << currentNode.second << '\n';
        if(!table[currentNode.first].getVis() && 
            table[currentNode.first].getTimeInt() > table[srcNode].getTimeInt() + calculateTime(currentNode.second,table[srcNode],table[currentNode.first]))
        {
            table[currentNode.first].setDistance(table[srcNode].getDistance() + currentNode.second); //all of this should be function
            table[currentNode.first].setParent(srcNode);
            table[currentNode.first].setNodeVehicle(this);//father pointer or what????????
            table[currentNode.first].setCost(table[srcNode].getCost() + calculateCost(currentNode.second));
            table[currentNode.first].setTime(Time(table[srcNode].getTimeInt() + calculateTime(currentNode.second,table[srcNode],table[currentNode.first])));
        }

        for(auto item :  neighbours[currentNode.first])
        {
            if(!visitedNodes.count(item.nodeName))
            {
                searchQueue.push({item.nodeName,currentNode.second+item.distance});
            }
        }
        visitedNodes.insert(currentNode.first);
    }

}

bool Vehicle::isOnVehchileRoad(const string& input)const
{
    return neighbours.count(input);
}
Vehicle::~Vehicle()
{
    /*
    cout << "change line" << changeLineTime << " speed " << speedPerKilometre << " cost " << costPerKilometre  << '\n';

    for(auto i : line)
        cout << i << ' ';
    cout << '\n';
    
    cout << fileName << string (15-fileName.size(),' ') << "destroid\n" ;
    */
}

vector<string> Vehicle::backTrackPath (string start,string end)const
{
    //validate they are in line
    vector<string> vec;

    for(size_t i {} ; i < line.size() ; ++i)
    {
        if(line.at(i) == start)
        {
            for(size_t j {i} ; j < line.size() && line.at(j) != end ; ++j)
            vec.push_back(line.at(j));
            vec.push_back(end);
            reverse(vec.begin(), vec.end());
            break;
        }
        else if(line.at(i) == end  )
        {
            for(size_t j {i} ; j < line.size() && line.at(j) != start ; ++j)
                vec.push_back(line.at(j));
            vec.push_back(start);
            break;
        }
    }
    return vec;

}

int Vehicle::calculateTime(int distance,NodeInfo& startNode,NodeInfo& endNode)
{
    int lineChangeTime {};
    if(startNode.getNodeVehicle() != endNode.getNodeVehicle())
    {
        lineChangeTime += (startNode.getNodeVehicle() == nullptr) ? 0 : startNode.getNodeVehicle()->getChangeLineTime();
        lineChangeTime += (  endNode.getNodeVehicle() == nullptr) ? 0 :   endNode.getNodeVehicle()->getChangeLineTime();
    }
    return this->speedPerKilometre * distance + lineChangeTime;
}
//**************************************************
//                      private
//**************************************************

void Vehicle::addNewVertex(const string& firstVertex ,const string& secondVertex ,const int& distance)
{
    neighbours[firstVertex]. insert(NodeNeighbour(secondVertex,distance));
    neighbours[secondVertex].insert(NodeNeighbour(firstVertex ,distance));
}