Catcher catcher;
Timer timer;
Drop[] drops;
PFont f;

int score;

int totalDrops = 0;

void setup() {
  size(400, 400);
  f = createFont("Georgia", 16);
  score = 0;
    
  catcher = new Catcher(32);
  drops = new Drop[1000];
  timer = new Timer(300);
  timer.start();
}

void draw() {
  background(255);
  textFont(f, 16);
  fill(0);
  text ("score : " + score, 10, 100);
  
  catcher.setLocation(mouseX, mouseY);
  catcher.display();
  
  if (timer.isFinished()) {
    drops[totalDrops] = new Drop();
    totalDrops++;
    if (totalDrops >= drops.length) {
      totalDrops = 0;
    }
    timer.start();
  }
  
  for (int i = 0; i < totalDrops; i++) {
    drops[i].move();
    drops[i].display();
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
      score++;
    }
  }
}