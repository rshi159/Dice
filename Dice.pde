void setup()
{
	size(720,720);
	noLoop();
}
void draw()
{
	background(200);
	bob.roll();
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		noFill();
		beginShape();
		curveVertex(200, 200);
		curveVertex(200, 500);
		curveVertex(500, 500);
		curveVertex(500, 200);
		endShape();
	}
}
