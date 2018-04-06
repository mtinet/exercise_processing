//지역별 위도와 경도, 좌표는 형식만 맞춰서 추가할 수 있음.
String CulverCity = "lat=34.0194&lon=-118.411";
String Yongsan = "lat=37.541&lon=126.986";
String Busan = "lat=35.16&lon=129.04";
String Gwangju = "lat=35.13&lon=126.79";

String expression;

JSONObject info;

PFont myFont;

void setup() {
  size(400,200);
  myFont = createFont("Georgia", 32);

  // + 와 + 사이에 있는 지역명을 위에 제시된 변수 중에 선택하여 바꾸세요. 
  JSONObject json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?" + Gwangju +"&APPID=24109ddecb29a5405afe2a8df42c5e34");
  println(json);
  println("********************");
  
  JSONArray weather = json.getJSONArray("weather");
  println(weather);
  println("-------------------");
  
  String location = json.getString("name");
  println(location);
  println("-------------------");
  
  for(int i = 0; i < weather.size(); i++) {
    info = weather.getJSONObject(i);
    println(info);
    println("++++++++++++++++++");
    
    expression = expression + " & " + info.getString("main");
  }
  
  
  
  println("-------------------");
  expression = expression.replace("null & ", "");
  println(expression);
  println("-------------------");
  
  
  background(200, 100, 100);
  fill(0);
  
  textFont(myFont);
  textAlign(CENTER, CENTER);
  text(location, width/2, height/2 - 25);
  text(expression, width/2, height/2 + 25);
}
