#define sensor A0
int check = 0;
void setup() {
  Serial.begin(9600);// put your setup code here, to run once:
}

void loop() {
  // put your main code here, to run repeatedly:
  float volts = analogRead(sensor) * 0.0048828125;
  int distance = 13 * pow(volts, -1);
  if (distance < 8) {
    check = 0;
  } else {
    check = 1;
  }
  delay(100);
  Serial.write(check);
}
