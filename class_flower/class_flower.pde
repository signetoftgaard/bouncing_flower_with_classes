flower f;

void setup(){
  size(800,600);
  f = new flower();
}

void draw(){
  background(255);
  f.display();
  f.move();
  f.edge(); 
}
