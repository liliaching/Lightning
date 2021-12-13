   int startX = 130;
    int startY = 85;
    int endX;
    int endY;
   
void setup()
{
  size(400, 400);
  background (125, 93, 142);
}
void draw()
{ 
  fill (211, 211, 211);
  noStroke ();
  //cloud 1
  ellipse (100, 70, 50, 50);
  ellipse (140, 70, 50, 50);
  ellipse (75, 95, 50, 50);
  ellipse (120, 99, 50, 50);
  ellipse (160, 95, 50, 50);

  //cloud 2
  ellipse (293, 97, 50, 50);
  ellipse (335, 100, 50, 50);
  ellipse (270, 130, 50, 50);
  ellipse (315, 135, 50, 50);
  ellipse (360, 130, 50, 50);

  stroke (214, 225, 255);

  //lightning
  while (endX < 500) {
    int rx = (int)(Math.random() * 7);
    int ry = (int)(Math.random() * 7);
    endX = startX + rx;
    endY = startY + ry;
    stroke (214, 225, 255);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 130;
  startY = 85;
  endX = startX;
  endY = startY;
}
