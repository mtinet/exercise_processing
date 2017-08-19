import processing.video.*;

Movie movie;


void setup() {
  size(800, 600);
  background(0);
  movie = new Movie(this, "junse.mov");
  movie.loop();
}

void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  float ratio = mouseX / (float)width;
  movie.jump(ratio * movie.duration());
  image(movie, 0, 0);
}
