#include <vector>
#include <string>

#ifndef VEHICLE_H
#define VEHICLE_H

class Vehicle
{
    public:

        Vehicle();

        bool readFile(std::string);

        virtual void calculateMinDistance() = 0;
        virtual ~Vehicle();

    private:
        int speedPerKilometre ;
        int costPerkilometre  ;
        
        //Time??
        std::vector<std::string> line;
        std::vector<int>     lineCost;

};

#endif