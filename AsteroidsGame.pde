Spaceship Spacey = new Spaceship();
Asteroid[] As = new Asteroid[10];
Stars[] Starey = new Stars[200];
public void setup() 
{
  size(500,500);
  Spacey.setX(200); 
  Spacey.setY(200);
  for (int i = 0; i < Starey.length; i ++) {
    Starey[i] = new Stars((int)(Math.random()*500),(int)(Math.random()*500));
  }
  for (int i = 0; i < As.length; i ++) {
    As[i] = new Asteroid();
  }
  for (int i = 0; i < As.length; i ++) {
    As[i].setX(250); 
    As[i].setY(250);
    As[i].setDirectionX(Math.random()*5);
    As[i].setDirectionY(Math.random()*5);
}
}
public void draw() 
{
  background(0);
  for (int i = 0; i < Starey.length; i ++) {
    Starey[i].show();
  }
  Spacey.show();
  Spacey.move();
  for (int i = 0; i < As.length; i ++) {
    As[i].show();
    As[i].move();
  }
  
  
}
public void keyTyped()
{
  if(key == 'w')
  {
    Spacey.accelerate(0.1);
  }
  if(key == 'a')
  {
    Spacey.turn(-5);
  }
  if(key == 's')
  {
    Spacey.accelerate(-0.1);
  }
  if(key == 'd')
  {
    Spacey.turn(5);
  }
  if(key == 'q')
  {
    Spacey.setDirectionX(0);
  }
 
  
}