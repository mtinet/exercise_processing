int led = 13;
int sensor = A0;

void setup() {
  Serial.begin(9600);
  pinMode(led, OUTPUT);
}

void loop() {
  // 변수를 만들고 센서값을 넣음  
  int var = analogRead(sensor);
  
  //시리얼 통신 설정
  if(Serial.available()) {
    int sig = Serial.read();  

    // 변수 sig에 49(숫자 1)가 들어오면 13번 핀에 연결된 led를 켬, 시리얼통신으로 변수 var 값을 보냄.
    if (sig == 49) {
      digitalWrite(led, HIGH);
      Serial.println(var);
    } 
    // 변수 sig에 50(숫자 2)가 들어오면 13번 핀에 연결된 led를 끔, 시리얼통신으로 변수 var 값을 보냄.
    else if ( sig == 50) {
      digitalWrite(led, LOW);
      Serial.println(var);
    } 
    // 변수 sig에 임의의 다른 신호가 들어오면 아무 동작하지 않음
    else {
      Serial.println(sig);
    }
  }
}
