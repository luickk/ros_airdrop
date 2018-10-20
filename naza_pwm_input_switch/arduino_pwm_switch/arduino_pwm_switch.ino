void setup()
{
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  // PWM input
  pinMode(4, INPUT);
  Serial.begin(9600);
}
int pwm_value;

void loop()
{
  pwm_value = pulseIn(4, HIGH);
  if(pwm_value >= 1500){
    digitalWrite(3, LOW);
    digitalWrite(2, HIGH);
    Serial.print("1");
  } else if(pwm_value <= 1500){
    digitalWrite(2, LOW);
    digitalWrite(3, HIGH);  
    Serial.print("0");
  }
}
