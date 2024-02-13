#include <iostream>
#include <fstream>
#include <string>

#include "Vehicle.h"

using namespace std;

Vehicle::Vehicle()
{
    cout << "Vehicle created\n";
}

bool Vehicle::readFile(string fileName)
{
    ifstream myFile (fileName);

    if(!myFile.is_open())
    {
        cerr << "faild to open " << fileName << '\n' ;
        return false ; //faild to open
    }
    
    myFile >> this->speedPerKilometre >> this->costPerkilometre;
    
    string station  {};
    string distance {};

    getline(myFile,station);
    //this getline will store any thing

    getline(myFile,station);
    this->line.push_back(station);

    while(getline(myFile,station))
    {
        //getline(myFile,station);
        //cout << "station :" << station << '\n';
        this->line.push_back(station);

        getline(myFile,distance);

        this->lineCost.push_back(stoi(distance));

        getline(myFile,station);//this station have repeted station
    }

    cout << "vectorSize " << line.size() << '\n';
    myFile.close();
    return true; //every thing 
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
    for(auto i : this->lineCost)
        cout << i << ",";
    cout << "\nVehicle destrouyed\n";
    cout << "/*********************************/\n";
}
