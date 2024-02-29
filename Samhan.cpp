#include <iostream>
#include <algorithm>
#include "Samhan.h"

using namespace std;

Samhan::Samhan():myCity{new Tehran ("Tehran")}
{
    myCity->setUpCity();

    
    string start = "Tehran Pars";
    string end   = "Chaharbagh";
    unordered_map <string , NodeInfo > result = myCity->calculateMin(start,end,DISTANCE,Time("01:12 pm"));

  //  string parent = result[end].getParent();
  //  vector<string> vec = (result[end].getNodeVehicle())->backTrackPath(parent,end);
  //  for(const auto& item : vec)
         ///   cout << item << " ";
   vector <string> cost_vec;
   vector <string> vec;
   string parent = result[end].getParent();
   vec.push_back(end);
     while (parent!="nothing")
    {
      string temp_cost=(result[end].getNodeVehicle())->getVehicleName();
      vector<string> temp = (result[end].getNodeVehicle())->backTrackPath(parent,end);
      vec.insert(vec.end() , temp.begin()+1 , temp.end());
      for(int i=0 ; i<temp.size()-1 ; i++)
      cost_vec.push_back(temp_cost);
      end=temp[temp.size()-1];
      parent=result[end].getParent();
     
    }
       reverse(vec.begin(), vec.end());
       reverse(cost_vec.begin(), cost_vec.end());
       for(const auto& item : vec)
       cout << item << "------> ";
       cout<<endl<<endl;
       for(const auto& item : cost_vec)
       cout << item << "------> ";
       cout<<endl<<endl;
   
    
}

int Samhan::run()
{
    
    return 0;
}
Samhan::~Samhan()
{

    clearCity();
}
void Samhan::clearCity()
{
    if(myCity)
        delete myCity;
}