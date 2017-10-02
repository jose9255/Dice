int tally;
void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  background(130, 230, 250);
  tally = 0;
  for (int y = 0; y < 600; y = y + 60)
  {
    for (int x = 0; x < 600; x = x + 60)
    {
      Die bob = new Die (x, y);
      bob.show();
      tally = tally + bob.numDots;
    }
  }
  textSize(33);
  text("Total Score: " + tally, 190, 300);
}
void mousePressed()
{
  redraw();
}
class Die //models one single die
{
  int numDots, myX, myY;
  Die (int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }

  void roll()
  {
    numDots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(230, 230, 230);
    rect (myX, myY, 100, 100);
    if (numDots == 1)
    {
      fill (255);
      ellipse (myX+50, myY+50, 10, 10);
    } else if (numDots == 2)
    {
      fill(255);
      ellipse(myX+30, myY+70, 10, 10);
      ellipse(myX+70, myY+30, 10, 10);
    } else if (numDots == 3)
    {
      fill(255);
      ellipse(myX+27, myY+70, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+73, myY+27, 10, 10);
    } else if (numDots == 4)
    {
      fill(255);
      ellipse(myX+30, myY+30, 10, 10);
      ellipse(myX+30, myY+70, 10, 10);
      ellipse(myX+70, myY+30, 10, 10);
      ellipse(myX+70, myY+70, 10, 10);
    } else if (numDots == 5)
    {
      fill(255);
      ellipse(myX+30, myY+30, 10, 10);
      ellipse(myX+30, myY+70, 10, 10);
      ellipse(myX+70, myY+30, 10, 10);
      ellipse(myX+70, myY+70, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    } else
    {
      fill(255);
      ellipse(myX+30, myY+30, 10, 10);
      ellipse(myX+30, myY+70, 10, 10);
      ellipse(myX+70, myY+30, 10, 10);
      ellipse(myX+70, myY+70, 10, 10);
      ellipse(myX+30, myY+50, 10, 10);
      ellipse(myX+70, myY+50, 10, 10);
    }
  }
}



