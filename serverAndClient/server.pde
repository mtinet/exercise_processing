import processing.net.*;

Server server;

float newMessageColor = 255;
String incomingMessage = "";

void setup() {
  size(400, 200);
  server = new Server(this, 5204);
}

void draw() {
  background(newMessageColor);
  
  newMessageColor = constrain(newMessageColor + 0.3, 0, 255);
  textAlign(CENTER);
  fill(255);
  text(incomingMessage, width/2, height/2);
  
  Client client = server.available();
  
  if (client != null) {
    incomingMessage = client.readString();
    incomingMessage = incomingMessage.trim();
    
    println("Client says: " + incomingMessage);
    server.write("How does " + incomingMessage + " make you feel?\n");
    newMessageColor = 0;
  }
}

void serverEvent(Server server, Client client) {
  incomingMessage = " A new client has connected: " + client.ip();
  println(incomingMessage);
  newMessageColor = 0;
}
