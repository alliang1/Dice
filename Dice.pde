void setup()
{
  size(500, 500);
  noLoop();
}
Die bob;
int counter = 0;
void draw()
{
  background(0);
  for (int y = 40; y<=500; y+=160) {
    for (int x = 40; x<=500; x+=160) {
      Die bob = new Die(x, y);
      bob.show();
    }
  }
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Total: " + counter,250,30);
  fill(0);
}
void mousePressed()
{
  redraw();
  counter = 0;
}
class Die //models one single dice cube
{
  //= (int)(Math.random()*6)+1;//member variable declarations here

  int dicenum, myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    dicenum = (int)(Math.random()*6)+1;
    //System.out.println(dicenum);



    //variable initializations here
  }
  void roll()
  {
    int dicenum = 1;//(int)(Math.random()*6)+1;//your code here
    System.out.println(dicenum);
  }
  void show()
  {
    
    fill((int)(Math.random()*250)+10,(int)(Math.random()*250)+10,(int)(Math.random()*250)+10);
    strokeWeight(3);
    stroke(255);
    rect(myX, myY, 100, 100);
    if ( dicenum == 1) {
      fill(255);
      ellipse(myX+50, myY+50, 10, 10);
      fill(0);
      counter = counter + 1;} 
    else if ( dicenum == 2) {
      fill(255);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+80, myY+80, 10, 10);
      fill(0);
      counter = counter + 2;
    } else if ( dicenum == 3) {
      fill(255);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+80, myY+80, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      fill(0);
      counter = counter + 3;
    } else if ( dicenum == 4) {
      fill(255);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+80, myY+80, 10, 10);
      ellipse(myX+80, myY+20, 10, 10);
      ellipse(myX+20, myY+90, 10, 10);
      fill(0);
      counter = counter + 4;
    } else if ( dicenum == 5) {
      fill(255);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+80, myY+80, 10, 10);
      ellipse(myX+80, myY+20, 10, 10);
      ellipse(myX+20, myY+80, 10, 10);
      fill(0);
      counter = counter + 5;
    } else if ( dicenum == 6) {
      fill(255);
      ellipse(myX+20, myY+50, 10, 10);
      ellipse(myX+80, myY+50, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+80, myY+80, 10, 10);
      ellipse(myX+80, myY+20, 10, 10);
      ellipse(myX+20, myY+80, 10, 10);
      fill(0);
      counter = counter + 6;
    }
  }
}
