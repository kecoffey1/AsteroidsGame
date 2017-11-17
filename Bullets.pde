class Bullet extends Floater {
  double dRadians =myPointDirection*(Math.PI/180);
  Bullet(Spaceship ship) {
    myCenterX = ship.getX()-100;
    myCenterY = ship.getY()-100;
    myPointDirection = ship.getPointDirection();
    myDirectionX =5 * Math.cos(dRadians) + ship.getDirectionX();
    myDirectionY = 5 * Math.cos(dRadians)+ ship.getDirectionY();
    myColor = 255;  
}
   public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    ellipse((float)myCenterX,(float)myCenterY,50,50);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
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