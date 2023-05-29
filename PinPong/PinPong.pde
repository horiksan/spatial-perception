Ball ball1;
Ball ball2;

void setup() {
  size(400, 200);  // Adjust the dimensions of the sketch window as needed
  background(30, 37, 35);
  
  // Create two balls
  ball1 = new Ball(width - 50, height/2, -2, color(255, 127, 80));  // Coral
  ball2 = new Ball(50, height/2, 2, color(64, 224, 208));         // Turquoise
}

void draw() {
  background(30, 37, 35);  // Clear the background for every render
  
  // Move and display the balls
  ball1.update();
  ball1.display();
  
  ball2.update();
  ball2.display();
}

// Ball class
class Ball {
  float x;
  float y;
  float speed;
  float diameter;
  color ballColor;
  
  Ball(float x, float y, float speed, color ballColor) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.diameter = 40;  // Adjust the size of the balls as needed
    this.ballColor = ballColor;
  }
  
  void update() {
    // Move the ball
    x += speed;
    
    // Check for wall collisions
    if (x <= diameter/2 || x >= width - diameter/2) {
      speed *= -1;  // Reverse the direction upon wall collision
    }
    
    // Check for collision with the other ball
    float distance = dist(x, y, ball2.x, ball2.y);
    if (distance <= diameter/2 + ball2.diameter/2) {
      speed *= -1;      // Reverse the direction upon collision
      ball2.speed *= -1;
    }
  }
  
  void display() {
    // Draw the ball
    fill(ballColor);
    noStroke();  // Remove the outline of the ball for a smoother appearance
    ellipse(x, y, diameter, diameter);
  }
}
