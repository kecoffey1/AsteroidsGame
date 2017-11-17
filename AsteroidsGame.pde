Spaceship Spacey = new Spaceship();
Bullet x = new Bullet(Spacey); 
ArrayList<Asteroid> As = new ArrayList <Asteroid>();
Stars[] Starey = new Stars[200];
void CreateAsteroid() {
  
    As.add(new Asteroid());
    for (int i = 0; i < As.size(); i ++) {

    As.get(i).setDirectionX((Math.random()*5)-2.5);
    As.get(i).setDirectionY(Math.random()*5);
    As.get(i).setX((int)(500*(As.get(i).getDirectionX())/5)); 
    As.get(i).setY((int)(500*(As.get(i).getDirectionY())/5));
  
}
}
public void setup() 
{
  size(500,500);
  Spacey.setX(200); 
  Spacey.setY(200);
  for (int i = 0; i < Starey.length; i ++) {
    Starey[i] = new Stars((int)(Math.random()*500),(int)(Math.random()*500));
  }
  for (int i = 0; i < 20; i ++) {
    CreateAsteroid();
  }
  
}
public void draw() 
{
  Bullet x = new Bullet(Spacey);
   for (int i =0; i < As.size(); i ++) {
     if (Spacey.getX() >= As.get(i).getX() - As.get(i).getR()*5-8 && Spacey.getX() <= As.get(i).getX() + As.get(i).getR()*5-8 && Spacey.getY() >= As.get(i).getY() - As.get(i).getR()*5-8 && Spacey.getY() <= As.get(i).getY() + As.get(i).getR()*5-8) {
       As.remove(i);
     }
   }
  background(0);
  for (int i = 0; i < Starey.length; i ++) {
    Starey[i].show();
  }
  Spacey.show();
  Spacey.move();
  for (int i = 0; i < As.size(); i ++) {
    As.get(i).show();
    As.get(i).move();
  }
  x.show();
  x.move();
  
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