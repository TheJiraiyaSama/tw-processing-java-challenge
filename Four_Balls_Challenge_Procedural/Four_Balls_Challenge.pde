public static final int SCREEN_WIDTH = 800;
public static final int SCREEN_HEIGHT = 500;


public static final int BALL_DIAMETER = 20;


int[] ballSpeeds = {1, 2, 3, 4};
float[] ballHeights = {
  SCREEN_HEIGHT * 1 / 5.0, 
  SCREEN_HEIGHT * 2 / 5.0, 
  SCREEN_HEIGHT * 3 / 5.0, 
  SCREEN_HEIGHT * 4 / 5.0
};
float[] ballPositions = {0, 0, 0, 0}; 

void settings() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT); 
}

void setup() {
  background(#ffffff);
}

void draw() {
  background(#ffffff); 
  
  updateAndDrawBalls(); 
}

void updateAndDrawBalls() {
  fill(255); 
  
  for (int i = 0; i < ballHeights.length; i++) {
    drawBall(ballPositions[i], ballHeights[i]); 
    moveBall(i); 
  }
}

void drawBall(float x, float y) {
  ellipse(x, y, BALL_DIAMETER, BALL_DIAMETER); 
}

void moveBall(int index) {
  ballPositions[index] += ballSpeeds[index]; 
}
