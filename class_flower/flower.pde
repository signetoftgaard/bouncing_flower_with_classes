class flower {
  int r = 90;    //radius of flower
  float ballX;   
  float ballY;   
  float x;        //x-pos of flower
  float y;        //y-pos of flower
  int nPetals = 7;    //number of petals
  int velX = 5;    //x-velocity
  int velY = 5;    //y-velocity

  flower() {          //places the flower 0 at default, giving a y-value
    y = height/2;
  }

  void move() {      //moves the x and y-coordinates
    x = x+velX;
    y = y+velY;
  }

  void edge() {            //checks if the flower reaches edge, inverts the speed
    if (x>width||x<0) {
      velX = velX*-1;
    }
      if (y>height||y<0) {
        velY = velY*-1;
      }
    
  }


  void display () {      //draws flower
    fill(#FFA005);
    for (float i=0; i<PI*2; i+=2*PI/nPetals) {
      float ballX= r*cos(i);
      float ballY= r*sin(i);
      ellipse(x+ballX, y+ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }
}
