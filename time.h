#ifndef _time
#define _time

#include <iostream>

using namespace std;

class time
{
    private:

        unsigned int hour;
        unsigned int minute;
        string dayORnight;

    public:

        time (string time) {getTime (time);}

        void set_hour (unsigned int);
        unsigned int get_hour () const;
        
        void set_minute(unsigned int);
        unsigned int get_minute () const;

        void set_dayORnight(string);
        string get_dayORnight () const;

        void getTime (string);
        
        class time operator+ (const time &) const;
        class time operator- (const time &) const;
        bool operator== (const class time &) const;
        bool operator> (const time &) const;
        bool operator< (const time &) const;

};

#endif