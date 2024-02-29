#include <iostream>
#include <algorithm>
#include <map>
#include <vector>
#include <QQmlComponent>
#include "samhanhash.h"

using namespace std;

Samhanhash::Samhanhash(QObject *parent) : QObject(parent) , myCity{new Tehran ("Tehran")}
{
    myCity->setUpCity();

}
Samhanhash::~Samhanhash()
{

    clearCity();
}

void Samhanhash::get_nodeName(QString start, QString end, int Metric)
{
    switch(Metric)
    {
        case DISTANCE:
            Calcute_Min_Direction(start.toStdString() , end.toStdString() , DISTANCE);
            break;
        case COST:
            Calcute_Min_Direction(start.toStdString() , end.toStdString() , COST);
               break;
        case TIME:
         cout<<"time";
             break;

        default :
            cerr << "error";
    }

}

void Samhanhash::Calcute_Min_Direction(string Start, string End, MeasurementMetric METRIC)
{
   unordered_map <string , NodeInfo > result = myCity->calculateMin(Start,End,METRIC,Time("01:12 pm"));
   vector <string> cost_vec  ;  vector <string> vec;
   string Parent = result[End].getParent();
   vec.push_back(End);
   while (Parent!="nothing")
   {
       string temp_cost=(result[End].getNodeVehicle())->getVehicleName();
       vector<string> temp = (result[End].getNodeVehicle())->backTrackPath(Parent,End);
       vec.insert(vec.end() , temp.begin()+1 , temp.end());
       for(size_t i=0 ; i<temp.size()-1 ; i++)
       cost_vec.push_back(temp_cost);
       End=temp[temp.size()-1];
       Parent=result[End].getParent();

   }
   reverse(vec.begin(), vec.end());
   reverse(cost_vec.begin(), cost_vec.end());
   set_color(vec , cost_vec);
}

void Samhanhash::set_color(std::vector<string> Distance, std::vector<string> T)
{
    string temp;
    for(size_t i=0 ; i<Distance.size()-1 ; i++)
    {
       if(get_object.find(Distance[i]+"_"+Distance[i+1])!= get_object.end())
       {
           temp=Distance[i]+"_"+Distance[i+1];
      }
       else{temp=Distance[i+1]+"_"+Distance[i];}
       for(auto &j : get_object[temp])
       {

           j.obj_name->setProperty("color" , "purple");
       }
       cout<<Distance[i]+"_"+Distance[i+1]<<"    "<<T[i]<<"   ";
    }
}

void Samhanhash::add_object(QObject *main_obj, QString name, QString Type)
{
    Node temp(main_obj , Type.toStdString());
    get_object[name.toStdString()].push_back(temp);

}
void Samhanhash::clearCity()
{
    if(myCity)
        delete myCity;
}
