String[] allwords;

String delimiters = " ,.?!;:[]\"";

IntDict concordance;

PFont f;

void setup() {
  size(600, 640);
  
  f = createFont("Courier", 16);
  
  String url = "http://www.gutenberg.org/cache/epub/55806/pg55806.txt";
  String[] rawtext = loadStrings(url);
  
  String everything = join(rawtext, "");
  
  allwords = splitTokens(everything, delimiters);
  
  concordance = new IntDict();
  
  for (int i = 0; i < allwords.length; i++) {
    String s = allwords[i].toLowerCase();
    concordance.increment(s);
  }
  
  concordance.sortValuesReverse();
}

void draw() {
  background(255);
  
  int h = 20;
  String[] keys = concordance.keyArray();
  
  for (int i = 0; i < 300; i++) {
    String word = keys[i];
    int count = concordance.get(word);
    
    int x = int(random(width));
    int y = int(random(height-word.length()));
    int num = concordance.get(keys[0]);
    
    print(count+" ");
    count = int(map(count, 0, num, 100, 1000));
    println(count);
    
    fill(51);
    textFont(f);
    textSize(count/10);
    text(word, x, y);
    stroke(0);
  }
  noLoop();
}
