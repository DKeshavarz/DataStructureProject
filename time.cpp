#include <iostream>
#include <vector>
#include <string>

class Time {
private:
    int hour;
    int minute;
    std::string period;

public:
    Time(int h, int m, const std::string& p) : hour(h), minute(m), period(p) {}

    int getHour() const {
        return hour;
    }

    int getMinute() const {
        return minute;
    }

    std::string getPeriod() const {
        return period;
    }
};

class Clock {
private:
    std::vector<Time> times;

public:
    void addTime(const Time& t) {
        times.push_back(t);
    }

    Time getTime(int index) const {
        if (index >= 0 && index < times.size()) {
            return times[index];
        } else {
            return Time(-1, -1, "AM");
        }
    }

    bool isTimeExist(int hour, int minute, const std::string& period) const {
        for (const auto& time : times) {
            if (time.getHour() == hour && time.getMinute() == minute && time.getPeriod() == period) {
                return true;
            }
        }
        return false;
    }
};
