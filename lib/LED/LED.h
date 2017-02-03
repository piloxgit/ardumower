class LED{
private:
    int pin;
    boolean stav = LOW; //výchozí stav LED je vypnuto
    void nastav(boolean);

public:
    LED(int);
    void zapni();
    void vypni();
    void prepni();
    boolean vratStav();
};

LED::LED(int p){
    pin = p;
    pinMode(pin, OUTPUT);
    digitalWrite(pin, stav);
}

void LED::zapni(){
    nastav(HIGH);
}

void LED::vypni(){
    nastav(LOW);
}

void LED::prepni(){
    nastav(!stav); //nastaví LED na obrácenou hodnotu (0->1, 1->0)
}

void LED::nastav(boolean s){
    stav = s;
    Serial.print("Nastavuji ");
    Serial.print(stav);
    Serial.print(" na pinu ");
    Serial.println(pin);
    digitalWrite(pin, stav);
}

boolean LED::vratStav(){
    return stav;
}
