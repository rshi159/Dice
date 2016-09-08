void setup()
{
	size(720,720);
	noLoop();
}
void draw()
{
	for(int x = 50; x < 720; x = x + 60)
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
		value = (int)(Math.random()*6+1);//your code here
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50);
		if(value == 1)
		{
			fill(50);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		else if (value == 2) 
		{
			fill(50);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
	    }
		else if (value == 3) 
		{
			fill(50);
			ellipse(myX + 12, myY + 12, 10, 10);
			ellipse(myX + 38, myY + 38, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
	    }
		else if (value == 4) 
		{
			fill(50);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			ellipse(myX + 15, myY + 35, 10, 10);
			ellipse(myX + 35, myY + 15, 10, 10);
	    }
		else if (value == 5) 
		{
			fill(50);
			ellipse(myX + 12, myY + 12, 10, 10);
			ellipse(myX + 38, myY + 38, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 12, myY + 38, 10, 10);
			ellipse(myX + 38, myY + 12, 10, 10);		
	    }
		else if (value == 6) 
		{
			fill(50);
			ellipse(myX + 12, myY + 8, 10, 10);
			ellipse(myX + 38, myY + 42, 10, 10);
			ellipse(myX + 12, myY + 42, 10, 10);
			ellipse(myX + 38, myY + 8, 10, 10);
			ellipse(myX + 12, myY + 25, 10, 10);
			ellipse(myX + 38, myY + 25, 10, 10);
	    }
    }
}