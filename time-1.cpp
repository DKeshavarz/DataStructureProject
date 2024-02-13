#include <iostream>
#include <vector>

using namespace std;

struct tClock
{
    unsigned int hour = 0;
    unsigned int min = 0;
    string dayORnight = "AM";
};

class time
{
    private:

        vector <struct tClock> times;

        struct tClock temp;
    
    public:

        bool set_hour (unsigned int hour)
        {
            if (hour >= 1 && hour <= 12)
            {
                this->temp.hour = hour;

                return true;
            }
            else
            {
                return false;
            }
        }

        unsigned int get_hour (unsigned int index)
        {
            return times.at (index).hour;
        }

        bool set_min (unsigned int min)
        {
            if (min >= 0 && min <= 59)
            {
                this->temp.min = min;

                return true;
            }
            else
            {
                return false;
            }
        }

        unsigned int get_min (unsigned int index)
        {
            return times.at (index).min;
        }

        bool set_dayORnight (string dayORnight)
        {
            if (dayORnight == "AM" || dayORnight == "PM")
            {
                this->temp.dayORnight = dayORnight;

                return true;
            }
            else
            {
                return false;
            }
        }

        string get_dayORnight (unsigned int index)
        {
            return times.at (index).dayORnight;
        }

        bool addClock (string clock)
        {
            string hour;
            hour += clock.at (0);
            hour += clock.at (1);

            string min;
            min += clock.at (3);
            min += clock.at (4);

            string dayORnight;
            dayORnight += clock.at (6);
            dayORnight += clock.at (7);

            unsigned int tHour = atoi (hour.c_str ());
            unsigned int tMin = atoi (min.c_str ());

            if (this->set_hour (tHour) && this->set_min (tMin) && this->set_dayORnight (dayORnight))
            {
                this->times.push_back (temp);
                return true;
            }
            else
            {
                return false;
            }
        }

        bool isTimeExist (string clock)
        {
            string hour;
            hour += clock.at (0);
            hour += clock.at (1);

            string min;
            min += clock.at (3);
            min += clock.at (4);

            string dayORnight;
            dayORnight += clock.at (6);
            dayORnight += clock.at (7);

            unsigned int tHour = atoi (hour.c_str ());
            unsigned int tMin = atoi (min.c_str ());

            for (unsigned int i = 0; i < times.size (); i++)
            {
                if (times.at (i).hour == tHour && times.at (i).min == tMin && times.at (i).dayORnight == dayORnight)
                {
                    return true;
                }
            }

            return false;
        }
};
