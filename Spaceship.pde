class Spaceship extends Floater  
{   
    corners = 4; 
    int[] xS = {-8,16,-8,-2};
    int[] ys = {-8 , 0, 8, 0};
    xCorners = xS; 
    yCorners = yS;
    public Spaceship() {
    
    }
    public void setX(int x) {myX = x; }
    public int getX() {return myX;}
    public void setY(int y){myY = y; } 
    public int getY() {return myY; }
    public void setDirectionX(double x) {myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}   
    public double getDirectionY(){myDirectionY = y; }   
    public void setPointDirection(int degrees){myPointDirection = degrees; }  
    public double getPointDirection(){ return myPointDiretion;}
    
    public void accelerate (double dAmount) {  
     //Accelerates the ship in
     //the direction it is pointing
     //(myPointDirection)
    
     //convert the current direction the ship is
     //pointing to radians
     double dRadians =myPointDirection*(Math.PI/180);
     
     //change coordinates of direction of travel
     myDirectiox += ((dAmount) * Math.cos(dRadians));
     myDirectioy += ((dAmount) * Math.sin(dRadians));    
}

}