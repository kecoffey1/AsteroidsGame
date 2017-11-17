class Asteroid extends Floater {
    protected int r = (int)(Math.random() * 10); 
    public Asteroid() {
    corners = 10; 
    int[] xS = {r*5,r*4,0,-r*4,-r*5, r*5,r*4,0,-r*4,-r*5};
    int[] yS = {0,r*4,r*5,r*4,0,0,-r*4,-r*5,-r*4,0};
    xCorners = xS; 
    yCorners = yS;
    myColor = 255; 
  }
    public int getR() {return r;}
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