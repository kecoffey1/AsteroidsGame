Spaceship Spacey = new Spaceship();

ArrayList<Asteroid> As = new ArrayList <Asteroid>();
ArrayList<Bullet> B = new ArrayList <Bullet>(); 
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
 
   for (int i =0; i < As.size(); i ++) {
     if (Spacey.getX() >= As.get(i).getX() - As.get(i).getR()*5-8 && Spacey.getX() <= As.get(i).getX() + As.get(i).getR()*5-8 && Spacey.getY() >= As.get(i).getY() - As.get(i).getR()*5-8 && Spacey.getY() <= As.get(i).getY() + As.get(i).getR()*5-8) {
       As.remove(i);
       As.add(new Asteroid());
       As.get(As.size()-1).setDirectionX((Math.random()*5)-2.5);
        As.get(As.size()-1).setDirectionY(Math.random()*5);
        As.get(As.size()-1).setX((int)(500*(As.get(i).getDirectionX())/5)); 
        As.get(As.size()-1).setY((int)(500*(As.get(i).getDirectionY())/5));
       Spacey.setHP(-1); 
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
  for (int i = 0; i < B.size(); i++) {
    
    B.get(i).show();
    B.get(i).move();
    //B.get(i).hit();
    if (B.get(i).hit()) {
      B.remove(i); 
    }
  }
  
 fill(255,150,0);
  stroke(255,150,0);
  rect(0,0,100,50);
  stroke(255);
  fill(255);
  text("HP:    " + Spacey.getHP(), 25,15 );
  text("Score:    " + Spacey.getScore(), 25,35 );
  if (Spacey.getHP() <= 0) {
    fill(0);
    rect(0,0,500,500);
    fill(255); 
    text("Game Over",200,200); 
    text("Score:   " + Spacey.getScore(), 200,250); 
  }
}
public void keyPressed()
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
    B.add(new Bullet(Spacey));
   
    
 }
 if(key == 'h' ) 
 {
    Spacey.hyperspace(); 
    Spacey.setX(mouseX);
    Spacey.setY(mouseY);
    
    
 }
 
  
}