#include <vector>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <queue>

#include "nodeinfo.h"

#ifndef VEHICLE_H
#define VEHICLE_H

enum MeasurementMetric {
    DISTANCE,
    COST,
    TIME
};
struct NodeNeighbour
{
    std::string nodeName;
    int  distance;

    NodeNeighbour(const std::string& name="",const int c=0):nodeName(name),distance(c) {}

    bool operator==(const NodeNeighbour& obj)const
    {return (/*distance == obj.distance && */nodeName == obj.nodeName);}
    bool operator>(const NodeNeighbour& obj)const
    {return (distance > obj.distance);}

    struct myHash
    {
        size_t operator()(const NodeNeighbour& obj) const
        {
            return /*std::hash<int>{}(obj.distance) ^*/ std::hash<std::string>{}(obj.nodeName);
        }
    };

};
class Vehicle
{
    public:

        Vehicle();
        virtual ~Vehicle();

        //this fucntion read vechicle file and set it's data member
        bool readFile(const std::string&);

        //getter fucntion
        int         getCostPerKilometre () {return this->costPerKilometre ;}
        int         getSpeedPerKilometre() {return this->speedPerKilometre;}
        int         getChangeLineTime   () {return this->changeLineTime;   }
        std::string getVehicleName      () {return this->fileName.substr(0 , fileName.size()-4);}//Warning : bad implementation

        virtual void calculateMinDistance(std::unordered_map<std::string,NodeInfo>& ,std::priority_queue<NodeNeighbour,vector<NodeNeighbour>,greater<NodeNeighbour>>&,const std::string&);
        virtual void calculateMinCost    (std::unordered_map<std::string,NodeInfo>& ,std::priority_queue<NodeNeighbour,vector<NodeNeighbour>,greater<NodeNeighbour>>&,const std::string&);
        virtual void calculateMinTime    (std::unordered_map<std::string,NodeInfo>& ,std::priority_queue<NodeNeighbour,vector<NodeNeighbour>,greater<NodeNeighbour>>&,const std::string&);
        
        virtual void distanceFromSrc     (unordered_set<NodeNeighbour,NodeNeighbour::myHash>&,const std::string&);

        // check if a Vehchile can go to station
        virtual bool isOnVehchileRoad(const std::string&)const;

        //use dijestra table and back track from node to it's parrent
        std::vector<std::string> backTrackPath (std::string,std::string)const;

        //return all nodeNeighbours in a set
        const std::unordered_set< NodeNeighbour,NodeNeighbour::myHash>& getNeighboursSet(std::string input){return neighbours[input];}

    private:
        int speedPerKilometre {0};
        int costPerKilometre  {0};
        int changeLineTime    {0};
        std::string     fileName ;

        std::vector<std::string> line;//Warning _ should we use it???

        //adjacency list -> connect eah node to set -> set contain it's Neighbour
        std::unordered_map <std::string , std::unordered_set< NodeNeighbour , NodeNeighbour::myHash> > neighbours;

        //add an edge between two node
        void addNewVertex(const std::string&,const std::string&,const int&);

    protected:
        //warning : should we use it???
        const std::vector<std::string>& getLine () {return this->line;}

        //calculate based on specific vehicle parameters
        virtual int calculateCost(int) = 0;
        virtual int calculateTime(int); // const ???????
};

#endif
