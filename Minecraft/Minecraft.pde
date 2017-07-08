int y = 450; 
int x= 20;
PImage minecraft;
PImage creeper;
void draw() {
  image (creeper, x, y);

  if (mousePressed&mouseX>40&mouseY>40) {
    fill(250, 0, 0);
    ellipse(mouseX, mouseY, 30, 30);
  } else if (mousePressed&mouseX<40&mouseY<40) {
    fill(0, 250, 0);
    ellipse(mouseX, mouseY, 30, 30);
  } else if (isNear(mouseX, 20)&&isNear(mouseY,450)) {
    fill(0, 250, 0);
    ellipse(mouseX, mouseY, 30, 30);
  }
  else if(mousePressed&&x==20&&y==450){
  fill(250,0,0);
  text("Found!",20,450);
  }
  
} 


boolean isNear(int a, int b) {
  if (abs(a - b) < 10)
    return true;
  else
    return false;
}


void setup() {
  size(1000, 700); 
  PImage minecraft = loadImage("city.jpeg");
  minecraft.resize(1000, 700);
  background(minecraft);
  creeper=loadImage("creeper.png");
  creeper.resize(10, 10);
} 