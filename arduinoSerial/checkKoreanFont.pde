PFont myFont;
void setup() {
  size(400, 200);
  // Uncomment the following two lines to see the available fonts
  String[] fontList = PFont.list();
  printArray(fontList); 
  myFont = createFont("한초롬바탕", 32);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  text(" 가나다라마바사아", width/2, height/2);
}


// https://amac2016.blogspot.kr/2016/04/processing.html
