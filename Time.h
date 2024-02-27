#ifndef _time
#define _time

#include <iostream>
#include <iomanip>

using namespace std;

class Time
{
    private:

        unsigned int hour;
        unsigned int minute;
        unsigned int day {0};

    public:
        friend std::ostream& operator<<(std::ostream& out,const Time& obj)
        {
            return out << ((obj.hour == 0 || obj.hour == 12) ? 12 : obj.hour % 12) << ":" << setw(2) << obj.minute << ":" <<(obj.hour < 12 ? " AM" : " PM");
        }

        Time (string time) { getTime (time);}
        Time (int    time) { getTime (time);}

        void set_hour  (unsigned int);
        void set_minute(unsigned int);

        unsigned int get_hour  () const{return this->hour;  }
        unsigned int get_minute() const{return this->minute;}
        


        void getTime (string);
        void getTime (int);
        
        explicit operator int() const;
        
        class Time operator+ (const Time &) const;
        class Time operator- (const Time &) const;
        bool operator== (const class Time &) const;
        bool operator> (const Time &) const;
        bool operator< (const Time &) const;

        std::string toString() const;

};

#endif