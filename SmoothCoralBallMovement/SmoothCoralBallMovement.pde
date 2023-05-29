int x;          // x-coordinate of the ball
int y;          // y-coordinate of the ball
int speed;      // Speed of the ball

void setup() {
  size(400, 200);   // Adjust the dimensions of the sketch window as needed
  x = 0;
  y = height / 2;   // Adjust the y-coordinate to center the ball vertically
  speed = 1;        // Adjust the speed of the ball as needed
}

void draw() {
  background(68, 70, 84);  // Set the background color to #444654 (RGB values)

  // Update the position of the ball
  x += speed;       // Increment the x-coordinate by the speed value

  // Check if the ball reaches the end of the line
  if (x > width) {
    x = 0;         // Reset the x-coordinate to the start
  }

  // Draw the ball
  fill(255, 127, 80);  // Set the fill color to "coral" (RGB values)
  noStroke();          // Remove the outline of the ball for a smoother appearance
  ellipse(x, y, 30, 30);   // Adjust the size of the ball as needed
}
