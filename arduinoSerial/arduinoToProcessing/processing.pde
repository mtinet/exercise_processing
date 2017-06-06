//문자열로 변환되어 들어온 값을 int형으로 수정하는 방법.
import processing.serial.*;

int lf = 10;  //'엔터'의 아스키값
String myString = null;  //아두이노에서 보내온 값은 String의 형태로 저장됨
int val = 0;  //String으로 저장된 값을 int로 바꿀 때 사용하는 변수

Serial port;  //시리얼 통신 객체를 생성
PFont font;  //폰트 객체를 생성

void setup() {
  println("Available serial ports:");
  println(Serial.list());  //시리얼 포트의 리스트를 보여줌
  
  port = new Serial(this, "COM9", 9600);  // 포트 선택
  //port = new Serial(this, Serial.list()[0], 9600);  
  
  port.clear();  //포트 초기화
  
  font = createFont("휴먼편지체", 16);  //텍스트폰트 로드
  
  myString = port.readStringUntil(lf);  //String에 들어오는 값을 '엔터(아스키코드 = 10)'로 구분함
  myString = null;  //String초기화
  
  size(200, 200);
  background(255);
}

void draw() {
        if (val > 200) {
          background(255, 0, 0);
          fill(255);
          textFont(font);  
          textAlign(CENTER);
          text(val, width/2, 80);
          text("센싱값이 200을 넘었습니다.", width/2, 120);
          println("val = " + val);
        } else {
          background(0, 0, 255);
          fill(255);
          textFont(font);  
          textAlign(CENTER);
          text(val, width/2, 80);
          text("센싱값이 200을 넘지 않습니다.", width/2, 120);
          println("val = " + val);
        }
}

void serialEvent(Serial port) {
    myString = port.readStringUntil(lf);
    
    if (myString != null) {
      try {
        val=Integer.parseInt(myString.trim());
      } 
      catch (NumberFormatException npe) {
      }
    }
}
