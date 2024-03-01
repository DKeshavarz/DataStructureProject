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
void get_nodeName(QString start , QString end ,int Metric);
void Calcute_Min_Direction(string Start, string End, MeasurementMetric METRIC);
void set_color(std::vector<string> Distance, std::vector<string> Cost);
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
