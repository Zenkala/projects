
#ifndef MilliTimer_h
#define MilliTimer_h
#include <Arduino.h>

class MilliTimer {
    word next;
    byte armed;
public:
    MilliTimer () : armed (0) {}
    
    /// poll until the timer fires
    /// @param ms Periodic repeat rate of the time, omit for a one-shot timer.
    byte poll(word ms =0);
    /// Return the number of milliseconds before the timer will fire
    word remaining() const;
    /// Returns true if the timer is not armed
    byte idle() const { return !armed; }
    /// set the one-shot timeout value
    /// @param ms Timeout value. Timer stops once the timer has fired.
    void set(word ms);
};

#endif