void setup()
{
	size(720,720);
	noLoop();
}
void draw()
{
	for(int x = 50; x < 250; x = x + 60)
	{
		Die bob = new Die(150,150);
		bob.roll();
		bob.show();
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, value;//variable declarations here
	Die(int x, int y) //constructor
	{
		roll();//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		value = 1;//your code here
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50);
		if(value == 1)
		{
			fill(50);
			ellipse(200, 200, 50, 50);
		}
	}
}