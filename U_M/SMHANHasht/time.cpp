#include "time.h"
#include <iomanip>

void Time::set_hour (unsigned int hour)
{
    if ( 0 <= hour && hour <= 23)
        this->hour = hour;
    else
        throw invalid_argument ("Invalid hour");
}

void Time::set_minute(unsigned int minute)
{
    if (minute >= 0 && minute <= 59 )
        this->minute = minute;
    else
        throw invalid_argument ("Invalid minute");
}
void Time::getTime (string time)
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

    hour = tDayORnight == "am" || tDayORnight == "AM" ? hour : (hour + 12) % 24;//validation ....

    this->set_hour (hour);
    this->set_minute (minute);
}
void Time::getTime (int time)
{
    int day    = time / (60*24);
    time %= (60*24);
    int hour   = time / 60;
    int minute = time % 60;

    this->day = day;
    set_hour  (hour);
    set_minute(minute);
}
Time::operator int() const
{
    return  (this->day*24*60)+(this->hour*60) + (this->minute);
}

class Time Time::operator+ (const Time & first) const
{
    int newTime = static_cast<int>(*this) +static_cast<int>(first);

    return Time(newTime);
}
class Time Time::operator- (const Time & first) const
{
    int newTime = static_cast<int>(*this)-static_cast<int>(first);
    return Time(newTime);
}
bool Time::operator== (const class Time & first) const
{
    return (static_cast<int>(*this) == static_cast<int>(first));

}
bool Time::operator> (const Time &first) const
{
    return (static_cast<int>(*this) > static_cast<int>(first));;
}
bool Time::operator< (const Time &first) const
{
    return (static_cast<int>(*this) < static_cast<int>(first));;
}
