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
            Calcute_Min_Direction(start.toStdString() , end.toStdString() , TIME);
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
   set_Node_color(vec);
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
       if(T[i][0]=='T')
       {
           for(auto &j : get_object[temp])
           {

              if(j.type[0]=='L')
              {
                j.obj_name->setProperty("color" , "lightblue");
                objects.push_back(j);
              }
           }
       }

      else if(T[i][0]=='M')
       {
           for(auto &j : get_object[temp])
           {

              if(j.type[0]=='L')
              {
                j.obj_name->setProperty("color" , "lightblue");
                 objects.push_back(j);
              }
           }
       }
       else if(T[i][0]=='B')
        {
            for(auto &j : get_object[temp])
            {

               if(j.type[0]=='B')
               {
                 j.obj_name->setProperty("color" , "lightblue");
                  objects.push_back(j);
               }
            }
        }

       cerr << "\nsamhan way\n";
       cerr <<Distance[i]+"_"+Distance[i+1]<<"    "<<T[i]<<"   "<<"\n";

    }
}

void Samhanhash::set_Node_color(std::vector<string> Distance)
{
    for(size_t i=0 ; i<Distance.size() ; i++)
    {
         for(auto &j : get_object[Distance[i]])
         {
             j.obj_name->setProperty("color" , "blue");
              objects.push_back(j);
         }
    }
}

void Samhanhash::add_object(QObject *main_obj, QString name, QString Type)
{
    Node temp(main_obj , Type.toStdString());
    get_object[name.toStdString()].push_back(temp);

}

void Samhanhash::reset()
{
  for(auto &i : objects)
  {
      if(i.type=="Line1") {i.obj_name->setProperty("color" , "red");}
      else if(i.type=="Line3") {i.obj_name->setProperty("color" , "#333CFF");}
      else if(i.type=="Line6") {i.obj_name->setProperty("color" , "#ff1493");}
      else if(i.type=="Line4") {i.obj_name->setProperty("color" , "yellow");}
      else if(i.type=="BUS2") {i.obj_name->setProperty("color" , "#667C26");}
      else if(i.type=="BUS1") {i.obj_name->setProperty("color" , "#1B8A6B");}
      else if(i.type=="BUS3") {i.obj_name->setProperty("color" , "#2C3539");}
      else if(i.type=="Node") {i.obj_name->setProperty("color" , "#dcdcdc");}
      else if(i.type=="BUS") {i.obj_name->setProperty("color" , "#00ff55");}

  }

  objects.clear();
}
void Samhanhash::clearCity()
{
    if(myCity)
        delete myCity;
}
