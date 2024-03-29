#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <algorithm>
#include <vector>
#include <queue>
#include <utility>

#include "vehicle.h"

using namespace std;

Vehicle::Vehicle() :fileName {"nothing"}
{}

bool Vehicle::readFile(const string& fileName) //add execption
{
    ifstream myFile (fileName);

    if(!myFile.is_open())
    {
        cerr << "faild to open " << fileName << '\n' ;
        return false ; //faild to open
    }

    this->fileName = fileName;
    myFile >> this->changeLineTime >> this->speedPerKilometre >> this->costPerKilometre;

    string stationOne{};
    string stationTwo{};
    string distance  {};

    //this getline will not store any thing: just mean cin.ignore
    getline(myFile,distance);

    //read two stations and distance between them
    while(getline(myFile,stationOne))
    {
        getline(myFile,stationTwo);
        getline(myFile,distance);

        this->line.push_back(stationOne);
        addNewVertex(stationOne,stationTwo,stoi(distance));
    }
    //last station miss while reading so we need to check it
    this->line.push_back(stationTwo);
    addNewVertex(stationOne,stationTwo,stoi(distance));

    myFile.close();
    return true; //reading file was successfull
}

void Vehicle::distanceFromSrc(unordered_set<NodeNeighbour,NodeNeighbour::myHash>& distanceSet,const string& srcNode)
{
    unordered_set<string> visitedNodes;
    queue <NodeNeighbour> searchQueue ;
    searchQueue.push({srcNode,0});

    while(!searchQueue.empty())
    {
        NodeNeighbour currentNode = searchQueue.front();
        searchQueue.pop();

        for(const auto& item :  neighbours[currentNode.nodeName])
            if(!visitedNodes.count(item.nodeName))
                searchQueue.push({item.nodeName,currentNode.distance+item.distance});
            
        visitedNodes.insert(currentNode.nodeName);
        distanceSet.insert (currentNode);
    }
}

void Vehicle::calculateMinTime(unordered_map<string,NodeInfo>& table,priority_queue<NodeNeighbour,vector<NodeNeighbour>
,greater<NodeNeighbour>>&minHeap, const std::string& srcNode ,Time currentTime)
{
    unordered_set<NodeNeighbour,NodeNeighbour::myHash> distanceSet;
    distanceFromSrc(distanceSet,srcNode);


    for(const auto &currentNode : distanceSet)
    {

        if(!table[currentNode.nodeName].getVis() &&
            table[currentNode.nodeName].getTimeInt() > table[srcNode].getTimeInt() + calculateTime(currentNode.distance,currentTime))
        {
            modifyDijkstraTable(table,srcNode,currentNode.nodeName,currentNode.distance,currentTime);
            if(table[currentNode.nodeName].getIntersection())
                minHeap.push({currentNode.nodeName,table[srcNode].getTimeInt() + calculateTime(currentNode.distance,currentTime)});
        }
    }
}

void Vehicle::calculateMinCost (unordered_map<string,NodeInfo>& table,priority_queue<NodeNeighbour,vector<NodeNeighbour>,
greater<NodeNeighbour>>&minHeap, const std::string& srcNode,Time currentTime)
{
    unordered_set<NodeNeighbour,NodeNeighbour::myHash> distanceSet;
    distanceFromSrc(distanceSet,srcNode);
    
    for(const auto &currentNode : distanceSet)
        if(!table[currentNode.nodeName].getVis() &&
            table[currentNode.nodeName].getCost() > table[srcNode].getCost() + calculateCost(currentNode.distance,currentTime))
        {
            modifyDijkstraTable(table,srcNode,currentNode.nodeName,currentNode.distance,currentTime);
            if(table[currentNode.nodeName].getIntersection())
                minHeap.push({currentNode.nodeName,table[srcNode].getCost() + calculateCost(currentNode.distance,currentTime)});
        }    
}

void Vehicle::calculateMinDistance(unordered_map<string,NodeInfo>& table,priority_queue<NodeNeighbour,vector<NodeNeighbour>
,greater<NodeNeighbour>>&minHeap, const std::string& srcNode,Time currentTime )
{
    unordered_set<NodeNeighbour,NodeNeighbour::myHash> distanceSet;
    distanceFromSrc(distanceSet,srcNode);

    for(const auto &currentNode : distanceSet)
        if(!table[currentNode.nodeName].getVis() &&
            table[currentNode.nodeName].getDistance() > table[srcNode].getDistance() + currentNode.distance)
        {
            modifyDijkstraTable(table,srcNode,currentNode.nodeName,currentNode.distance,currentTime);
            if(table[currentNode.nodeName].getIntersection())
                minHeap.push({currentNode.nodeName,table[srcNode].getDistance() + currentNode.distance});
        }
}
bool Vehicle::isOnVehchileRoad(const string& input)const
{
    return neighbours.count(input);
}

Vehicle::~Vehicle()
{}

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
        else if(line.at(i) == end)
        {
            for(size_t j {i} ; j < line.size() && line.at(j) != start ; ++j)
                vec.push_back(line.at(j));
            vec.push_back(start);
            break;
        }
    }
    return vec;

}
bool Vehicle::isOnTrafic(Time current)
{
    cerr << "wrong isOnTrafic\n";
    return false;
}

int Vehicle::calculateTime(int distance,Time currentTime)
{
    return this->speedPerKilometre * distance + this->changeLineTime * 2;
}

//***************************************************************************************************
//                                       private function
//***************************************************************************************************

//warning : what about undirected graph
void Vehicle::addNewVertex(const string& firstVertex ,const string& secondVertex ,const int& distance)
{
    neighbours[firstVertex]. insert(NodeNeighbour(secondVertex,distance));
    neighbours[secondVertex].insert(NodeNeighbour(firstVertex ,distance));
}

void Vehicle::modifyDijkstraTable(unordered_map<string,NodeInfo>& table,const string fatherNode,const string sonNode,int distance,Time currentTime)
{
    table[sonNode].setNodeVehicle(this);
    table[sonNode].setParent     (fatherNode);
    table[sonNode].setDistance   (table[fatherNode].getDistance()     + distance);
    table[sonNode].setCost       (table[fatherNode].getCost()         + calculateCost(distance,currentTime));
    table[sonNode].setTime       (Time(table[fatherNode].getTimeInt() + calculateTime(distance,currentTime)));
}
