PImage img;
int pointSize = 10;
void setup(){
  size(900,900);
  background(255);
  img = loadImage("pic.jpg");
}
void draw(){
  for(int i =0; i < 500; i++){
  int x = int(random(img.width));
  int y = int(random(img.height));
  
  int loc = x + y*img.width;
  
  loadPixels();
  float r = red(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  fill(r,g,b,100);
  noStroke();
  ellipse(x,y,pointSize,pointSize);
  }
  
  
}