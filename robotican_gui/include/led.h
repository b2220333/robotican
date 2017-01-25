#ifndef LED_H
#define LED_H

#include <QLabel>

#define ON true;
#define OFF false;
#define OFF_PIC ":/images/ledOff.png"
#define ON_PIC ":/images/ledOn.png"

class Led {
public:
    Led();
    void initiate(QLabel &led);
    void turnOn();
    void turnOff();
    bool getState();
    void setTimeMarker(long int val);
    long int getTimeMarker();

private:
    bool _state;
    long int _timeMarker;
    QLabel * _ledHandle;
};


#endif //LED_H
