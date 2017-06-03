Drop[] drops = new Drop[10];

int totalDrops = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  drops[totalDrops] = new Drop();
  
  totalDrops++;
  
  if (totalDrops >= drops.length) {
    totalDrops = 0;
  }
    
  for (int i = 0; i < totalDrops; i++) {
    drops[i].move();
    drops[i].display();
  }
}



class Drop {
  float x, y;
  float speed;
  color c;
  float r;
  
  Drop() {
    r = 8;
    x = random(width);
    y = -r*4;
    speed = random(1, 5);
    c = color(50, 100, 50);
  }
  
  void move() {
    y += speed;
  }
  
  boolean reachedBottom() {
    if (y > height + r*4) {
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    //fill(50, 100, 150);
    //noStroke();
    //ellipse(x, y, r*2, r*2);
    noStroke();
    fill(c);
    for (int i = 2; i < r; i++) {
      ellipse(width/2, height/2 + i*4, i*2, i*2);
    }
  }
}
