#include <string>

#ifndef NODEINFO_H
#define NODEINFO_H

class NodeInfo 
{
    public:
        NodeInfo();

        void setVis      (const bool        input) {this->vis      = input;} 
        void setCost     (const int         input) {this->cost     = input;}
        void setDistance (const int         input) {this->distance = input;}
        void setParent   (const std::string input) {this->parent   = input;}    

        bool        getVis      ()const {return this->vis     ;}
        int         getCost     ()const {return this->cost    ;}
        int         getDistance ()const {return this->distance;}
        std::string getParent   ()const {return this->parent  ;}

        std::string print()const;
    private:
        bool vis;
        int  cost;
        int  distance;

        std::string parent;
};

#endif