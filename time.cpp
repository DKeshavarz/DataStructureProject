#ifndef _time//????????
#define _time

#include <iostream>

using namespace std;
//separate .h to .cpp

class time //Time
{
    private:

        unsigned int hour;
        unsigned int minute;
        string dayORnight;

    public:
        // over load + , > , == , <  

        time (string time) {getTime (time);}

        void set_hour (unsigned int hour)
        {
            if (hour <= 12 && hour >= 1)
            {
                this->hour = hour;
            }
            else
            {
                throw invalid_argument ("Invalid hour");
            }
        }

        unsigned int get_hour ()
        {
            return this->hour;
        }

        void set_minute(unsigned int minute)
        {
            if (minute <= 59 && minute >= 0)
            {
                this->minute = minute;
            }
            else
            {
                throw invalid_argument ("Invalid minute");
            }
        }

        unsigned int get_minute ()
        {
            return this->minute;
        }

        void set_dayORnight(string dayORnight)
        {
            if (dayORnight == "AM" || dayORnight == "PM" || dayORnight == "am" || dayORnight == "pm")
            {
                if (dayORnight == "AM" || dayORnight == "am")
                {
                    this->dayORnight = "AM";
                }
                else if (dayORnight == "PM" || dayORnight == "pm")
                {
                    this->dayORnight = "PM";
                }
            }
            else
            {
                throw invalid_argument ("Invalid dayORnight");
            }
        }

        string get_dayORnight ()
        {
            return this->dayORnight;
        }

        void getTime (string time) 
        {
            unsigned int index = 0;
            string tHour;
            string tMinute;
            string tDayORnight;

            for (unsigned int i = index; time.at (i) != ':'; i++)
            {
                tHour += time.at (i);
                index++;
            }

            index++;

            for (unsigned int i = index; time.at (i) != ' '; i++)
            {
                tMinute += time.at (i);
                index++;
            }

            index++;

            for (unsigned int i = index; i < time.size (); i++)
            {
                tDayORnight += time.at (i);
                index++;
            }

            unsigned int hour = atoi (tHour.c_str ());
            unsigned int minute = atoi (tMinute.c_str ());

            this->set_hour (hour);
            this->set_minute (minute);
            this->set_dayORnight (tDayORnight);
        }
};

#endif
