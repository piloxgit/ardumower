//
// Created by pilox on 26.1.17.
//

#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <LED.h>

LiquidCrystal_I2C lcd(0x3F, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);
unsigned long previousMillis = 0;        // will store last time LED was updated
const long interval = 500;
int pwm;
int enableA = 8;
int enableB = 9;
String stav;
int potak;
float i = 0;
int amps;
LED ledka(13);
//LED ledka(13);



void setup() {

    Serial.begin(9600);
    lcd.begin(20, 4);
    pinMode(enableA, OUTPUT);
    pinMode(enableB, OUTPUT);
    lcd.backlight();



}
void proud() {

    for(int x=0;x<150;x++)
    {
        i+=analogRead(A1); //read the current from sensor
        delay(1);
    }
    i=i/150;
    int val =(5.0*i)/1024.0;
    int actualval =val-2.5; // offset voltage is 2.5v
    amps =actualval*10;



}

void display() {

    unsigned long currentMillis = millis();

    if (currentMillis - previousMillis >= interval) {
        previousMillis = currentMillis;



        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print(potak);
        lcd.setCursor(0, 1);
        lcd.print(pwm);
        lcd.setCursor(0, 2);
        lcd.print(stav);
        lcd.setCursor(0, 3);
        lcd.print(amps);

    }

}

void motor() {

    potak = analogRead(A0);

    if (potak < 400) {
        digitalWrite(enableB, LOW);
        pwm = map(potak, 0, 399, 255, 0);
        analogWrite(enableA, pwm);
        stav = "Dozadu";
        Serial.print(stav);
        Serial.print(potak);
        Serial.print(", ");
        Serial.println(pwm);
    }

    if (potak > 500) {
        digitalWrite(enableA, LOW);
        pwm = map(potak, 501, 1011, 0, 255);
        analogWrite(enableB, pwm);
        stav = "Dopredu";
        Serial.print(stav);
        Serial.print(potak);
        Serial.print(", ");
        Serial.println(pwm);
    }

    if (potak >= 400  && potak <= 500) {
        digitalWrite(enableA, LOW);
        digitalWrite(enableB, LOW);
        stav = "Stop ";
        Serial.print(stav);
        Serial.println(potak);
    }
}

void loop() {

  ledka.prepni();
    delay(100);

//    motor();
  //  display();
    //proud();



}





