Particle[] particle=new Particle[100];
float speed;
void setup() {
size(750,750);
for (int i=0; i<particle.length; i++){
  particle[i]=new Particle();
  particle[0]=new OddballParticle();
  }
}
void draw(){
  speed=map(mouseX, 20, width, 20, 20); 
  background(30);
  translate(width/2, height/3);
  for (int i=0; i<particle.length; i++){
    particle[i].move();
    particle[i].show();
  }  
}
class Particle{
  float x;
  float y;
  float z;
  Particle(){
    x=random(-width, width);
    y=random(-height,height);
    z=random(width);
  } 
  void move() {
    z=z - speed;
    if(z<1) {
      z=width;
      x=random(-width, width);
      y=random(-height,height);
    }
}
  void show() { 
  fill(200);
  noStroke();
  float speedX=map(x / z, 0, 3, 0, width);
  float speedY=map(y / z, 0, 3, 0, width);
  
  float size=map(z, 0, width, 25, 0);
  ellipse(speedX, speedY, size, size);  }
}
class OddballParticle extends Particle
{
  float x,y;
  OddballParticle() {
  }
  void move() {
  
      x=x + (int)(Math.random()*5)-3;
      x=x + (int)(Math.random()*5)-1;
      y=y + (int)(Math.random()*5)-3;
      y=y + (int)(Math.random()*5)-1;
    }
  void show() {
  fill(100,200,200);
  noStroke();
  ellipse(x,y,50,50);
  }
}
