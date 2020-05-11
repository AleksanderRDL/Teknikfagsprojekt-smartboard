//Pin definitions// 
#include <stdio.h>
int i = 0;

#define trigPin D7
#define echoPin D6

#define trigPin2 D2 
#define echoPin2 D1

//variable definitions//

unsigned long Time = 0;
void setup() {
  
initHardware();  
String thisBoard = ARDUINO_BOARD;
}

void loop() {
  long duration, distance, duration2, distance2; 
 digitalWrite (trigPin,LOW);
    delayMicroseconds(2);
  digitalWrite (trigPin,HIGH);
    delayMicroseconds(10);
  digitalWrite (trigPin,LOW);
  duration = pulseIn(echoPin, HIGH);
  distance = (duration/2)/29.1 ;

  digitalWrite (trigPin2,LOW);
  delayMicroseconds(2);
  digitalWrite (trigPin2,HIGH);
  delayMicroseconds(10);
  digitalWrite (trigPin2,LOW);
  duration2 = pulseIn(echoPin2, HIGH);
  distance2 = ((duration2)/2)/29.1; 
 Serial.print(distance);
 Serial.print(" ");
 Serial.println(distance2);

    delay(500);
}

//functions//

void initHardware ()
{
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(trigPin2, OUTPUT);
  pinMode(echoPin2, INPUT);

  Serial.begin(115200);
  digitalWrite(LED_BUILTIN, HIGH);


  
}
