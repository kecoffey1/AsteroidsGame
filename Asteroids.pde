class Asteroid extends Floater {
     int r = (int)(Math.random() * 10); 
    public Asteroid() {
    corners = 10; 
    int[] xS = {50-r*5,40-r*4,0,-40+r*4,-50+r*5, 50-r*5,40-r*4,0,-40+r*4,-50+r*5};
    int[] yS = {0,40-r*4,50-r*5,40-r*4,0,0,-40+r*4,-50+r*5,-40+r*4,0};
    xCorners = xS; 
    yCorners = yS;
    myColor = 255; 
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
    public void shoot() {
      if (key == ' ') {
      
      }
    }
}