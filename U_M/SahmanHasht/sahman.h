#ifndef SAHMAN_H
#define SAHMAN_H

#include <QObject>
#include <map>
#include <QString>
#include <vector>

class Sahman : public QObject
{
    Q_OBJECT
public:
    explicit Sahman(QObject *parent = nullptr);

signals:

public slots:

private:
 std::map <QString , std::vector<QObject*> > stations;

};

#endif // SAHMAN_H
