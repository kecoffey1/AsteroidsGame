class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4; 
    int[] xS = {-8,16,-8,-2};
    int[] yS = {-8 , 0, 8, 0};
    xCorners = xS; 
    yCorners = yS;
    myColor = 200; 
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