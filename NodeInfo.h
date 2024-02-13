#include <string>

#ifndef NODEINFO_H
#define NODEINFO_H

class NodeInfo 
{
    public:
        NodeInfo();

    private:
        bool vis;
        int  cost;
        int  distance;

        std::string parent;
};

#endif