import processing.net.*;

Client client;

int data;

void setup() {
  size(200, 200);
  client = new Client(this, "localhost", 5204);
}

void clientEvent(Client client) {
  data = client.read();
}

void draw() {
  background(data);
}
