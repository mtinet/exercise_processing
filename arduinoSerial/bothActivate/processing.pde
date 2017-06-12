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
  
  port = new Serial(this, "COM6", 9600);  // 포트 선택, 아두이노가 연결된 포트를 선택해야 함
  //port = new Serial(this, Serial.list()[0], 9600);  
  
  port.clear();  //포트 초기화
  
  font = createFont("휴먼편지체", 16);  //텍스트폰트 로드
  
  myString = port.readStringUntil(lf);  //String에 들어오는 값을 '엔터(아스키코드 = 10)'로 구분함
  myString = null;  //String초기화
  
  size(200, 200);  //화면 크기 설정
  background(255);  //배경 색 흰색으로 초기화
}

void draw() {
  // 시리얼 통신으로 넘어오는 측정값을 200 기준으로 반응하도록 화면을 구성
  if (val > 950) {
    background(255, 0, 0);
    fill(255);
    textFont(font);  
    textSize(36);
    textAlign(CENTER);
    text(val, width/2, 80);
    textSize(16);
    text("센싱값이 950을 넘었습니다.", width/2, 120);
    port.write(49);
    
    println("val = " + val);
  } else {
    background(0, 0, 255);
    fill(255);
    textFont(font);  
    textSize(36);
    textAlign(CENTER);
    text(val, width/2, 80);
    textSize(16);
    text("센싱값이 950을 넘지 않습니다.", width/2, 120);
    println("val = " + val);
    port.write(50);
  }
}


void serialEvent(Serial port) {  // 시리얼 이벤트가 있을 때
    myString = port.readStringUntil(lf);  // String값으로 넘어오는 데이터를 '엔터'를 기준으로 구분함
    
    if (myString != null) {  // 통신과정에서 종종 오류값이 발생하므로 String값이 null일 때는 동작하지 않도록 함 
      try {  // 형 변환에 문제가 없을 때는 {} 안의 변환 구문을 실행함 
        val=Integer.parseInt(myString.trim());  // String값으로 저장된 값을 int형으로 변환함
      } 
      catch (NumberFormatException npe) {  // 형 변환에 문제가 있을 때는 아무것도 하지 않고 넘어가도록 함
      }
    }
}
