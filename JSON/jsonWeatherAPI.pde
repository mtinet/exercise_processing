String expresstion;
JSONObject info;

PFont myFont;

void setup() {
  size(200,200);
  myFont = createFont("Georgia", 32);

  JSONObject json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?lat=37.541&lon=126.986&APPID=24109ddecb29a5405afe2a8df42c5e34");
  println(json);
  println("********************");
  
  JSONArray weather = json.getJSONArray("weather");
  println(weather);
  println("-------------------");
  
  for(int i = 0; i < weather.size(); i++) {
    info = weather.getJSONObject(i);
    println(info);
    println("++++++++++++++++++");
  }
  
  
  String expression = info.getString("main");
  println("-------------------");
  println(expression);
  println("-------------------");
  
  
  background(255);
  fill(0);
  
  textFont(myFont);
  textAlign(CENTER, CENTER);
  text(expression, width/2, height/2);
}
