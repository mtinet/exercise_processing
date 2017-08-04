import processing.net.*;

PFont f;

Server server;

int data = 0;

void setup() {
  size(200, 200);
  server = new Server(this, 5204);
  f = createFont("Courier", 20);
}

void draw() {
  background(255);
  
  textFont(f);
  textAlign(CENTER);
  fill(0);
  text(data, width/2, height/2);
  
  data = (data + int(random(-2, 4))) % 256;
  
  server.write(data);
}

void serverEvent(Server server, Client client) {
  println("A new client has connected; " + client.ip());
}
