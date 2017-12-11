class Spaceship extends Floater  
{   
    int myHP = 5; 
    int myScore = 0; 
  public Spaceship() {
    corners = 4; 
    int[] xS = {-8,16,-8,-2};
    int[] yS = {-8 , 0, 8, 0};
    xCorners = xS; 
    yCorners = yS;
    myColor = 200; 
     
  }
    public void hyperspace() { 
      int x = B.size(); 
      for (int i = x-1; i > 0; i --) {
        
        B.remove(i); 
        
        
       }
      /*for (int i = 0; i < Starey.length; i ++) {
        Starey[i] = new Stars((int)(Math.random()*500),(int)(Math.random()*500)); 
      }
      for (int i = 0; i < As.size(); i ++) {
        As.remove(i); 
        for (int n = 0; n < 20; n ++) {
        CreateAsteroid();
        }
      }*/
    }
    public void setHP(int x) { myHP += x; }
    public int getHP() {return myHP;}
    public void setScore(int x) { myScore += x; }
    public int getScore() {return myScore;}
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