class Bullet extends Floater {
 
  Bullet(Spaceship ship) {
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + ship.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians)+ ship.getDirectionY();
    myColor = 255; 
}
   public boolean hit () 
  {
    boolean hit = false;
    for (int i = 0; i < As.size(); i ++) {
      if ( myCenterX >= As.get(i).getX() - As.get(i).getR()*5-8 && myCenterX <= As.get(i).getX() + As.get(i).getR()*5-8 &&  myCenterY >= As.get(i).getY() - As.get(i).getR()*5-8 && myCenterY <= As.get(i).getY() + As.get(i).getR()*5-8) {
        As.remove(i);
        As.add(new Asteroid());
        As.get(As.size()-1).setDirectionX((Math.random()*5)-2.5);
        As.get(As.size()-1).setDirectionY(Math.random()*5);
        As.get(As.size()-1).setX((int)(500*(As.get(i).getDirectionX())/5)); 
        As.get(As.size()-1).setY((int)(500*(As.get(i).getDirectionY())/5));
  
        Spacey.setScore(10); 
        hit = true; 
      }
    }
    return hit; 
  }
   public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    

    //convert degrees to radians for rotate()     
    /*float dRadians = (float)(myPointDirection*(Math.PI/180));*/
    
    //rotate so that the polygon will be drawn in the correct direction
    
    
    //draw the polygon
    ellipse((float)myCenterX,(float)myCenterY,5,5);

  
  }   

  public void setX(int x) {myCenterX = x; }
    public int getX() {return (int)myCenterX;}
    public void setY(int y){myCenterY = y; } 
    public int getY() {return (int)myCenterY; }
    public void setDirectionX(double x) {myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY; }   
    public void setPointDirection(int degrees){myPointDirection = degrees; }  
    public double getPointDirection(){ return myPointDirection;}
}