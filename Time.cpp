#include "Time.h"

void Time::set_hour (unsigned int hour)
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

unsigned int Time::get_hour () const
{
    return this->hour;
}

void Time::set_minute(unsigned int minute)
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

unsigned int Time::get_minute () const
{
    return this->minute;
}

void Time::set_dayORnight(string dayORnight)
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

string Time::get_dayORnight () const
{
    return this->dayORnight;
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

    this->set_hour (hour);
    this->set_minute (minute);
    this->set_dayORnight (tDayORnight);
}

unsigned int Time::getTime () const
{
    if (this->get_dayORnight () == "PM")
    {
        return (((this->get_hour () + 12) % 24) * 60) + (this->get_minute ());
    }
    else
    {
        return ((this->get_hour () * 60) + (this->get_minute ()));
    }
}

class Time Time::operator+ (const Time & first) const
{
    class Time temp ("01:00 AM");

    unsigned int hour1 = this->get_hour ();
    unsigned int minute1 = this->get_minute ();
    string dayORnight1 = this->get_dayORnight ();

    unsigned int hour2 = first.get_hour ();
    unsigned int minute2 = first.get_minute ();
    string dayORnight2 = first.get_dayORnight ();

    unsigned int tHour;
    unsigned int tMinute;
    string tDayORnight;

    if (dayORnight1 == "PM")
    {
        hour1 = (hour1 + 12) % 24;
    }
    if (dayORnight2 == "PM")
    {
        hour2 = (hour2 + 12) % 24;
    }

    tHour = hour1 + hour2;
    tMinute = minute1 + minute2;

    if (tMinute >= 60)
    {
        tHour++;
        tMinute -= 60;
    }

    tHour %= 12;
    if (tHour == 0)
    {
        tHour = 12;
    }

    if (tHour < 12)
    {
        tDayORnight = "AM";
    }
    else
    {
        tDayORnight = "PM";
    }

    temp.set_hour (tHour);
    temp.set_minute (tMinute);
    temp.set_dayORnight (tDayORnight);

    return temp;
}
class Time Time::operator- (const Time & second) const
{
    class Time temp ("01:00 AM");

    unsigned int hour1 = this->get_hour ();
    unsigned int minute1 = this->get_minute ();
    string dayORnight1 = this->get_dayORnight ();

    unsigned int hour2 = second.get_hour ();
    unsigned int minute2 = second.get_minute ();
    string dayORnight2 = second.get_dayORnight ();

    unsigned int tMinute1;
    unsigned int tMinute2;

    unsigned int difference;

    string tDayORnight;

    if (dayORnight1 == "PM")
    {
        hour1 = (hour1 + 12) % 24;
    }
    if (dayORnight2 == "PM")
    {
        hour2 = (hour2 + 12) % 24;
    }

    tMinute1 = hour1 * 60 + minute1;
    tMinute2 = hour2 * 60 + minute2;

    difference = tMinute1 - tMinute2;

    if (difference < 0) 
    {
        difference += 24 * 60;
    }

    int tHour = difference / 60;
    int tMinute = difference % 60;

    if (tHour < 12)
    {
        tDayORnight = "AM";
    }
    else
    {
        tDayORnight = "PM";
    }

    tHour %= 12;
    if (tHour == 0)
    {
        tHour = 12;
    }

    cout << "operator- " << tHour << ':' << tMinute << ' ' << tDayORnight << '\n';
    temp.set_hour (tHour);
    temp.set_minute (tMinute);
    temp.set_dayORnight (tDayORnight);

    return temp;
}
bool Time::operator== (const class Time & third) const
{
    if (this->get_hour() == third.get_hour () && this->get_minute () == third.get_minute () && this->get_dayORnight () == third.get_dayORnight ())
    {
        return true;
    }
    else
    {
        return false;
    }
}
bool Time::operator> (const Time &second) const
{
    unsigned int hour1 = this->get_hour();
    unsigned int minute1 = this->get_minute();
    string dayORnight1 = this->get_dayORnight();

    unsigned int hour2 = second.get_hour();
    unsigned int minute2 = second.get_minute();
    string dayORnight2 = second.get_dayORnight();

    unsigned int tMinute1 = this->getTime ();
    unsigned int tMinute2 = second.getTime ();

    return tMinute1 > tMinute2;
}
bool Time::operator< (const Time &second) const
{
    unsigned int hour1 = this->get_hour();
    unsigned int minute1 = this->get_minute();
    string dayORnight1 = this->get_dayORnight();

    unsigned int hour2 = second.get_hour();
    unsigned int minute2 = second.get_minute();
    string dayORnight2 = second.get_dayORnight();

    unsigned int tMinute1 = this->getTime ();
    unsigned int tMinute2 = second.getTime ();

    return tMinute1 < tMinute2;
}
