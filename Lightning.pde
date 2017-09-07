int startX=0;
int startY=150;
int endX=0;
int endY=150;

void setup()
{
  size(300,300);
  strokeWeight(5);
}

void draw()
{
	stroke(0,0,0);
	fill(0,0,0);
	rect(0, 0, 600, 600);

	int haha=(int)(Math.random()*256)+1;
	int haha2=(int)(Math.random()*256)+1;
	int haha3=(int)(Math.random()*256)+1;
	stroke(haha, haha2, haha3);

	while (endX<300)
	{
		endX=startX+(int)(Math.random()*10);
		endY=startY+(int)(Math.random()*19)-9;
		line(startY, startX, endY, endX);
		startX = endX;
		startY = endY;
	}
	
	//cloud
	stroke(200, 200, 200);
	fill(200, 200, 200);
	ellipse(150,20,100,50);
	ellipse(180,40,100,50);

}

void mousePressed()
{
	redraw();
	startX=0;
	startY=150;
	endX=0;
	endY=150;
}

