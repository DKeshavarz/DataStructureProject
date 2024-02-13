#include "City.h"
#include "Tehran.h"

#ifndef SAMHAN_H
#define SAMHAN_H


class Samhan
{
    public:
        Samhan();
        ~Samhan();

        int run();
    private:
        City* myCity;

        void clearCity();

};
#endif