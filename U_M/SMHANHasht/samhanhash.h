#ifndef SAMHANHASH_H
#define SAMHANHASH_H

#include "city.h"
#include "tehran.h"
#include <QObject>
#include <QString>
#include <map>

struct Node
{
    QObject * obj_name;
    std::string type;
    Node(QObject * object ,const string a):obj_name(object),type(a) {}
};

class Samhanhash : public QObject
{
    Q_OBJECT
public:
    explicit Samhanhash(QObject *parent = nullptr);
    ~Samhanhash();

public slots:
void get_nodeName(QString start, QString end,QString time ,int Metric , QObject *m_dis , QObject *m_cost , QObject *m_time);
void Calcute_Min_Direction(string Start, string End, string s_time ,MeasurementMetric METRIC , QObject *M_dis , QObject *M_cost , QObject *M_time);
void set_color(std::vector<string> Distance, std::vector<string> Cost);
void set_Node_color(std::vector<string> Distance);
void add_object(QObject *main_obj, QString name, QString Type);
void reset();
signals:



private:
  std::map<std::string , std::vector<Node>>get_object;
  std::vector<Node> objects;
  City* myCity;
  void clearCity();

};

#endif // SAMHANHASH_H
