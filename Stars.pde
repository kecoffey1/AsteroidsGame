class Stars //note that this class does NOT extend Floater
{
  int myX; 
  int myY;
  public Stars(int x, int y) {
    myX = x;
    myY = y;
  }
  public void show() {
    fill(255);
    ellipse(myX, myY,5,5);
  }
}