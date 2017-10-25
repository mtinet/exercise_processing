String runningtime;
PImage poster;

void setup() {
  size(300, 350);
  loadData();
}

void draw() {
  background(255);
  image(poster, 10, 10, 164, 250);
  fill(0);
  text("Shaun the Sheep", 10, 300);
  text(runningtime, 10, 320);
}

void loadData() {
  String url = "http://www.imdb.com/title/tt0110475/?ref_=nv_sr_1";
  String[] lines = loadStrings(url);
  String html = join(lines, "");
  
  String start = "<time itemprop=\"duration\" datetime=\"PT101M\">";
  String end = "</time>";
  runningtime = giveMeTextBetween(html, start, end);
  
  start = "<link rel='image_src' href=\"";
  end = "\">";
  String imgUrl = giveMeTextBetween(html, start, end);
  poster = loadImage(imgUrl);
}

String giveMeTextBetween(String s, String before, String after) {
  String found = "";
  
  int start = s.indexOf(before);
  if (start == -1) {
    return "";
  }
  
  start += before.length();
  int end = s.indexOf(after, start);
  if (end == -1) {
    return "";
  }
  
  return s.substring(start, end);
}
