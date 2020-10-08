int sum;
void setup(){
  size(400,400);
  textAlign(CENTER);
  noLoop();
}
void draw(){
  background(0);
    sum = 0;
  for(int y = 25; y < 400; y = y + 75)
  {
    for(int x = 25; x < 400; x = x + 75)
    {
    Die bob = new Die(x,y);
    bob.roll();
    bob.show();
    sum = sum + bob.numRoll;
    }
  }
  fill(255);
  text("Total: "+sum,200,395);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int numRoll,myX,myY;
  Die(int x, int y)
  {
    numRoll = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  void roll()
  {

  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,50,50);
  {
    fill(255);
    textSize(15);
    text(numRoll,myX+25,myY+32);
    }
  }
}
