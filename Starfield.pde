class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX=200;
    myY=200;
    myAngle= Math.random()*Math.PI*3;
    myColor=color((int)(Math.random()*56)+190,(int)(Math.random()*156)+190,(int)(Math.random()*56)+190);
    mySpeed=Math.random()*2;
  }
  void move()
  {
    myX = myX+Math.cos(myAngle)*mySpeed;
    myY = myY+Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY, 4, 4);
  }
}
class OddballParticle extends Particle
{
  OddballParticle()
  {
  }
  void move()
  {
    myX =myX + Math.cos(myAngle)*mySpeed;
    myY =myY + Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill((int)(Math.random()*100)+100,(int)(Math.random()*100)+100,(int)(Math.random()*100)+100);
    rect((float)myX,(float)myY,15,15);
  }
}
Particle[] numOne;
void setup()
{
  size(400, 400);
  background(0);
  numOne= new Particle[1500];
  for (int i = 0; i < numOne.length; i++)
  {
    numOne[i]= new Particle();
    numOne[1] = new OddballParticle();
  }
}
void draw()
{
  for (int i = 0; i < numOne.length; i++)
  {
    numOne[i].show();
    numOne[i].move();
  }
}
