int sensorPin = A0;
int val;
int sensorValue = 0;
int reading;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
//  establishContact(); 
}

void loop() {
  // put your main code here, to run repeatedly:
  sensorValue = analogRead(sensorPin);
  val = map(sensorValue,200,950,0,255);
  Serial.print(val);
  Serial.print(";");
  delay(100);
  
}




