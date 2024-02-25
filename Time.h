#ifndef _time
#define _time

#include <iostream>

using namespace std;

class Time
{
    private:

        unsigned int hour;
        unsigned int minute;
        string dayORnight;

    public:

        Time (string time) {getTime (time);}

        void set_hour (unsigned int);
        unsigned int get_hour () const;
        
        void set_minute(unsigned int);
        unsigned int get_minute () const;

        void set_dayORnight(string);
        string get_dayORnight () const;

        void getTime (string);
        unsigned int getTime () const;
        
        class Time operator+ (const Time &) const;
        class Time operator- (const Time &) const;
        bool operator== (const class Time &) const;
        bool operator> (const Time &) const;
        bool operator< (const Time &) const;

};

#endif