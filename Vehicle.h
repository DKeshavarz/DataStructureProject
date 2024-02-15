#include <vector>
#include <string>
#include <unordered_map>
#include <unordered_set>

#include "NodeInfo.h"

#ifndef VEHICLE_H
#define VEHICLE_H

struct NodeNeighbour
{
    std::string nodeName;
    int cost;

    NodeNeighbour(const std::string& name="",const int c=0):nodeName(name),cost(c) {}

    bool operator==(const NodeNeighbour& obj)const
    {
        return (cost == obj.cost && nodeName == obj.nodeName);
    }

    struct myHash
    {
        size_t operator()(const NodeNeighbour& obj) const
        {
            return std::hash<int>{}(obj.cost) ^ std::hash<std::string>{}(obj.nodeName);
        }
    };

};
class Vehicle
{
    public:

        Vehicle();

        bool readFile(const std::string&);

        virtual void calculateMinDistance(std::unordered_map<std::string,NodeInfo>&,const std::string&);
        
        virtual bool isOnVehchileRoad(const std::string&)const;
        virtual ~Vehicle();

    private:
        int speedPerKilometre ;
        int costPerkilometre  ;
        
        
        std::vector<std::string> line;
        std::unordered_map <std::string , std::unordered_set< NodeNeighbour , NodeNeighbour::myHash> > neighbours;

        void addNewVertex(const std::string&,const std::string&,const int&);
};

#endif