 public static final int SCREEN_WIDTH = 800;
 public static final int SCREEN_HEIGHT = 500;

class Ball {
  float x;      
  float y;       
  int speed;     
 
  
  Ball(float y, int speed) {
    this.x = 0;       
    this.y = y;     
    this.speed = speed; 
  }
  
  void update() {
    x += speed;        
    if (x > SCREEN_WIDTH) { 
      x = 0;
    }
  }
  
  void display() {
    fill(255);
    ellipse(x, y, 20, 20); 
  }
}


Ball[] balls;

void settings() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT); 
}

void setup() {
  balls = new Ball[4];
  
  balls[0] = new Ball(SCREEN_HEIGHT * 1 / 5.0, 1);
  balls[1] = new Ball(SCREEN_HEIGHT * 2 / 5.0, 2);
  balls[2] = new Ball(SCREEN_HEIGHT * 3 / 5.0, 3);
  balls[3] = new Ball(SCREEN_HEIGHT * 4 / 5.0, 4);
  
  background(0);
}

void draw() {
  background(#ffffff); 
  
  // Update and display all balls
  for (int i = 0; i < balls.length; i++) {
    balls[i].update();
    balls[i].display();
  }
}
