import processing.video.*;

Movie movie;


void setup() {
  size(320, 240);
  movie = new Movie(this, "junse.mov");
  movie.play();
}

void draw() {
  image(movie, 0, 0);
}

void movieEvent(Movie movie) {
  movie.read();
}
