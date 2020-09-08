int startX = 130; 
int startY = 95;
int endX = 130;
int endY = 95;
int numClick = 0;

void setup()
{
  size(300,300);  
  background(0, 0, 0);
  noStroke();
  strokeWeight(0);
  ellipse(150, 70, 200, 50);
  ellipse(65, 55, 50, 50);
  ellipse(100, 50, 60, 60);
  ellipse(150,45, 100, 80);
  ellipse(200, 50, 70, 50);


}
void draw()
{
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256)); 
  while (endY < 300)
  {
    strokeWeight(5);
    endX = startX + (int)(Math.random()  * 19 - 9);
    endY = startY + (int)(Math.random() * 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY; 
  }

}

void mousePressed()
{
  startX = (int)(Math.random() * 100 + 100); 
  startY = 95;
  endX = startX;
  endY = 95;
  numClick = numClick + 1; 
  if (numClick > 7)
  {
    clear();
    background(0, 0, 0);
    noStroke();
    strokeWeight(0);
    ellipse(150, 70, 200, 50);
    ellipse(65, 55, 50, 50);
    ellipse(100, 50, 60, 60);
    ellipse(150,45, 100, 80);
    ellipse(200, 50, 70, 50);
    numClick = 0;
 }  
}
