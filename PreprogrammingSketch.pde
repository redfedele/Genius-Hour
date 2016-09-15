//Pre programming assignment
//Matteo Fedele
//9/14/2015
//ICS4U0

PVector location; // Location where circle will spawn
float size; //Circle size
int circCount; //Circle counter

void settings() {
  size(800, 600);
}

void setup() {
  size = random(20, 100); //Sets the size of the circles
  background(255);
}

void draw() {
  textSize(32);
  fill(0);
  text(" "+circCount+" ", width/2 -32, height/2); //Circle counter
}

void mouseReleased() {
  //Says if the left mousebutton is clicked then a new circle will apeear and the counter will go up by one
  if (mouseButton == LEFT) {
    location = new PVector (mouseX, mouseY);
    stroke(255);
    fill(255);
    rect(width/2 - 28, height/2 -28, 50, 31);
    circCount=circCount + 1;
    fill(random(1, 255), random(1, 255), random(1, 255), random(1, 255));
    stroke(0);
    ellipse(location.x, location.y, size, size);
    size = random(20, 100);
  }
  //Says if the right mouse button is pressed than the circles will dissapear and the counter will reset
  if (mouseButton == RIGHT) {
    background(255);
    circCount = 0;
  }
}